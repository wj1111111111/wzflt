# JBET88 API 文档集成指南

## 文档概览

我们现在拥有了完整的 API 文档体系：

### 1. 已有文档
- ✅ **BBW 活动服务 API 文档** (bbw-activity-start.md) - 活动相关的完整 API
- ✅ **JBET88 完整 API 接口文档** (JBET88完整API接口文档.md) - 全平台 API 规范
- ✅ **API 文档需求清单** - 列出了所有需要的 API 接口
- ✅ **Mock 数据服务** (lib/data/mock/mock_data.dart) - 前端开发用的模拟数据

### 2. API 覆盖范围

| 模块       | 文档状态 | Mock 数据 | 说明                     |
| ---------- | -------- | --------- | ------------------------ |
| 🔐 认证模块 | ✅ 完整   | ✅ 已实现  | 登录、注册、Token管理等  |
| 👤 用户模块 | ✅ 完整   | ✅ 已实现  | 个人信息、设置、头像等   |
| 🎮 游戏模块 | ✅ 完整   | ✅ 已实现  | 游戏列表、启动、收藏等   |
| 💰 支付模块 | ✅ 完整   | ✅ 已实现  | 充值、提现、交易记录等   |
| 🎁 活动模块 | ✅ 完整   | ✅ 已实现  | 优惠活动、奖金领取等     |
| ⭐ VIP模块  | ✅ 完整   | ✅ 已实现  | VIP等级、权益、奖励等    |
| 💬 客服模块 | ✅ 完整   | ⚠️ 部分    | 帮助文档、工单、在线客服 |
| 🔧 系统配置 | ✅ 完整   | ⚠️ 部分    | 应用配置、公告、维护等   |

## 开发流程整合

### 第1阶段：使用 Mock 数据开发

```dart
// 1. 使用 Mock 服务开发页面
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  Future<void> _loadData() async {
    // 开发阶段使用 Mock
    final response = await MockService.request('/home/data');
    // 处理响应...
  }
}
```

### 第2阶段：创建 API 服务层

```dart
// 2. 根据 API 文档创建服务类
class HomeApiService {
  Future<ApiResponse<HomeData>> getHomeData() async {
    // 真实 API 调用
    return _dio.get('/api/v1/home/data');
  }
}
```

### 第3阶段：切换到真实 API

```dart
// 3. 通过配置切换数据源
class DataRepository {
  Future<HomeData> getHomeData() async {
    if (AppConfig.useMockData) {
      return MockService.request('/home/data');
    } else {
      return HomeApiService().getHomeData();
    }
  }
}
```

## API 与 Mock 数据对照表

| API 接口                    | Mock 数据路径            | 页面使用               |
| --------------------------- | ------------------------ | ---------------------- |
| POST /api/v1/auth/login     | /auth/login              | log_in_screen          |
| GET /api/v1/user/profile    | /user/profile            | personal_center_screen |
| GET /api/v1/games           | /game/list               | 游戏列表页面           |
| GET /api/v1/payment/methods | /payment/deposit/methods | wallet_deposit_dialog  |
| GET /api/v1/promotions      | /promotions/list         | promotions_list_screen |
| GET /api/v1/vip/info        | /user/vip/info           | vip_screen             |

## 数据模型生成

基于 API 文档，可以自动生成 Dart 数据模型：

```dart
// 1. 安装 json_serializable
dependencies:
  json_annotation: ^4.8.0
  
dev_dependencies:
  build_runner: ^2.3.0
  json_serializable: ^6.6.0

// 2. 创建模型类
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String username;
  final String email;
  final double balance;
  final VipLevel vipLevel;
  
  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.balance,
    required this.vipLevel,
  });
  
  factory UserModel.fromJson(Map<String, dynamic> json) => 
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

// 3. 生成代码
// flutter pub run build_runner build
```

## API 集成最佳实践

### 1. 统一的 API 客户端

```dart
class ApiClient {
  late Dio _dio;
  
  ApiClient() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
    ));
    
    _dio.interceptors.addAll([
      AuthInterceptor(),
      LoggingInterceptor(),
      ErrorInterceptor(),
    ]);
  }
}
```

### 2. 错误处理

```dart
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.response?.statusCode) {
      case 401:
        // Token 过期处理
        AuthService.refreshToken();
        break;
      case 429:
        // 限流处理
        showRateLimitDialog();
        break;
      default:
        // 通用错误处理
        showErrorSnackbar(err.message);
    }
    handler.next(err);
  }
}
```

### 3. 请求重试机制

```dart
class RetryInterceptor extends Interceptor {
  final int maxRetries = 3;
  
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (_shouldRetry(err) && err.requestOptions.extra['retryCount'] < maxRetries) {
      err.requestOptions.extra['retryCount'] = 
          (err.requestOptions.extra['retryCount'] ?? 0) + 1;
      
      await Future.delayed(Duration(seconds: 1));
      
      final response = await _dio.request(
        err.requestOptions.path,
        options: err.requestOptions,
      );
      
      handler.resolve(response);
    } else {
      handler.next(err);
    }
  }
}
```

## 测试策略

### 1. 单元测试 Mock

```dart
// test/api/auth_api_test.dart
void main() {
  late MockDio mockDio;
  late AuthApi authApi;
  
  setUp(() {
    mockDio = MockDio();
    authApi = AuthApi(dio: mockDio);
  });
  
  test('登录成功返回用户信息', () async {
    when(mockDio.post('/auth/login', data: anyNamed('data')))
        .thenAnswer((_) async => Response(
              data: mockLoginResponse,
              statusCode: 200,
            ));
    
    final result = await authApi.login('testuser', '123456');
    
    expect(result.success, true);
    expect(result.data.username, 'testuser');
  });
}
```

### 2. 集成测试

```dart
// integration_test/auth_flow_test.dart
void main() {
  testWidgets('完整登录流程测试', (tester) async {
    // 启动应用
    app.main();
    await tester.pumpAndSettle();
    
    // 输入用户名密码
    await tester.enterText(find.byKey(Key('username')), 'testuser');
    await tester.enterText(find.byKey(Key('password')), '123456');
    
    // 点击登录
    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pumpAndSettle();
    
    // 验证跳转到首页
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
```

## 环境配置

### 1. 开发环境

```dart
// lib/config/env/dev.dart
class DevConfig {
  static const String apiUrl = 'https://dev-api.jbet88.com';
  static const bool useMockData = true;
  static const bool enableLogging = true;
}
```

### 2. 生产环境

```dart
// lib/config/env/prod.dart
class ProdConfig {
  static const String apiUrl = 'https://api.jbet88.com';
  static const bool useMockData = false;
  static const bool enableLogging = false;
}
```

### 3. 环境切换

```dart
// lib/config/app_config.dart
class AppConfig {
  static String get apiUrl {
    if (kDebugMode) {
      return DevConfig.apiUrl;
    }
    return ProdConfig.apiUrl;
  }
  
  static bool get useMockData {
    return const bool.fromEnvironment('USE_MOCK_DATA', defaultValue: false);
  }
}
```

## 性能优化

### 1. 请求缓存

```dart
class CacheInterceptor extends Interceptor {
  final cache = <String, CacheEntry>{};
  
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method == 'GET') {
      final key = options.uri.toString();
      final entry = cache[key];
      
      if (entry != null && !entry.isExpired) {
        handler.resolve(Response(
          data: entry.data,
          statusCode: 200,
          requestOptions: options,
        ));
        return;
      }
    }
    handler.next(options);
  }
}
```

### 2. 请求合并

```dart
class RequestMerger {
  final _pending = <String, Future<Response>>{};
  
  Future<Response> request(String url) {
    if (_pending.containsKey(url)) {
      return _pending[url]!;
    }
    
    final future = _dio.get(url);
    _pending[url] = future;
    
    future.whenComplete(() {
      _pending.remove(url);
    });
    
    return future;
  }
}
```

## 监控和日志

### 1. API 调用监控

```dart
class MonitoringInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Analytics.track('api_call', {
      'url': response.requestOptions.uri.toString(),
      'status': response.statusCode,
      'duration': response.requestOptions.extra['duration'],
    });
    handler.next(response);
  }
}
```

### 2. 错误上报

```dart
class ErrorReporter {
  static void reportApiError(DioError error) {
    Crashlytics.recordError(error, {
      'api': error.requestOptions.uri.toString(),
      'method': error.requestOptions.method,
      'statusCode': error.response?.statusCode,
    });
  }
}
```

## 下一步行动

1. **立即可做**
   - 继续使用 Mock 数据开发所有页面
   - 根据 API 文档创建数据模型
   - 搭建 API 服务层框架

2. **需要后端配合**
   - 确认 API 接口地址和认证方式
   - 获取测试环境访问权限
   - 协调接口联调时间

3. **长期规划**
   - 建立 API 版本管理机制
   - 实现 API 自动化测试
   - 监控 API 性能和可用性

有了完整的 API 文档和 Mock 数据，您现在可以并行开发前端功能，不需要等待后端接口就绪。这将大大提高开发效率！ 