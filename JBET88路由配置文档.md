# JBET88 Flutter 路由配置文档

## 概述

本文档详细说明了 JBET88 Flutter 应用的路由配置、页面导航和最佳实践。项目使用 Flutter 标准路由系统，通过 `NavigatorService` 统一管理导航逻辑。

## 路由架构设计

### 1. 路由层次结构

```
App Routes
├── 认证路由 (Auth Routes)
│   ├── /splash_screen - 启动页
│   ├── /log_in_screen - 登录页面
│   ├── /register_screen - 注册主页面
│   ├── /register_one_screen - 注册-One页面
│   ├── /register_click_agreement_text_screen - 注册协议页面
│   ├── /registration_success_guide_screen - 注册成功引导
│   ├── /forgot_password_mobile_payment_screen - 忘记密码
│   └── /third_party_login_complete_info_screen - 第三方登录完善信息
│
├── 主页路由 (Home Routes)
│   ├── /home_one_screen - 首页主页面
│   ├── /home_seven_items_screen - 首页-七项页面
│   ├── /home_tasks_screen - 首页-任务页面
│   ├── /home_wheel_spin_screen - 首页-转盘页面
│   └── /home_sms_popup_screen - 首页-SMS弹窗页面
│
├── 游戏路由 (Game Routes)
│   ├── /spin_panel_screen - 转盘面板页面
│   ├── /smash_the_golden_egg_screen - 砸金蛋主页面
│   ├── /wheel_spin_main_hidden_levels_screen - 转盘主页面-隐藏关卡
│   ├── /lottery_withdrawal_pending_review_screen - 彩票-提现待审核
│   └── /betting_history_screen - 投注历史页面
│
├── 充值提现路由 (Payment Routes)
│   ├── /transaction_deposit_screen - 交易-存款页面
│   ├── /deposit_info_3rd_party_success_screen - 存款成功页面
│   ├── /wallet_choose_amount_style_screen - 钱包-选择金额样式
│   ├── /wallet_withdraw_wager_requirement_screen - 钱包-提现流水要求
│   ├── /wallet_withdraw_wager_met_screen - 钱包-提现流水达标
│   ├── /top_up_records_screen - 充值记录主页面
│   └── /withdrawal_records_screen - 提现记录页面
│
├── 活动优惠路由 (Promotion Routes)
│   ├── /promotions_list_screen - 活动列表页面
│   ├── /promotions_detail_screen - 活动详情页面
│   ├── /bonus_details_screen - 奖金详情主页面
│   ├── /achievement_rewards_screen - 成就奖励主页面
│   ├── /daily_cumulative_deposit_event_screen - 每日累计存款活动
│   ├── /coupon_center_voucher_won_screen - 优惠券中心-中奖券
│   └── /red_envelope_screen - 红包主页面
│
├── VIP路由 (VIP Routes)
│   ├── /vip_screen - VIP主页面
│   ├── /vip_daily_wage_screen - VIP日薪页面
│   ├── /vip_daily_salary_daily_wage_rules_screen - VIP日薪规则
│   ├── /level_bonus_screen - 等级奖励主页面
│   ├── /weekly_salary_screen - 每周工资主页面
│   ├── /monthly_salary_screen - 月薪主页面
│   └── /birthday_bonus_screen - 生日彩金页面
│
├── 个人中心路由 (Profile Routes)
│   ├── /personal_center_screen - 个人中心主页面
│   ├── /settings_personal_info_screen - 设置-个人信息页面
│   ├── /team_members_screen - 团队成员页面
│   ├── /agent_leaderboard_screen - 代理排行榜主页面
│   ├── /referral_bring_a_friend_screen - 推广-邀请好友页面
│   └── /reward_records_screen - 奖励记录页面
│
├── 帮助支持路由 (Support Routes)
│   ├── /help_screen - 帮助页面
│   ├── /information_screen - 资讯主页面
│   ├── /feedback_box_success_prompt_screen - 意见箱成功提示
│   └── /message_empty_screen - 消息-空页面
│
└── 系统路由 (System Routes)
    ├── /maintenance_page_3_to_4_am_screen - 维护页面
    ├── /network_error_screen - 网络错误页面
    ├── /not_winner_popup_screen - 未中奖弹窗
    └── /app_navigation_screen - 应用导航页面
```

## 核心路由配置

### 1. 路由定义文件结构

```dart
// lib/routes/app_routes.dart
class AppRoutes {
  // 所有路由常量定义
  static const String splashScreen = '/splash_screen';
  static const String logInScreen = '/log_in_screen';
  static const String homeOneScreen = '/home_one_screen';
  // ... 更多路由定义
  
  // 初始路由
  static const String initialRoute = '/initialRoute';
  
  // 路由映射表
  static Map<String, WidgetBuilder> get routes => {
    splashScreen: SplashScreen.builder,
    logInScreen: LogInScreen.builder,
    homeOneScreen: HomeOneScreen.builder,
    // ... 更多路由映射
  };
}
```

### 2. 导航服务 (NavigatorService)

```dart
// lib/core/utils/navigator_service.dart
class NavigatorService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // 导航到指定页面
  static Future<dynamic> pushNamed(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  // 替换当前页面
  static Future<dynamic> pushReplacementNamed(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: arguments);
  }

  // 清空栈并导航
  static Future<dynamic> pushNamedAndRemoveUntil(String routeName, {bool routePredicate = false, dynamic arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (route) => routePredicate,
      arguments: arguments,
    );
  }

  // 返回上一页
  static void goBack([dynamic result]) {
    return navigatorKey.currentState!.pop(result);
  }
}
```

## 路由分类详解

### 1. 认证相关路由

| 路由名称                          | 页面说明                | 路由路径                                |
| --------------------------------- | ----------------------- | --------------------------------------- |
| splashScreen                      | 启动页                  | /splash_screen                          |
| logInScreen                       | 登录页面                | /log_in_screen                          |
| registerScreen                    | 注册主页面              | /register_screen                        |
| registerOneScreen                 | 注册-One页面            | /register_one_screen                    |
| registerClickAgreementTextScreen  | 注册-点击协议文本页面   | /register_click_agreement_text_screen   |
| registrationSuccessGuideScreen    | 注册成功引导页面        | /registration_success_guide_screen      |
| forgotPasswordMobilePaymentScreen | 忘记密码-手机支付页面   | /forgot_password_mobile_payment_screen  |
| thirdPartyLoginCompleteInfoScreen | 第三方登录-完善信息页面 | /third_party_login_complete_info_screen |

### 2. 首页相关路由

| 路由名称                    | 页面说明          | 路由路径                          |
| --------------------------- | ----------------- | --------------------------------- |
| homeOneScreen               | 首页主页面        | /home_one_screen                  |
| homeSevenItemsScreen        | 首页-七项页面     | /home_seven_items_screen          |
| homeTasksScreen             | 首页-任务页面     | /home_tasks_screen                |
| homeWheelSpinScreen         | 首页-转盘页面     | /home_wheel_spin_screen           |
| homeSpinTheWheelPopupScreen | 首页-转盘弹窗页面 | /home_spin_the_wheel_popup_screen |
| homeSmsPopupScreen          | 首页-SMS弹窗页面  | /home_sms_popup_screen            |
| homeClaimSuccessScreen      | 首页-领奖成功页面 | /home_claim_success_screen        |

### 3. 游戏相关路由

| 路由名称                        | 页面说明            | 路由路径                              |
| ------------------------------- | ------------------- | ------------------------------------- |
| spinPanelScreen                 | 转盘面板页面        | /spin_panel_screen                    |
| smashTheGoldenEggScreen         | 砸金蛋主页面        | /smash_the_golden_egg_screen          |
| wheelSpinMainHiddenLevelsScreen | 转盘主页面-隐藏关卡 | /wheel_spin_main_hidden_levels_screen |
| wheelSpinMainRulesScreen        | 转盘主页面-规则     | /wheel_spin_main_rules_screen         |
| wheelResultWonCashScreen        | 转盘-中奖页面       | /wheel_result_won_cash_screen         |
| bettingHistoryScreen            | 投注历史页面        | /betting_history_screen               |
| treasureBoxPopupScreen          | 宝箱弹窗页面        | /treasure_box_popup_screen            |
| redEnvelopePopupScreen          | 红包弹窗页面        | /red_envelope_popup_screen            |

### 4. 充值提现路由

| 路由名称                             | 页面说明                | 路由路径                                  |
| ------------------------------------ | ----------------------- | ----------------------------------------- |
| transactionDepositScreen             | 交易-存款页面           | /transaction_deposit_screen               |
| transactionDepositOneScreen          | 交易-存款-One页面       | /transaction_deposit_one_screen           |
| depositInfo3rdPartySuccessScreen     | 存款信息-第三方成功页面 | /deposit_info_3rd_party_success_screen    |
| walletChooseAmountStyleScreen        | 钱包-选择金额样式页面   | /wallet_choose_amount_style_screen        |
| walletWithdrawWagerRequirementScreen | 钱包-提现-流水要求页面  | /wallet_withdraw_wager_requirement_screen |
| walletWithdrawWagerMetScreen         | 钱包-提现-流水达标页面  | /wallet_withdraw_wager_met_screen         |
| topUpRecordsScreen                   | 充值记录主页面          | /top_up_records_screen                    |
| withdrawalRecordsScreen              | 提现记录页面            | /withdrawal_records_screen                |

### 5. 活动优惠路由

| 路由名称                          | 页面说明              | 路由路径                               |
| --------------------------------- | --------------------- | -------------------------------------- |
| promotionsListScreen              | 活动列表页面          | /promotions_list_screen                |
| promotionsDetailScreen            | 活动详情页面          | /promotions_detail_screen              |
| bonusDetailsScreen                | 奖金详情主页面        | /bonus_details_screen                  |
| achievementRewardsScreen          | 成就奖励主页面        | /achievement_rewards_screen            |
| dailyCumulativeDepositEventScreen | 每日累计存款活动页面  | /daily_cumulative_deposit_event_screen |
| couponCenterVoucherWonScreen      | 优惠券中心-中奖券页面 | /coupon_center_voucher_won_screen      |
| redEnvelopeScreen                 | 红包主页面            | /red_envelope_screen                   |
| checkInScreen                     | 签到主页面            | /check_in_screen                       |

### 6. VIP相关路由

| 路由名称                           | 页面说明               | 路由路径                                  |
| ---------------------------------- | ---------------------- | ----------------------------------------- |
| vipScreen                          | VIP主页面              | /vip_screen                               |
| vipDailyWageScreen                 | VIP日薪页面            | /vip_daily_wage_screen                    |
| vipDailySalaryDailyWageRulesScreen | VIP日薪-日工资规则页面 | /vip_daily_salary_daily_wage_rules_screen |
| levelBonusScreen                   | 等级奖励主页面         | /level_bonus_screen                       |
| levelBonusClaimedScreen            | 等级奖励-已领取页面    | /level_bonus_claimed_screen               |
| weeklySalaryScreen                 | 每周工资主页面         | /weekly_salary_screen                     |
| monthlySalaryScreen                | 月薪主页面             | /monthly_salary_screen                    |
| birthdayBonusScreen                | 生日彩金页面           | /birthday_bonus_screen                    |

### 7. 个人中心路由

| 路由名称                         | 页面说明                | 路由路径                              |
| -------------------------------- | ----------------------- | ------------------------------------- |
| personalCenterScreen             | 个人中心主页面          | /personal_center_screen               |
| settingsPersonalInfoScreen       | 设置-个人信息页面       | /settings_personal_info_screen        |
| teamMembersScreen                | 团队成员页面            | /team_members_screen                  |
| agentLeaderboardScreen           | 代理排行榜主页面        | /agent_leaderboard_screen             |
| referralBringAFriendScreen       | 推广-邀请好友页面       | /referral_bring_a_friend_screen       |
| rewardRecordsScreen              | 奖励记录页面            | /reward_records_screen                |
| personalCenterClaimedBonusScreen | 个人中心-已领取奖励页面 | /personal_center_claimed_bonus_screen |

## 页面导航逻辑

### 1. 首页导航结构

```
首页 (home_one_screen)
├── 顶部按钮
│   ├── 下载 → download_details_pc_screen
│   ├── 登录 → log_in_screen
│   └── 注册 → register_screen
├── 轮播图
│   ├── 已登录 → promotions_detail_screen (带参数)
│   └── 未登录 → log_in_screen
├── 跑马灯
│   ├── 已登录 → spin_panel_screen 或 home_wheel_spin_screen
│   └── 未登录 → log_in_screen
├── 左侧菜单
│   ├── Favorite → message_empty_screen (无收藏时)
│   ├── Hot → 热门游戏列表
│   ├── Slot → 老虎机游戏列表
│   ├── Live → 真人视讯游戏列表
│   ├── Bingo → bingo游戏列表
│   ├── Fish → 捕鱼游戏列表
│   ├── Egame → 电玩游戏列表
│   └── Table → 棋牌游戏列表
└── 底部导航
    ├── Home → home_one_screen
    ├── Invite → referral_bring_a_friend_screen
    ├── 中间按钮 → spin_panel_screen
    ├── Promotion → promotions_list_screen
    └── Member → personal_center_screen
```

### 2. 登录拦截逻辑

需要登录才能访问的页面：
- 个人中心相关页面
- 充值提现页面
- VIP相关页面
- 游戏进入页面
- 优惠领取页面
- 团队管理页面

### 3. 参数传递示例

```dart
// 导航到活动详情页面
NavigatorService.pushNamed(
  AppRoutes.promotionsDetailScreen,
  arguments: {
    'promotionId': '123',
    'title': '新人首充优惠',
  },
);

// 在目标页面接收参数
class PromotionsDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final promotionId = args['promotionId'];
    final title = args['title'];
    
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      // ...
    );
  }
}
```

## 特殊页面处理

### 1. 弹窗和底部表单

以下页面类型不通过路由导航，而是作为组件直接调用：

- Dialog 组件（所有 `_dialog.dart` 文件）
- BottomSheet 组件（所有 `_bottomsheet.dart` 文件）
- Page 组件（内嵌页面）

### 2. Tab页面

以下为包含Tab的页面，需要特殊处理：

- agentTabPage - 代理Tab页
- teamTabPage - 团队Tab页
- settingsTabPage - 设置Tab页
- couponcenterTabPage - 优惠券中心Tab页

### 3. 维护和错误页面

- maintenancePage3To4AmScreen - 系统维护页面
- networkErrorScreen - 网络错误页面
- notDuringEventPeriodScreen - 非活动期间页面
- messageEmptyScreen - 空数据页面

## 最佳实践

### 1. 路由命名规范

- 使用小写字母和下划线分隔
- 以 `_screen` 结尾表示完整页面
- 以 `_dialog` 结尾表示对话框
- 以 `_bottomsheet` 结尾表示底部弹窗
- 以 `_page` 结尾表示Tab页或内嵌页

### 2. 导航建议

- 使用 `NavigatorService` 统一管理导航
- 登录相关页面使用 `pushReplacementNamed` 避免返回
- 支付成功页面使用 `pushNamedAndRemoveUntil` 清空栈
- 传递复杂参数时使用 Map 格式
- 处理返回值时注意类型安全

### 3. 性能优化

- 合理使用页面缓存
- 避免在路由中传递大对象
- 及时释放不需要的页面资源
- 使用懒加载优化启动性能

### 4. 错误处理

- 提供友好的错误页面
- 处理参数缺失情况
- 记录导航错误日志
- 提供默认路由处理

## 路由测试

### 测试要点

1. **路由定义完整性** - 确保所有页面都有对应的路由
2. **参数传递正确性** - 验证参数传递和接收
3. **登录拦截功能** - 测试需要登录的页面跳转
4. **返回逻辑处理** - 验证页面返回行为
5. **错误页面展示** - 测试异常情况的处理

## 总结

本文档详细介绍了 JBET88 Flutter 应用的路由配置，包括：

1. **清晰的路由架构** - 按功能模块组织的路由结构
2. **完整的路由列表** - 所有页面的路由定义和映射
3. **详细的导航逻辑** - 首页导航结构和跳转关系
4. **实用的代码示例** - 参数传递和接收示例
5. **最佳实践指南** - 命名规范和开发建议

通过遵循这些配置和规范，可以构建一个清晰、可维护的 Flutter 路由系统，为用户提供流畅的导航体验。 