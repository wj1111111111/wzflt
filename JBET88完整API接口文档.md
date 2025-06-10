# JBET88 Flutter 项目 - API 接口文档

本文档为 JBET88 Flutter 应用提供完整的 API 接口规范。

## 接口概述

本文档定义了 JBET88 Flutter 应用所需的后端 API 接口规范，包括请求格式、响应格式、错误处理等。

### 基础配置

```dart
// API 基础配置
class ApiConfig {
  static const String baseUrl = 'https://api.jbet88.com';
  static const String apiVersion = 'v1';
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 30000;
  
  // API 端点
  static const String auth = '/auth';
  static const String user = '/user';
  static const String games = '/games';
  static const String payment = '/payment';
  static const String promotion = '/promotion';
  static const String vip = '/vip';
  static const String support = '/support';
}
```

### 通用响应格式

```json
{
  "success": true,
  "code": 200,
  "message": "操作成功",
  "data": {},
  "timestamp": 1703123456789
}
```

### 错误响应格式

```json
{
  "success": false,
  "code": 400,
  "message": "请求参数错误",
  "errors": {
    "field": ["具体错误信息"]
  },
  "timestamp": 1703123456789
}
```

## 1. 认证模块 API

### 1.1 用户登录

**接口地址**: `POST /api/v1/auth/login`

**请求参数**:
```json
{
  "username": "用户名或邮箱",
  "password": "密码",
  "device_id": "设备唯一标识",
  "device_type": "mobile",
  "remember_me": true
}
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "expires_in": 3600,
    "user": {
      "id": "123456",
      "username": "testuser",
      "email": "test@example.com",
      "phone": "+86138****8888",
      "balance": 1000.50,
      "vip_level": {
        "level": 2,
        "name": "银牌会员",
        "progress": 65.5
      },
      "avatar": "https://cdn.jbet88.com/avatars/default.png",
      "is_verified": true,
      "created_at": "2023-01-01T00:00:00Z"
    }
  }
}
```

### 1.2 用户注册

**接口地址**: `POST /api/v1/auth/register`

**请求参数**:
```json
{
  "username": "用户名",
  "email": "邮箱地址",
  "password": "密码",
  "confirm_password": "确认密码",
  "phone": "手机号码",
  "invite_code": "邀请码(可选)",
  "agree_terms": true,
  "is_over_18": true,
  "device_id": "设备唯一标识"
}
```

**响应数据**:
```json
{
  "success": true,
  "message": "注册成功",
  "data": {
    "user_id": "123456",
    "verification_required": true,
    "verification_method": "email"
  }
}
```

### 1.3 刷新Token

**接口地址**: `POST /api/v1/auth/refresh`

**请求头**:
```
Authorization: Bearer {refresh_token}
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "access_token": "新的访问令牌",
    "expires_in": 3600
  }
}
```

### 1.4 退出登录

**接口地址**: `POST /api/v1/auth/logout`

**请求头**:
```
Authorization: Bearer {access_token}
```

## 2. 用户模块 API

### 2.1 获取用户信息

**接口地址**: `GET /api/v1/user/profile`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "id": "123456",
    "username": "testuser",
    "email": "test@example.com",
    "phone": "+86138****8888",
    "real_name": "张三",
    "balance": 1000.50,
    "frozen_balance": 100.00,
    "total_deposit": 5000.00,
    "total_withdraw": 3000.00,
    "vip_level": {
      "level": 2,
      "name": "银牌会员",
      "progress": 65.5,
      "next_level_requirement": 10000.00
    },
    "avatar": "https://cdn.jbet88.com/avatars/user123456.png",
    "is_verified": true,
    "verification_status": {
      "email": true,
      "phone": true,
      "identity": false,
      "bank_card": true
    },
    "preferences": {
      "language": "zh_CN",
      "currency": "CNY",
      "notifications": {
        "email": true,
        "sms": false,
        "push": true
      }
    },
    "created_at": "2023-01-01T00:00:00Z",
    "last_login_at": "2023-12-01T10:30:00Z"
  }
}
```

### 2.2 更新用户信息

**接口地址**: `PUT /api/v1/user/profile`

**请求参数**:
```json
{
  "real_name": "张三",
  "phone": "+8613800138000",
  "preferences": {
    "language": "zh_CN",
    "currency": "CNY",
    "notifications": {
      "email": true,
      "sms": false,
      "push": true
    }
  }
}
```

### 2.3 修改密码

**接口地址**: `PUT /api/v1/user/password`

**请求参数**:
```json
{
  "current_password": "当前密码",
  "new_password": "新密码",
  "confirm_password": "确认新密码"
}
```

### 2.4 上传头像

**接口地址**: `POST /api/v1/user/avatar`

**请求格式**: `multipart/form-data`

**请求参数**:
- `avatar`: 图片文件 (支持 jpg, png, 最大 2MB)

**响应数据**:
```json
{
  "success": true,
  "data": {
    "avatar_url": "https://cdn.jbet88.com/avatars/user123456.png"
  }
}
```

## 3. 游戏模块 API

### 3.1 获取游戏列表

**接口地址**: `GET /api/v1/games`

**请求参数**:
```
category: 游戏分类 (可选: slots, table, live, sports, lottery)
provider: 游戏提供商 (可选)
search: 搜索关键词 (可选)
page: 页码 (默认: 1)
limit: 每页数量 (默认: 20, 最大: 100)
sort: 排序方式 (popular, newest, name)
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "games": [
      {
        "id": "game_001",
        "name": "疯狂老虎机",
        "category": "slots",
        "provider": "Pragmatic Play",
        "image_url": "https://cdn.jbet88.com/games/game_001.jpg",
        "thumbnail_url": "https://cdn.jbet88.com/games/thumbs/game_001.jpg",
        "description": "经典老虎机游戏，高额奖金等你来拿",
        "rtp": 96.5,
        "min_bet": 0.1,
        "max_bet": 1000.0,
        "is_hot": true,
        "is_new": false,
        "is_favorite": false,
        "play_count": 15420,
        "tags": ["高RTP", "大奖", "经典"]
      }
    ],
    "pagination": {
      "current_page": 1,
      "total_pages": 50,
      "total_count": 1000,
      "per_page": 20
    },
    "categories": [
      {
        "id": "slots",
        "name": "老虎机",
        "count": 500
      },
      {
        "id": "table",
        "name": "桌面游戏",
        "count": 200
      }
    ],
    "providers": [
      {
        "id": "pragmatic",
        "name": "Pragmatic Play",
        "logo": "https://cdn.jbet88.com/providers/pragmatic.png"
      }
    ]
  }
}
```

### 3.2 获取游戏详情

**接口地址**: `GET /api/v1/games/{game_id}`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "id": "game_001",
    "name": "疯狂老虎机",
    "category": "slots",
    "provider": {
      "id": "pragmatic",
      "name": "Pragmatic Play",
      "logo": "https://cdn.jbet88.com/providers/pragmatic.png"
    },
    "images": {
      "banner": "https://cdn.jbet88.com/games/banners/game_001.jpg",
      "thumbnail": "https://cdn.jbet88.com/games/thumbs/game_001.jpg",
      "screenshots": [
        "https://cdn.jbet88.com/games/screenshots/game_001_1.jpg"
      ]
    },
    "description": "详细游戏描述",
    "rules": "游戏规则说明",
    "features": ["免费旋转", "乘数奖励", "累积奖池"],
    "rtp": 96.5,
    "volatility": "medium",
    "min_bet": 0.1,
    "max_bet": 1000.0,
    "max_win": 50000.0,
    "paylines": 25,
    "reels": 5,
    "is_hot": true,
    "is_new": false,
    "is_favorite": false,
    "play_count": 15420,
    "rating": 4.5,
    "tags": ["高RTP", "大奖", "经典"],
    "demo_available": true,
    "mobile_compatible": true,
    "created_at": "2023-01-01T00:00:00Z"
  }
}
```

### 3.3 启动游戏

**接口地址**: `POST /api/v1/games/{game_id}/launch`

**请求参数**:
```json
{
  "mode": "real",  // real: 真钱模式, demo: 试玩模式
  "device": "mobile",  // mobile, desktop
  "return_url": "https://app.jbet88.com/games"
}
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "game_url": "https://games.jbet88.com/launch?token=xxx",
    "session_id": "session_123456",
    "expires_at": "2023-12-01T12:00:00Z"
  }
}
```

### 3.4 收藏/取消收藏游戏

**接口地址**: `POST /api/v1/games/{game_id}/favorite`

**请求参数**:
```json
{
  "action": "add"  // add: 添加收藏, remove: 取消收藏
}
```

### 3.5 获取收藏游戏列表

**接口地址**: `GET /api/v1/user/favorites`

**请求参数**:
```
page: 页码 (默认: 1)
limit: 每页数量 (默认: 20)
```

### 3.6 获取游戏历史

**接口地址**: `GET /api/v1/user/game-history`

**请求参数**:
```
start_date: 开始日期 (YYYY-MM-DD)
end_date: 结束日期 (YYYY-MM-DD)
game_id: 游戏ID (可选)
page: 页码 (默认: 1)
limit: 每页数量 (默认: 20)
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "records": [
      {
        "id": "record_001",
        "game": {
          "id": "game_001",
          "name": "疯狂老虎机",
          "image_url": "https://cdn.jbet88.com/games/thumbs/game_001.jpg"
        },
        "bet_amount": 10.0,
        "win_amount": 25.0,
        "profit": 15.0,
        "session_duration": 1800,  // 秒
        "played_at": "2023-12-01T10:30:00Z"
      }
    ],
    "pagination": {
      "current_page": 1,
      "total_pages": 10,
      "total_count": 200
    },
    "summary": {
      "total_bet": 1000.0,
      "total_win": 850.0,
      "total_profit": -150.0,
      "session_count": 50
    }
  }
}
```

## 4. 支付模块 API

### 4.1 获取支付方式列表

**接口地址**: `GET /api/v1/payment/methods`

**请求参数**:
```
type: 支付类型 (deposit, withdraw)
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "deposit_methods": [
      {
        "id": "alipay",
        "name": "支付宝",
        "type": "online",
        "icon": "https://cdn.jbet88.com/payment/alipay.png",
        "min_amount": 10.0,
        "max_amount": 50000.0,
        "fee_rate": 0.0,
        "processing_time": "即时到账",
        "is_available": true,
        "description": "支持支付宝扫码支付"
      },
      {
        "id": "bank_transfer",
        "name": "银行转账",
        "type": "manual",
        "icon": "https://cdn.jbet88.com/payment/bank.png",
        "min_amount": 100.0,
        "max_amount": 100000.0,
        "fee_rate": 0.0,
        "processing_time": "1-30分钟",
        "is_available": true,
        "description": "银行卡转账，安全可靠"
      }
    ],
    "withdraw_methods": [
      {
        "id": "bank_card",
        "name": "银行卡提现",
        "type": "bank",
        "icon": "https://cdn.jbet88.com/payment/bank.png",
        "min_amount": 100.0,
        "max_amount": 50000.0,
        "fee_rate": 0.01,
        "processing_time": "1-3个工作日",
        "is_available": true,
        "daily_limit": 100000.0,
        "monthly_limit": 500000.0
      }
    ]
  }
}
```

### 4.2 创建充值订单

**接口地址**: `POST /api/v1/payment/deposit`

**请求参数**:
```json
{
  "payment_method_id": "alipay",
  "amount": 100.0,
  "return_url": "https://app.jbet88.com/deposit/result",
  "notify_url": "https://app.jbet88.com/api/payment/notify"
}
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "order_id": "order_123456",
    "payment_type": "qr_code",  // qr_code, redirect, manual
    "amount": 100.0,
    "fee": 0.0,
    "total_amount": 100.0,
    "qr_code": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAA...",
    "payment_url": "https://payment.example.com/pay?order=123456",
    "bank_info": {
      "bank_name": "中国工商银行",
      "account_name": "JBET88",
      "account_number": "6222****1234",
      "branch": "北京分行"
    },
    "expires_at": "2023-12-01T11:00:00Z",
    "status": "pending"
  }
}
```

### 4.3 查询充值订单状态

**接口地址**: `GET /api/v1/payment/deposit/{order_id}`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "order_id": "order_123456",
    "amount": 100.0,
    "status": "completed",  // pending, completed, failed, cancelled
    "payment_method": "支付宝",
    "created_at": "2023-12-01T10:00:00Z",
    "completed_at": "2023-12-01T10:05:00Z",
    "transaction_id": "txn_789012"
  }
}
```

### 4.4 创建提现申请

**接口地址**: `POST /api/v1/payment/withdraw`

**请求参数**:
```json
{
  "payment_method_id": "bank_card",
  "amount": 500.0,
  "bank_card_id": "card_123",  // 已绑定的银行卡ID
  "password": "提现密码"
}
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "withdraw_id": "withdraw_123456",
    "amount": 500.0,
    "fee": 5.0,
    "actual_amount": 495.0,
    "status": "pending",
    "estimated_arrival": "1-3个工作日",
    "created_at": "2023-12-01T10:00:00Z"
  }
}
```

### 4.5 获取交易记录

**接口地址**: `GET /api/v1/payment/transactions`

**请求参数**:
```
type: 交易类型 (deposit, withdraw, all)
status: 状态 (pending, completed, failed, cancelled)
start_date: 开始日期
end_date: 结束日期
page: 页码
limit: 每页数量
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "transactions": [
      {
        "id": "txn_001",
        "type": "deposit",
        "amount": 100.0,
        "fee": 0.0,
        "actual_amount": 100.0,
        "status": "completed",
        "payment_method": "支付宝",
        "description": "充值",
        "created_at": "2023-12-01T10:00:00Z",
        "completed_at": "2023-12-01T10:05:00Z"
      }
    ],
    "pagination": {
      "current_page": 1,
      "total_pages": 5,
      "total_count": 100
    },
    "summary": {
      "total_deposit": 5000.0,
      "total_withdraw": 3000.0,
      "net_amount": 2000.0
    }
  }
}
```

### 4.6 银行卡管理

#### 添加银行卡
**接口地址**: `POST /api/v1/user/bank-cards`

**请求参数**:
```json
{
  "bank_name": "中国工商银行",
  "card_number": "6222021234567890",
  "card_holder": "张三",
  "branch": "北京分行",
  "password": "支付密码"
}
```

#### 获取银行卡列表
**接口地址**: `GET /api/v1/user/bank-cards`

**响应数据**:
```json
{
  "success": true,
  "data": [
    {
      "id": "card_123",
      "bank_name": "中国工商银行",
      "card_number": "****7890",
      "card_holder": "张三",
      "is_default": true,
      "status": "active",
      "created_at": "2023-01-01T00:00:00Z"
    }
  ]
}
```

## 5. 优惠活动模块 API

### 5.1 获取优惠活动列表

**接口地址**: `GET /api/v1/promotions`

**请求参数**:
```
category: 活动分类 (welcome, deposit, cashback, vip)
status: 状态 (active, upcoming, expired)
page: 页码
limit: 每页数量
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "promotions": [
      {
        "id": "promo_001",
        "title": "新用户欢迎奖金",
        "subtitle": "首次充值100%奖金",
        "category": "welcome",
        "type": "deposit_bonus",
        "banner_url": "https://cdn.jbet88.com/promotions/promo_001.jpg",
        "thumbnail_url": "https://cdn.jbet88.com/promotions/thumbs/promo_001.jpg",
        "description": "新用户首次充值即可获得100%奖金，最高1000元",
        "bonus_amount": 1000.0,
        "bonus_percentage": 100,
        "min_deposit": 100.0,
        "max_bonus": 1000.0,
        "wagering_requirement": 30,
        "valid_games": ["slots", "table"],
        "start_date": "2023-01-01T00:00:00Z",
        "end_date": "2023-12-31T23:59:59Z",
        "is_active": true,
        "is_claimed": false,
        "can_claim": true,
        "terms_url": "https://jbet88.com/terms/promo_001",
        "priority": 1
      }
    ],
    "pagination": {
      "current_page": 1,
      "total_pages": 3,
      "total_count": 25
    }
  }
}
```

### 5.2 获取优惠详情

**接口地址**: `GET /api/v1/promotions/{promo_id}`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "id": "promo_001",
    "title": "新用户欢迎奖金",
    "subtitle": "首次充值100%奖金",
    "category": "welcome",
    "type": "deposit_bonus",
    "images": {
      "banner": "https://cdn.jbet88.com/promotions/banners/promo_001.jpg",
      "thumbnail": "https://cdn.jbet88.com/promotions/thumbs/promo_001.jpg",
      "gallery": [
        "https://cdn.jbet88.com/promotions/gallery/promo_001_1.jpg"
      ]
    },
    "description": "详细活动描述",
    "terms_and_conditions": "活动条款和条件",
    "how_to_claim": "如何领取奖金的步骤说明",
    "bonus_details": {
      "amount": 1000.0,
      "percentage": 100,
      "min_deposit": 100.0,
      "max_bonus": 1000.0,
      "wagering_requirement": 30,
      "valid_games": ["slots", "table"],
      "excluded_games": ["live_baccarat"],
      "max_bet_per_spin": 50.0,
      "bonus_expiry_days": 30
    },
    "eligibility": {
      "new_users_only": true,
      "min_age": 18,
      "excluded_countries": ["US", "UK"],
      "vip_levels": ["bronze", "silver", "gold"]
    },
    "start_date": "2023-01-01T00:00:00Z",
    "end_date": "2023-12-31T23:59:59Z",
    "is_active": true,
    "is_claimed": false,
    "can_claim": true,
    "claim_count": 1250,
    "max_claims": 10000,
    "priority": 1,
    "created_at": "2023-01-01T00:00:00Z"
  }
}
```

### 5.3 领取优惠

**接口地址**: `POST /api/v1/promotions/{promo_id}/claim`

**请求参数**:
```json
{
  "deposit_amount": 500.0,  // 如果是充值奖金
  "bonus_code": "WELCOME100"  // 如果需要奖金代码
}
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "bonus_id": "bonus_123456",
    "bonus_amount": 500.0,
    "wagering_requirement": 15000.0,
    "expires_at": "2024-01-01T00:00:00Z",
    "status": "active"
  }
}
```

### 5.4 获取我的奖金

**接口地址**: `GET /api/v1/user/bonuses`

**请求参数**:
```
status: 状态 (active, completed, expired, cancelled)
page: 页码
limit: 每页数量
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "bonuses": [
      {
        "id": "bonus_123456",
        "promotion": {
          "id": "promo_001",
          "title": "新用户欢迎奖金",
          "thumbnail_url": "https://cdn.jbet88.com/promotions/thumbs/promo_001.jpg"
        },
        "bonus_amount": 500.0,
        "wagering_requirement": 15000.0,
        "wagering_completed": 8500.0,
        "wagering_progress": 56.7,
        "remaining_amount": 350.0,
        "status": "active",
        "expires_at": "2024-01-01T00:00:00Z",
        "claimed_at": "2023-12-01T10:00:00Z"
      }
    ],
    "pagination": {
      "current_page": 1,
      "total_pages": 2,
      "total_count": 15
    },
    "summary": {
      "active_bonuses": 3,
      "total_bonus_amount": 1500.0,
      "total_wagering_required": 45000.0,
      "total_wagering_completed": 25000.0
    }
  }
}
```

## 6. VIP模块 API

### 6.1 获取VIP信息

**接口地址**: `GET /api/v1/vip/info`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "current_level": {
      "level": 2,
      "name": "银牌会员",
      "icon": "https://cdn.jbet88.com/vip/silver.png",
      "color": "#C0C0C0"
    },
    "next_level": {
      "level": 3,
      "name": "金牌会员",
      "icon": "https://cdn.jbet88.com/vip/gold.png",
      "color": "#FFD700"
    },
    "progress": {
      "current_points": 6500,
      "required_points": 10000,
      "progress_percentage": 65.0,
      "points_to_next_level": 3500
    },
    "benefits": {
      "deposit_bonus": 15,  // 充值奖金百分比
      "cashback_rate": 1.5,  // 返水比例
      "withdrawal_limit": 50000,  // 提现限额
      "personal_manager": false,  // 专属客服
      "birthday_bonus": 200,  // 生日奖金
      "monthly_bonus": 100  // 月度奖金
    },
    "available_bonuses": [
      {
        "id": "vip_monthly",
        "name": "月度VIP奖金",
        "amount": 100.0,
        "can_claim": true,
        "expires_at": "2023-12-31T23:59:59Z"
      }
    ],
    "statistics": {
      "total_deposit": 25000.0,
      "total_wagering": 150000.0,
      "member_since": "2023-01-01T00:00:00Z",
      "days_active": 180
    }
  }
}
```

### 6.2 获取VIP等级列表

**接口地址**: `GET /api/v1/vip/levels`

**响应数据**:
```json
{
  "success": true,
  "data": [
    {
      "level": 1,
      "name": "铜牌会员",
      "icon": "https://cdn.jbet88.com/vip/bronze.png",
      "color": "#CD7F32",
      "required_points": 0,
      "benefits": {
        "deposit_bonus": 10,
        "cashback_rate": 0.5,
        "withdrawal_limit": 10000,
        "personal_manager": false,
        "birthday_bonus": 50,
        "monthly_bonus": 0
      }
    },
    {
      "level": 2,
      "name": "银牌会员",
      "icon": "https://cdn.jbet88.com/vip/silver.png",
      "color": "#C0C0C0",
      "required_points": 1000,
      "benefits": {
        "deposit_bonus": 15,
        "cashback_rate": 1.0,
        "withdrawal_limit": 25000,
        "personal_manager": false,
        "birthday_bonus": 100,
        "monthly_bonus": 50
      }
    }
  ]
}
```

### 6.3 领取VIP奖金

**接口地址**: `POST /api/v1/vip/bonuses/{bonus_id}/claim`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "bonus_amount": 100.0,
    "bonus_type": "cash",  // cash, free_spins
    "wagering_requirement": 0,
    "credited_at": "2023-12-01T10:00:00Z"
  }
}
```

## 7. 客服支持模块 API

### 7.1 获取帮助分类

**接口地址**: `GET /api/v1/support/categories`

**响应数据**:
```json
{
  "success": true,
  "data": [
    {
      "id": "account",
      "name": "账户相关",
      "icon": "https://cdn.jbet88.com/support/account.png",
      "article_count": 15
    },
    {
      "id": "payment",
      "name": "充值提现",
      "icon": "https://cdn.jbet88.com/support/payment.png",
      "article_count": 20
    }
  ]
}
```

### 7.2 获取帮助文章列表

**接口地址**: `GET /api/v1/support/articles`

**请求参数**:
```
category_id: 分类ID (可选)
search: 搜索关键词 (可选)
page: 页码
limit: 每页数量
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "articles": [
      {
        "id": "article_001",
        "title": "如何注册账户",
        "summary": "详细介绍账户注册流程",
        "category": {
          "id": "account",
          "name": "账户相关"
        },
        "view_count": 1250,
        "is_helpful": true,
        "created_at": "2023-01-01T00:00:00Z",
        "updated_at": "2023-06-01T00:00:00Z"
      }
    ],
    "pagination": {
      "current_page": 1,
      "total_pages": 5,
      "total_count": 50
    }
  }
}
```

### 7.3 获取帮助文章详情

**接口地址**: `GET /api/v1/support/articles/{article_id}`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "id": "article_001",
    "title": "如何注册账户",
    "content": "详细的文章内容，支持HTML格式",
    "category": {
      "id": "account",
      "name": "账户相关"
    },
    "tags": ["注册", "账户", "新手"],
    "view_count": 1250,
    "helpful_count": 980,
    "not_helpful_count": 50,
    "is_helpful": null,  // 当前用户是否觉得有用
    "related_articles": [
      {
        "id": "article_002",
        "title": "如何验证账户",
        "summary": "账户验证流程说明"
      }
    ],
    "created_at": "2023-01-01T00:00:00Z",
    "updated_at": "2023-06-01T00:00:00Z"
  }
}
```

### 7.4 文章反馈

**接口地址**: `POST /api/v1/support/articles/{article_id}/feedback`

**请求参数**:
```json
{
  "is_helpful": true,  // true: 有用, false: 无用
  "comment": "反馈意见 (可选)"
}
```

### 7.5 创建客服工单

**接口地址**: `POST /api/v1/support/tickets`

**请求参数**:
```json
{
  "category": "payment",
  "subject": "充值问题",
  "description": "详细问题描述",
  "priority": "normal",  // low, normal, high, urgent
  "attachments": ["file_id_1", "file_id_2"]  // 附件文件ID
}
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "ticket_id": "ticket_123456",
    "ticket_number": "#T123456",
    "status": "open",
    "estimated_response_time": "2小时内"
  }
}
```

### 7.6 获取客服工单列表

**接口地址**: `GET /api/v1/support/tickets`

**请求参数**:
```
status: 状态 (open, in_progress, resolved, closed)
page: 页码
limit: 每页数量
```

### 7.7 在线客服

**接口地址**: `GET /api/v1/support/live-chat/token`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "chat_token": "chat_token_123456",
    "chat_url": "https://chat.jbet88.com/widget?token=chat_token_123456",
    "is_online": true,
    "estimated_wait_time": "2分钟"
  }
}
```

## 8. 系统配置 API

### 8.1 获取应用配置

**接口地址**: `GET /api/v1/config/app`

**响应数据**:
```json
{
  "success": true,
  "data": {
    "app_version": {
      "current": "1.0.0",
      "minimum_required": "1.0.0",
      "update_required": false,
      "update_url": "https://app.jbet88.com/download"
    },
    "maintenance": {
      "is_maintenance": false,
      "start_time": null,
      "end_time": null,
      "message": null
    },
    "features": {
      "live_chat": true,
      "sports_betting": true,
      "live_casino": true,
      "mobile_app": true
    },
    "limits": {
      "max_deposit_per_day": 100000.0,
      "max_withdraw_per_day": 50000.0,
      "max_bet_amount": 10000.0
    },
    "contact_info": {
      "email": "support@jbet88.com",
      "phone": "+86-400-123-4567",
      "wechat": "jbet88_support",
      "telegram": "@jbet88_support"
    },
    "social_links": {
      "facebook": "https://facebook.com/jbet88",
      "twitter": "https://twitter.com/jbet88",
      "instagram": "https://instagram.com/jbet88"
    }
  }
}
```

### 8.2 获取公告列表

**接口地址**: `GET /api/v1/announcements`

**请求参数**:
```
type: 公告类型 (system, promotion, maintenance)
page: 页码
limit: 每页数量
```

**响应数据**:
```json
{
  "success": true,
  "data": {
    "announcements": [
      {
        "id": "ann_001",
        "title": "系统维护通知",
        "content": "系统将于今晚进行维护",
        "type": "system",
        "priority": "high",
        "is_popup": true,
        "start_date": "2023-12-01T00:00:00Z",
        "end_date": "2023-12-31T23:59:59Z",
        "created_at": "2023-11-30T10:00:00Z"
      }
    ],
    "pagination": {
      "current_page": 1,
      "total_pages": 3,
      "total_count": 25
    }
  }
}
```

## 错误代码说明

| 错误代码 | 说明             |
| -------- | ---------------- |
| 200      | 成功             |
| 400      | 请求参数错误     |
| 401      | 未授权/Token无效 |
| 403      | 禁止访问         |
| 404      | 资源不存在       |
| 422      | 数据验证失败     |
| 429      | 请求频率限制     |
| 500      | 服务器内部错误   |
| 503      | 服务不可用       |

### 业务错误代码

| 错误代码 | 说明             |
| -------- | ---------------- |
| 1001     | 用户名或密码错误 |
| 1002     | 账户已被锁定     |
| 1003     | 账户未验证       |
| 2001     | 余额不足         |
| 2002     | 超出提现限额     |
| 2003     | 银行卡信息错误   |
| 3001     | 游戏不可用       |
| 3002     | 游戏维护中       |
| 4001     | 优惠已过期       |
| 4002     | 不符合优惠条件   |
| 4003     | 优惠已领取       |

## 请求示例

### Dart/Flutter 请求示例

```dart
class ApiService {
  static const String baseUrl = 'https://api.jbet88.com/api/v1';
  final Dio _dio = Dio();
  
  ApiService() {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    
    // 请求拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // 添加认证头
        final token = StorageService.getToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        
        // 添加设备信息
        options.headers['X-Device-ID'] = DeviceService.getDeviceId();
        options.headers['X-App-Version'] = AppConfig.version;
        
        handler.next(options);
      },
      onResponse: (response, handler) {
        handler.next(response);
      },
      onError: (error, handler) {
        // 统一错误处理
        _handleError(error);
        handler.next(error);
      },
    ));
  }
  
  // 登录
  Future<ApiResponse<UserModel>> login(String username, String password) async {
    try {
      final response = await _dio.post('/auth/login', data: {
        'username': username,
        'password': password,
        'device_id': DeviceService.getDeviceId(),
        'device_type': 'mobile',
      });
      
      return ApiResponse<UserModel>.fromJson(
        response.data,
        (data) => UserModel.fromJson(data),
      );
    } catch (e) {
      throw ApiException.fromError(e);
    }
  }
  
  // 获取游戏列表
  Future<ApiResponse<GameListResponse>> getGames({
    String? category,
    String? search,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _dio.get('/games', queryParameters: {
        if (category != null) 'category': category,
        if (search != null) 'search': search,
        'page': page,
        'limit': limit,
      });
      
      return ApiResponse<GameListResponse>.fromJson(
        response.data,
        (data) => GameListResponse.fromJson(data),
      );
    } catch (e) {
      throw ApiException.fromError(e);
    }
  }
  
  void _handleError(DioException error) {
    switch (error.response?.statusCode) {
      case 401:
        // Token过期，跳转到登录页
        AuthService.logout();
        Get.offAllNamed(AppRoutes.login);
        break;
      case 403:
        Get.snackbar('错误', '访问被拒绝');
        break;
      case 429:
        Get.snackbar('错误', '请求过于频繁，请稍后再试');
        break;
      case 503:
        Get.snackbar('错误', '服务暂时不可用');
        break;
    }
  }
}

// API响应模型
class ApiResponse<T> {
  final bool success;
  final int code;
  final String message;
  final T? data;
  final int timestamp;
  
  ApiResponse({
    required this.success,
    required this.code,
    required this.message,
    this.data,
    required this.timestamp,
  });
  
  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic)? fromJsonT,
  ) {
    return ApiResponse<T>(
      success: json['success'],
      code: json['code'],
      message: json['message'],
      data: json['data'] != null && fromJsonT != null
          ? fromJsonT(json['data'])
          : null,
      timestamp: json['timestamp'],
    );
  }
}

// API异常处理
class ApiException implements Exception {
  final int code;
  final String message;
  final Map<String, dynamic>? errors;
  
  ApiException({
    required this.code,
    required this.message,
    this.errors,
  });
  
  factory ApiException.fromError(dynamic error) {
    if (error is DioException) {
      final response = error.response;
      if (response != null) {
        return ApiException(
          code: response.statusCode ?? 0,
          message: response.data['message'] ?? '请求失败',
          errors: response.data['errors'],
        );
      }
    }
    
    return ApiException(
      code: 0,
      message: '网络连接失败',
    );
  }
}
```

## 安全建议

1. **HTTPS**: 所有API请求必须使用HTTPS
2. **Token管理**: 实现Token自动刷新机制
3. **请求签名**: 对敏感操作进行请求签名验证
4. **频率限制**: 实现客户端请求频率限制
5. **数据加密**: 敏感数据传输加密
6. **设备绑定**: 重要操作需要设备验证
7. **日志记录**: 记录所有API调用日志
8. **异常监控**: 实现API异常监控和告警

## 测试建议

1. **单元测试**: 为每个API接口编写单元测试
2. **集成测试**: 测试完整的业务流程
3. **性能测试**: 测试API响应时间和并发能力
4. **安全测试**: 测试API安全性和权限控制
5. **兼容性测试**: 测试不同版本的API兼容性

本API文档为JBET88 Flutter项目提供了完整的后端接口规范，开发团队可以根据此文档进行前后端开发协作。 