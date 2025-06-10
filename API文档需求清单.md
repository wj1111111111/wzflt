# JBET88 Flutter 项目 API 文档需求清单

## 文档现状
- ✅ 已有：BBW 活动服务 API 文档（30,686行）
- ❌ 缺失：其他核心服务 API 文档

## API 文档需求列表

### 1. 🔐 用户认证服务 API（优先级：高）

#### 基础认证
| 接口功能   | 对应页面                                  | 预估接口路径               |
| ---------- | ----------------------------------------- | -------------------------- |
| 用户登录   | log_in_screen                             | POST /auth/login           |
| 用户注册   | register_screen, register_one_screen      | POST /auth/register        |
| 验证手机号 | third_party_login_complete_info_screen    | POST /auth/verify/phone    |
| 忘记密码   | forgot_password_mobile_payment_screen     | POST /auth/forgot-password |
| 重置密码   | forgot_password_mobile_payment_one_screen | POST /auth/reset-password  |
| 修改密码   | settings_change_password_page             | POST /auth/change-password |
| 退出登录   | -                                         | POST /auth/logout          |
| 刷新Token  | -                                         | POST /auth/refresh         |

#### 第三方登录
| 接口功能           | 对应页面                                   | 预估接口路径                |
| ------------------ | ------------------------------------------ | --------------------------- |
| 第三方登录授权     | third_party_login_complete_info_screen     | POST /auth/oauth/{provider} |
| 完善第三方登录信息 | third_party_login_complete_info_one_screen | POST /auth/oauth/complete   |

### 2. 💰 钱包/支付服务 API（优先级：高）

#### 充值相关
| 接口功能         | 对应页面                              | 预估接口路径                          |
| ---------------- | ------------------------------------- | ------------------------------------- |
| 获取充值方式列表 | wallet_deposit_dialog                 | GET /payment/deposit/methods          |
| 创建充值订单     | wallet_deposit_one_dialog             | POST /payment/deposit/create          |
| 充值订单状态查询 | deposit_info_3rd_party_success_screen | GET /payment/deposit/status/{orderId} |
| 充值记录列表     | top_up_records_screen                 | GET /payment/deposit/history          |
| 充值记录筛选     | top_up_records_category_filter_screen | GET /payment/deposit/history/filter   |

#### 提现相关
| 接口功能         | 对应页面                                 | 预估接口路径                  |
| ---------------- | ---------------------------------------- | ----------------------------- |
| 获取提现配置     | wallet_withdraw_dialog                   | GET /payment/withdraw/config  |
| 创建提现申请     | wallet_withdraw_dialog                   | POST /payment/withdraw/create |
| 提现记录列表     | withdrawal_records_screen                | GET /payment/withdraw/history |
| 提现流水要求查询 | wallet_withdraw_wager_requirement_screen | GET /payment/withdraw/wager   |

#### 银行卡管理
| 接口功能       | 对应页面                               | 预估接口路径                        |
| -------------- | -------------------------------------- | ----------------------------------- |
| 获取银行卡列表 | bind_crypto_settings_card_list_screen  | GET /payment/cards                  |
| 添加银行卡     | add_top_up_account_bank_account_screen | POST /payment/cards/add             |
| 删除银行卡     | -                                      | DELETE /payment/cards/{cardId}      |
| 设置默认卡     | -                                      | PUT /payment/cards/{cardId}/default |

#### USDT/加密货币
| 接口功能     | 对应页面                                 | 预估接口路径               |
| ------------ | ---------------------------------------- | -------------------------- |
| 绑定USDT地址 | usdt_bind_never_set_transaction_page     | POST /payment/crypto/bind  |
| 获取USDT配置 | bind_crypto_never_set_transaction_screen | GET /payment/crypto/config |

### 3. 🎮 游戏服务 API（优先级：高）

#### 游戏列表和启动
| 接口功能     | 对应页面                                 | 预估接口路径                   |
| ------------ | ---------------------------------------- | ------------------------------ |
| 获取游戏分类 | home_one_screen                          | GET /game/categories           |
| 获取游戏列表 | home_single_game_entry_popup_bottomsheet | GET /game/list                 |
| 游戏搜索     | -                                        | GET /game/search               |
| 获取游戏详情 | -                                        | GET /game/{gameId}             |
| 启动游戏     | front_screen                             | POST /game/{gameId}/launch     |
| 收藏游戏     | -                                        | POST /game/{gameId}/favorite   |
| 取消收藏     | -                                        | DELETE /game/{gameId}/favorite |
| 获取收藏列表 | -                                        | GET /game/favorites            |

#### 游戏记录
| 接口功能 | 对应页面               | 预估接口路径              |
| -------- | ---------------------- | ------------------------- |
| 投注历史 | betting_history_screen | GET /game/betting/history |
| 游戏统计 | -                      | GET /game/statistics      |

### 4. 👤 用户中心服务 API（优先级：中）

#### 个人信息
| 接口功能     | 对应页面                       | 预估接口路径       |
| ------------ | ------------------------------ | ------------------ |
| 获取用户信息 | personal_center_screen         | GET /user/profile  |
| 更新个人信息 | settings_personal_info_screen  | PUT /user/profile  |
| 获取VIP信息  | vip_screen                     | GET /user/vip/info |
| 获取账户余额 | my_personal_center_zero_screen | GET /user/balance  |

#### 团队/代理
| 接口功能         | 对应页面                  | 预估接口路径            |
| ---------------- | ------------------------- | ----------------------- |
| 获取团队信息     | team_members_screen       | GET /user/team/info     |
| 获取团队成员列表 | team_members_popup_dialog | GET /user/team/members  |
| 获取推广链接     | referral_share_rules_page | GET /user/referral/link |

### 5. 📋 优惠券/任务系统 API（优先级：中）

| 接口功能       | 对应页面                             | 预估接口路径                  |
| -------------- | ------------------------------------ | ----------------------------- |
| 获取优惠券列表 | coupon_center_my_vouchers_page       | GET /coupon/list              |
| 领取优惠券     | coupon_center_voucher_claimed_dialog | POST /coupon/{couponId}/claim |
| 获取任务列表   | home_tasks_screen                    | GET /task/list                |
| 完成任务       | home_tasks_default_page_screen       | POST /task/{taskId}/complete  |
| 任务记录       | coupon_center_task_records_screen    | GET /task/history             |

### 6. 📢 消息/公告服务 API（优先级：中）

| 接口功能     | 对应页面                | 预估接口路径              |
| ------------ | ----------------------- | ------------------------- |
| 获取消息列表 | message_dialog          | GET /message/list         |
| 标记已读     | -                       | PUT /message/{msgId}/read |
| 获取公告     | home_popup_text_dialog  | GET /announcement/list    |
| 获取弹窗配置 | home_popup_image_dialog | GET /popup/config         |

### 7. 🎁 签到系统 API（优先级：低）

| 接口功能     | 对应页面                           | 预估接口路径         |
| ------------ | ---------------------------------- | -------------------- |
| 获取签到配置 | check_in_screen                    | GET /checkin/config  |
| 执行签到     | check_in_day_4_check_in_screen     | POST /checkin/sign   |
| 补签         | check_in_make_up_check_in_screen   | POST /checkin/makeup |
| 签到记录     | check_in_already_checked_in_screen | GET /checkin/history |

### 8. 🎰 抽奖/转盘 API（优先级：低）

| 接口功能     | 对应页面                             | 预估接口路径       |
| ------------ | ------------------------------------ | ------------------ |
| 获取转盘配置 | wheel_spin_main_hidden_levels_screen | GET /wheel/config  |
| 执行抽奖     | spin_panel_screen                    | POST /wheel/spin   |
| 抽奖记录     | wheel_spin_main_my_withdrawal_screen | GET /wheel/history |
| 砸金蛋       | smash_the_golden_egg_screen          | POST /egg/smash    |

### 9. ❓ 帮助/客服系统 API（优先级：低）

| 接口功能     | 对应页面                           | 预估接口路径          |
| ------------ | ---------------------------------- | --------------------- |
| 获取帮助分类 | help_screen                        | GET /help/categories  |
| 获取常见问题 | -                                  | GET /help/faq         |
| 提交反馈     | feedback_box_success_prompt_screen | POST /feedback/submit |
| 获取客服信息 | -                                  | GET /support/info     |

### 10. 🔧 系统配置 API（优先级：高）

| 接口功能     | 说明                              | 预估接口路径            |
| ------------ | --------------------------------- | ----------------------- |
| 获取系统配置 | APP启动配置、版本信息等           | GET /system/config      |
| 获取维护状态 | maintenance_page_3_to_4_am_screen | GET /system/maintenance |
| 获取字典数据 | 各种下拉选项、枚举值              | GET /system/dict        |
| 上传文件     | 头像、身份认证等                  | POST /file/upload       |

## 接口规范要求

### 1. 统一响应格式
```json
{
  "code": 0,
  "data": {},
  "message": "success",
  "isSuccess": true
}
```

### 2. 统一错误码
- 1xxx: 系统错误
- 2xxx: 认证错误
- 3xxx: 业务错误
- 4xxx: 参数错误

### 3. 认证机制
- Header: Authorization: Bearer {token}
- Token 过期自动刷新机制
- 设备信息上报

### 4. 请求规范
- Content-Type: application/json
- 时间戳格式: ISO 8601
- 分页参数: page, size
- 排序参数: sort, order

## 优先级说明

- **高**：核心功能，影响用户登录、充值、游戏等主要流程
- **中**：增值功能，提升用户体验但不影响核心流程
- **低**：辅助功能，可后期迭代

## 下一步行动

1. **联系后端团队**获取缺失的 API 文档
2. **使用网络抓包**工具分析现有 Web/App 的接口
3. **创建 Mock API** 服务，先行开发前端功能
4. **逐步对接**真实 API，确保功能完整性 