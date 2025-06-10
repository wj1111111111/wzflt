/// Mock 数据服务 - 用于前端开发阶段的数据模拟
/// 
/// 使用方法：
/// 1. 在开发阶段，使用 MockService.request() 代替真实 API 调用
/// 2. 待后端 API 就绪后，逐步替换为真实接口
/// 

class MockService {
  // 模拟网络延迟
  static const int mockDelay = 300;
  
  // Mock 数据存储
  static final Map<String, dynamic> mockData = {
    // ========== 认证相关 ==========
    '/auth/login': {
      'code': 0,
      'data': {
        'token': 'mock_token_${DateTime.now().millisecondsSinceEpoch}',
        'refreshToken': 'mock_refresh_token_${DateTime.now().millisecondsSinceEpoch}',
        'user': {
          'id': 1001,
          'username': 'testuser',
          'nickname': '测试用户',
          'avatar': '/assets/images/default_avatar.png',
          'balance': 10000.00,
          'vipLevel': 3,
          'phone': '138****8888',
          'email': 'test@example.com',
          'isPhoneVerified': true,
          'isEmailVerified': false,
          'registerTime': '2024-01-01 10:00:00',
          'lastLoginTime': DateTime.now().toIso8601String(),
        }
      },
      'message': '登录成功',
      'isSuccess': true
    },
    
    '/auth/register': {
      'code': 0,
      'data': {
        'userId': 1002,
        'username': 'newuser',
        'token': 'mock_token_new_user',
      },
      'message': '注册成功',
      'isSuccess': true
    },
    
    // ========== 首页数据 ==========
    '/home/data': {
      'code': 0,
      'data': {
        'banners': [
          {
            'id': 1,
            'imageUrl': 'https://via.placeholder.com/750x300/FF6B6B/FFFFFF?text=Welcome+Bonus',
            'title': '新人首充送100%',
            'linkType': 'promotion',
            'linkId': 101,
            'sort': 1
          },
          {
            'id': 2,
            'imageUrl': 'https://via.placeholder.com/750x300/4ECDC4/FFFFFF?text=VIP+Rewards',
            'title': 'VIP专属返水',
            'linkType': 'vip',
            'linkId': 0,
            'sort': 2
          },
          {
            'id': 3,
            'imageUrl': 'https://via.placeholder.com/750x300/45B7D1/FFFFFF?text=Daily+Tasks',
            'title': '每日任务赢大奖',
            'linkType': 'task',
            'linkId': 0,
            'sort': 3
          }
        ],
        'announcements': [
          {
            'id': 1,
            'content': '🎉 恭喜用户 135****678 在老虎机中赢得 88,888 元！',
            'type': 'winner'
          },
          {
            'id': 2,
            'content': '📢 系统维护公告：每日凌晨3:00-4:00进行例行维护',
            'type': 'system'
          }
        ],
        'gameCategories': [
          {
            'id': 1,
            'name': '老虎机',
            'icon': '🎰',
            'code': 'slot',
            'gameCount': 1200
          },
          {
            'id': 2,
            'name': '真人',
            'icon': '🎲',
            'code': 'live',
            'gameCount': 50
          },
          {
            'id': 3,
            'name': '体育',
            'icon': '⚽',
            'code': 'sports',
            'gameCount': 30
          },
          {
            'id': 4,
            'name': '电竞',
            'icon': '🎮',
            'code': 'esports',
            'gameCount': 20
          },
          {
            'id': 5,
            'name': '彩票',
            'icon': '🎟️',
            'code': 'lottery',
            'gameCount': 15
          },
          {
            'id': 6,
            'name': '棋牌',
            'icon': '♠️',
            'code': 'card',
            'gameCount': 25
          }
        ],
        'hotGames': [
          {
            'id': 101,
            'name': '财神到',
            'provider': 'PG Soft',
            'thumbnail': 'https://via.placeholder.com/200x200/FF6B6B/FFFFFF?text=财神到',
            'category': 'slot',
            'isHot': true,
            'isNew': false
          },
          {
            'id': 102,
            'name': '糖果派对',
            'provider': 'Pragmatic Play',
            'thumbnail': 'https://via.placeholder.com/200x200/4ECDC4/FFFFFF?text=糖果派对',
            'category': 'slot',
            'isHot': true,
            'isNew': true
          }
        ],
        'userStats': {
          'todayWinners': 1234,
          'totalPrizePool': 8888888.88,
          'onlineUsers': 5678
        }
      },
      'message': '获取成功',
      'isSuccess': true
    },
    
    // ========== 用户信息 ==========
    '/user/profile': {
      'code': 0,
      'data': {
        'id': 1001,
        'username': 'testuser',
        'nickname': '测试用户',
        'avatar': '/assets/images/default_avatar.png',
        'balance': 10000.00,
        'frozenBalance': 0,
        'vipLevel': 3,
        'vipPoints': 8500,
        'nextLevelPoints': 10000,
        'phone': '138****8888',
        'email': 'test@example.com',
        'bankCards': 2,
        'hasTransactionPassword': true,
        'totalDeposit': 50000.00,
        'totalWithdraw': 30000.00,
        'totalBet': 180000.00,
        'totalWin': 185000.00,
        'memberDays': 180,
        'inviteCode': 'ABC123',
        'inviteCount': 15,
        'teamCount': 156
      },
      'message': '获取成功',
      'isSuccess': true
    },
    
    // ========== VIP信息 ==========
    '/user/vip/info': {
      'code': 0,
      'data': {
        'currentLevel': 3,
        'currentLevelName': 'VIP3',
        'currentPoints': 8500,
        'nextLevel': 4,
        'nextLevelName': 'VIP4',
        'nextLevelPoints': 10000,
        'levelProgress': 0.85,
        'benefits': {
          'depositBonus': 0.008,
          'weeklyBonus': 88,
          'monthlyBonus': 388,
          'withdrawTimes': 5,
          'withdrawLimit': 50000,
          'rebateRate': 0.012
        },
        'availableRewards': [
          {
            'type': 'level',
            'name': '等级礼金',
            'amount': 188,
            'status': 'available'
          },
          {
            'type': 'weekly',
            'name': '周礼金',
            'amount': 88,
            'status': 'claimed'
          },
          {
            'type': 'monthly',
            'name': '月礼金',
            'amount': 388,
            'status': 'locked',
            'unlockTime': '2024-02-01'
          }
        ]
      },
      'message': '获取成功',
      'isSuccess': true
    },
    
    // ========== 充值方式 ==========
    '/payment/deposit/methods': {
      'code': 0,
      'data': {
        'methods': [
          {
            'id': 1,
            'name': '银行卡转账',
            'icon': '💳',
            'minAmount': 100,
            'maxAmount': 50000,
            'feeRate': 0,
            'channels': [
              {
                'id': 101,
                'name': '工商银行',
                'logo': 'icbc.png',
                'status': 'online'
              },
              {
                'id': 102,
                'name': '建设银行',
                'logo': 'ccb.png',
                'status': 'online'
              }
            ]
          },
          {
            'id': 2,
            'name': '支付宝',
            'icon': '📱',
            'minAmount': 50,
            'maxAmount': 10000,
            'feeRate': 0,
            'channels': [
              {
                'id': 201,
                'name': '支付宝快捷',
                'logo': 'alipay.png',
                'status': 'online'
              }
            ]
          },
          {
            'id': 3,
            'name': 'USDT',
            'icon': '₮',
            'minAmount': 20,
            'maxAmount': 100000,
            'feeRate': 0,
            'exchangeRate': 7.2,
            'channels': [
              {
                'id': 301,
                'name': 'TRC20',
                'logo': 'usdt.png',
                'status': 'online'
              }
            ]
          }
        ],
        'quickAmounts': [100, 500, 1000, 3000, 5000, 10000],
        'promotions': [
          {
            'id': 1,
            'title': '首充送100%',
            'description': '首次充值最高送1888',
            'minDeposit': 100
          }
        ]
      },
      'message': '获取成功',
      'isSuccess': true
    },
    
    // ========== 游戏列表 ==========
    '/game/list': {
      'code': 0,
      'data': {
        'games': List.generate(20, (index) => {
          'id': 1000 + index,
          'name': '游戏${index + 1}',
          'provider': ['PG Soft', 'Pragmatic Play', 'Evolution'][index % 3],
          'category': ['slot', 'live', 'sports'][index % 3],
          'thumbnail': 'https://via.placeholder.com/200x200/${['FF6B6B', '4ECDC4', '45B7D1'][index % 3]}/FFFFFF?text=Game${index + 1}',
          'isHot': index < 5,
          'isNew': index % 4 == 0,
          'isFavorite': index % 5 == 0,
          'tags': index % 2 == 0 ? ['免费旋转', '高倍率'] : ['累积奖池'],
        }),
        'totalCount': 100,
        'hasMore': true
      },
      'message': '获取成功',
      'isSuccess': true
    },
    
    // ========== 活动列表 ==========
    '/promotions/list': {
      'code': 0,
      'data': {
        'promotions': [
          {
            'id': 1,
            'title': '新人首充送100%',
            'subtitle': '最高赠送1888元',
            'image': 'https://via.placeholder.com/750x400/FF6B6B/FFFFFF?text=首充送100%',
            'type': 'deposit',
            'status': 'active',
            'startTime': '2024-01-01',
            'endTime': '2024-12-31',
            'participated': false
          },
          {
            'id': 2,
            'title': 'VIP专属返水',
            'subtitle': '最高1.2%返水',
            'image': 'https://via.placeholder.com/750x400/4ECDC4/FFFFFF?text=VIP返水',
            'type': 'rebate',
            'status': 'active',
            'participated': true
          },
          {
            'id': 3,
            'title': '每日签到',
            'subtitle': '连续签到赢大奖',
            'image': 'https://via.placeholder.com/750x400/45B7D1/FFFFFF?text=每日签到',
            'type': 'checkin',
            'status': 'active',
            'participated': true
          }
        ]
      },
      'message': '获取成功',
      'isSuccess': true
    },
    
    // ========== 充值记录 ==========
    '/payment/deposit/history': {
      'code': 0,
      'data': {
        'records': List.generate(10, (index) => {
          'id': '202401${(10 + index).toString().padLeft(6, '0')}',
          'amount': [100, 500, 1000, 3000, 5000][index % 5],
          'actualAmount': [100, 500, 1000, 3000, 5000][index % 5],
          'bonus': index % 3 == 0 ? [100, 500, 1000, 3000, 5000][index % 5] : 0,
          'method': ['银行卡', '支付宝', 'USDT'][index % 3],
          'channel': ['工商银行', '支付宝快捷', 'TRC20'][index % 3],
          'status': index == 0 ? 'pending' : (index == 1 ? 'failed' : 'success'),
          'statusText': index == 0 ? '处理中' : (index == 1 ? '失败' : '成功'),
          'createTime': DateTime.now().subtract(Duration(days: index)).toIso8601String(),
          'completeTime': index > 1 ? DateTime.now().subtract(Duration(days: index)).add(Duration(minutes: 5)).toIso8601String() : null,
        }),
        'totalCount': 50,
        'totalAmount': 125000.00,
        'hasMore': true
      },
      'message': '获取成功',
      'isSuccess': true
    },
    
    // ========== 提现记录 ==========
    '/payment/withdraw/history': {
      'code': 0,
      'data': {
        'records': List.generate(5, (index) => {
          'id': '202401${(20 + index).toString().padLeft(6, '0')}',
          'amount': [1000, 2000, 5000, 10000, 20000][index % 5],
          'fee': 0,
          'actualAmount': [1000, 2000, 5000, 10000, 20000][index % 5],
          'method': '银行卡',
          'bankName': '工商银行',
          'bankCard': '****' + (1234 + index).toString(),
          'status': index == 0 ? 'pending' : (index == 1 ? 'rejected' : 'success'),
          'statusText': index == 0 ? '审核中' : (index == 1 ? '已拒绝' : '已到账'),
          'rejectReason': index == 1 ? '流水不足' : null,
          'createTime': DateTime.now().subtract(Duration(days: index * 2)).toIso8601String(),
          'completeTime': index > 1 ? DateTime.now().subtract(Duration(days: index * 2)).add(Duration(hours: 2)).toIso8601String() : null,
        }),
        'totalCount': 20,
        'totalAmount': 80000.00,
        'hasMore': true
      },
      'message': '获取成功',
      'isSuccess': true
    }
  };
  
  /// 模拟 API 请求
  static Future<Map<String, dynamic>> request(
    String path, {
    Map<String, dynamic>? params,
    String method = 'GET',
  }) async {
    // 模拟网络延迟
    await Future.delayed(Duration(milliseconds: mockDelay));
    
    // 模拟token过期
    if (path != '/auth/login' && path != '/auth/register') {
      final random = DateTime.now().millisecondsSinceEpoch % 100;
      if (random < 5) { // 5%概率token过期
        return {
          'code': 401,
          'message': 'Token已过期，请重新登录',
          'data': null,
          'isSuccess': false
        };
      }
    }
    
    // 返回mock数据
    if (mockData.containsKey(path)) {
      return Map<String, dynamic>.from(mockData[path]!);
    }
    
    // 默认404响应
    return {
      'code': 404,
      'message': 'API not found: $path',
      'data': null,
      'isSuccess': false
    };
  }
  
  /// 模拟文件上传
  static Future<Map<String, dynamic>> uploadFile(String filePath) async {
    await Future.delayed(Duration(seconds: 1));
    
    return {
      'code': 0,
      'data': {
        'url': 'https://via.placeholder.com/200x200/4ECDC4/FFFFFF?text=Uploaded',
        'fileId': DateTime.now().millisecondsSinceEpoch.toString(),
      },
      'message': '上传成功',
      'isSuccess': true
    };
  }
} 