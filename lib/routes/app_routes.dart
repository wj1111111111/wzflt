import 'package:flutter/material.dart';
import '../presentation/achievement_rewards_claim_popup_screen/achievement_rewards_claim_popup_screen.dart';
import '../presentation/achievement_rewards_screen/achievement_rewards_screen.dart';
import '../presentation/add_top_up_account_bank_account_screen/add_top_up_account_bank_account_screen.dart';
import '../presentation/agent_leaderboard_detail_view_screen/agent_leaderboard_detail_view_screen.dart';
import '../presentation/agent_leaderboard_history_screen/agent_leaderboard_history_screen.dart';
import '../presentation/agent_leaderboard_screen/agent_leaderboard_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/batch_bonus_deposit_open_treasure_screen/batch_bonus_deposit_open_treasure_screen.dart';
import '../presentation/betting_history_screen/betting_history_screen.dart';
import '../presentation/bind_crypto_never_set_transaction_screen/bind_crypto_never_set_transaction_screen.dart';
import '../presentation/bind_crypto_settings_card_list_screen/bind_crypto_settings_card_list_screen.dart';
import '../presentation/bind_never_set_transaction_password_screen/bind_never_set_transaction_password_screen.dart';
import '../presentation/birthday_bonus_screen/birthday_bonus_screen.dart';
import '../presentation/bonus_details_achievement_screen/bonus_details_achievement_screen.dart';
import '../presentation/bonus_details_added_trial_money_screen/bonus_details_added_trial_money_screen.dart';
import '../presentation/bonus_details_default_screen/bonus_details_default_screen.dart';
import '../presentation/bonus_details_deposit_bonus_screen/bonus_details_deposit_bonus_screen.dart';
import '../presentation/bonus_details_qualified_user_screen/bonus_details_qualified_user_screen.dart';
import '../presentation/bonus_details_screen/bonus_details_screen.dart';
import '../presentation/check_in_already_checked_in_screen/check_in_already_checked_in_screen.dart';
import '../presentation/check_in_day_4_check_in_screen/check_in_day_4_check_in_screen.dart';
import '../presentation/check_in_day_5_check_in_screen/check_in_day_5_check_in_screen.dart';
import '../presentation/check_in_free_make_up_free_check_in_screen/check_in_free_make_up_free_check_in_screen.dart';
import '../presentation/check_in_make_up_check_in_screen/check_in_make_up_check_in_screen.dart';
import '../presentation/check_in_screen/check_in_screen.dart';
import '../presentation/coupon_center_my_vouchers_no_screen/coupon_center_my_vouchers_no_screen.dart';
import '../presentation/coupon_center_task_records_one_screen/coupon_center_task_records_one_screen.dart';
import '../presentation/coupon_center_task_records_screen/coupon_center_task_records_screen.dart';
import '../presentation/coupon_center_voucher_won_screen/coupon_center_voucher_won_screen.dart';
import '../presentation/coupon_system_condition_display_screen/coupon_system_condition_display_screen.dart';
import '../presentation/daily_cumulative_deposit_event_screen/daily_cumulative_deposit_event_screen.dart';
import '../presentation/deposit_info_3rd_party_success_one_screen/deposit_info_3rd_party_success_one_screen.dart';
import '../presentation/deposit_info_3rd_party_success_screen/deposit_info_3rd_party_success_screen.dart';
import '../presentation/download_details_pc_screen/download_details_pc_screen.dart';
import '../presentation/egg_smash_popup_screen/egg_smash_popup_screen.dart';
import '../presentation/feedback_box_success_prompt_screen/feedback_box_success_prompt_screen.dart';
import '../presentation/forgot_password_mobile_payment_one_screen/forgot_password_mobile_payment_one_screen.dart';
import '../presentation/forgot_password_mobile_payment_screen/forgot_password_mobile_payment_screen.dart';
import '../presentation/front_screen/front_screen.dart';
import '../presentation/help_screen/help_screen.dart';
import '../presentation/home_claim_success_screen/home_claim_success_screen.dart';
import '../presentation/home_one_screen/home_one_screen.dart';
import '../presentation/home_seven_items_screen/home_seven_items_screen.dart';
import '../presentation/home_sms_popup_screen/home_sms_popup_screen.dart';
import '../presentation/home_spin_the_wheel_popup_screen/home_spin_the_wheel_popup_screen.dart';
import '../presentation/home_tasks_default_page_screen/home_tasks_default_page_screen.dart';
import '../presentation/home_tasks_screen/home_tasks_screen.dart';
import '../presentation/home_wheel_spin_screen/home_wheel_spin_screen.dart';
import '../presentation/information_four_screen/information_four_screen.dart';
import '../presentation/information_one_screen/information_one_screen.dart';
import '../presentation/information_screen/information_screen.dart';
import '../presentation/information_three_screen/information_three_screen.dart';
import '../presentation/information_two_screen/information_two_screen.dart';
import '../presentation/level_bonus_claimed_screen/level_bonus_claimed_screen.dart';
import '../presentation/level_bonus_screen/level_bonus_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/lottery_withdrawal_pending_review_screen/lottery_withdrawal_pending_review_screen.dart';
import '../presentation/maintenance_page_3_to_4_am_screen/maintenance_page_3_to_4_am_screen.dart';
import '../presentation/message_empty_screen/message_empty_screen.dart';
import '../presentation/monthly_salary_one_screen/monthly_salary_one_screen.dart';
import '../presentation/monthly_salary_screen/monthly_salary_screen.dart';
import '../presentation/my_personal_center_zero_one_screen/my_personal_center_zero_one_screen.dart';
import '../presentation/my_personal_center_zero_screen/my_personal_center_zero_screen.dart';
import '../presentation/network_error_screen/network_error_screen.dart';
import '../presentation/not_during_event_period_screen/not_during_event_period_screen.dart';
import '../presentation/not_winner_popup_screen/not_winner_popup_screen.dart';
import '../presentation/personal_center_claimed_bonus_screen/personal_center_claimed_bonus_screen.dart';
import '../presentation/personal_center_screen/personal_center_screen.dart';
import '../presentation/ph23_daily_first_entry_popup_screen/ph23_daily_first_entry_popup_screen.dart';
import '../presentation/ph23_new_popup_register_claim_screen/ph23_new_popup_register_claim_screen.dart';
import '../presentation/popup_claim_one_screen/popup_claim_one_screen.dart';
import '../presentation/popup_claim_screen/popup_claim_screen.dart';
import '../presentation/popup_screen/popup_screen.dart';
import '../presentation/promotions_detail_screen/promotions_detail_screen.dart';
import '../presentation/promotions_list_screen/promotions_list_screen.dart';
import '../presentation/red_envelope_popup_screen/red_envelope_popup_screen.dart';
import '../presentation/red_envelope_screen/red_envelope_screen.dart';
import '../presentation/referral_bring_a_friend_screen/referral_bring_a_friend_screen.dart';
import '../presentation/referral_level_2_intermediate_screen/referral_level_2_intermediate_screen.dart';
import '../presentation/referral_logged_in_screen/referral_logged_in_screen.dart';
import '../presentation/referral_not_logged_in_screen/referral_not_logged_in_screen.dart';
import '../presentation/referral_top_level_agent_status_screen/referral_top_level_agent_status_screen.dart';
import '../presentation/register_click_agreement_text_screen/register_click_agreement_text_screen.dart';
import '../presentation/register_one_screen/register_one_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/registration_success_guide_screen/registration_success_guide_screen.dart';
import '../presentation/report_data_add_ranking_bonus_screen/report_data_add_ranking_bonus_screen.dart';
import '../presentation/report_data_summary_date_filter_one_screen/report_data_summary_date_filter_one_screen.dart';
import '../presentation/report_data_summary_loading_screen/report_data_summary_loading_screen.dart';
import '../presentation/reward_records_screen/reward_records_screen.dart';
import '../presentation/senior_mentoring_advanced_one_screen/senior_mentoring_advanced_one_screen.dart';
import '../presentation/senior_mentoring_highest_level_screen/senior_mentoring_highest_level_screen.dart';
import '../presentation/senior_to_new_highest_level_one_screen/senior_to_new_highest_level_one_screen.dart';
import '../presentation/settings_personal_info_screen/settings_personal_info_screen.dart';
import '../presentation/share_page_one_screen/share_page_one_screen.dart';
import '../presentation/smash_the_golden_egg_screen/smash_the_golden_egg_screen.dart';
import '../presentation/spin_panel_screen/spin_panel_screen.dart';
import '../presentation/spin_slice_files_one_screen/spin_slice_files_one_screen.dart';
import '../presentation/spin_slice_files_screen/spin_slice_files_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/state_1_prize_not_claimed_this_screen/state_1_prize_not_claimed_this_screen.dart';
import '../presentation/state_2_this_round_ongoing_screen/state_2_this_round_ongoing_screen.dart';
import '../presentation/state_3_no_prize_won_this_round_screen/state_3_no_prize_won_this_round_screen.dart';
import '../presentation/state_4_not_a_paid_member_screen/state_4_not_a_paid_member_screen.dart';
import '../presentation/team_members_screen/team_members_screen.dart';
import '../presentation/third_party_login_complete_info_one_screen/third_party_login_complete_info_one_screen.dart';
import '../presentation/third_party_login_complete_info_screen/third_party_login_complete_info_screen.dart';
import '../presentation/top_up_promo_popup_screen/top_up_promo_popup_screen.dart';
import '../presentation/top_up_records_category_filter_screen/top_up_records_category_filter_screen.dart';
import '../presentation/top_up_records_payment_type_filter_screen/top_up_records_payment_type_filter_screen.dart';
import '../presentation/top_up_records_screen/top_up_records_screen.dart';
import '../presentation/top_up_records_time_filter_screen/top_up_records_time_filter_screen.dart';
import '../presentation/top_up_records_withdrawal_rejected_screen/top_up_records_withdrawal_rejected_screen.dart';
import '../presentation/transaction_deposit_one_screen/transaction_deposit_one_screen.dart';
import '../presentation/transaction_deposit_screen/transaction_deposit_screen.dart';
import '../presentation/transaction_deposit_two_screen/transaction_deposit_two_screen.dart';
import '../presentation/treasure_box_confirm_screen/treasure_box_confirm_screen.dart';
import '../presentation/treasure_box_popup_screen/treasure_box_popup_screen.dart';
import '../presentation/trial_money_main_after_participating_screen/trial_money_main_after_participating_screen.dart';
import '../presentation/trial_money_personal_center_entry_screen/trial_money_personal_center_entry_screen.dart';
import '../presentation/trial_money_reward_popup_screen/trial_money_reward_popup_screen.dart';
import '../presentation/vip_daily_salary_daily_wage_rules_screen/vip_daily_salary_daily_wage_rules_screen.dart';
import '../presentation/vip_daily_wage_screen/vip_daily_wage_screen.dart';
import '../presentation/vip_screen/vip_screen.dart';
import '../presentation/wallet_choose_amount_style_screen/wallet_choose_amount_style_screen.dart';
import '../presentation/wallet_top_up_records_payment_screen/wallet_top_up_records_payment_screen.dart';
import '../presentation/wallet_top_up_records_time_screen/wallet_top_up_records_time_screen.dart';
import '../presentation/wallet_top_up_records_withdrawal_screen/wallet_top_up_records_withdrawal_screen.dart';
import '../presentation/wallet_withdraw_wager_met_screen/wallet_withdraw_wager_met_screen.dart';
import '../presentation/wallet_withdraw_wager_requirement_screen/wallet_withdraw_wager_requirement_screen.dart';
import '../presentation/weekly_rebate_eligible_screen/weekly_rebate_eligible_screen.dart';
import '../presentation/weekly_salary_screen/weekly_salary_screen.dart';
import '../presentation/weekly_wage_claimed_screen/weekly_wage_claimed_screen.dart';
import '../presentation/wheel_popup_screen/wheel_popup_screen.dart';
import '../presentation/wheel_result_extra_spins_screen/wheel_result_extra_spins_screen.dart';
import '../presentation/wheel_result_help_bonus_random_screen/wheel_result_help_bonus_random_screen.dart';
import '../presentation/wheel_result_won_cash_one_screen/wheel_result_won_cash_one_screen.dart';
import '../presentation/wheel_result_won_cash_screen/wheel_result_won_cash_screen.dart';
import '../presentation/wheel_spin_main_hidden_levels_screen/wheel_spin_main_hidden_levels_screen.dart';
import '../presentation/wheel_spin_main_my_withdrawal_screen/wheel_spin_main_my_withdrawal_screen.dart';
import '../presentation/wheel_spin_main_no_withdrawal_screen/wheel_spin_main_no_withdrawal_screen.dart';
import '../presentation/wheel_spin_main_rules_screen/wheel_spin_main_rules_screen.dart';
import '../presentation/withdrawal_records_screen/withdrawal_records_screen.dart';

class AppRoutes {
  static const String referralBringAFriendScreen =
      '/referral_bring_a_friend_screen';

  static const String ph23DailyFirstEntryPopupScreen =
      '/ph23_daily_first_entry_popup_screen';

  static const String referralNotLoggedInScreen =
      '/referral_not_logged_in_screen';

  static const String referralLoggedInScreen = '/referral_logged_in_screen';

  static const String referralLevel2IntermediateScreen =
      '/referral_level_2_intermediate_screen';

  static const String seniorMentoringAdvancedOneScreen =
      '/senior_mentoring_advanced_one_screen';

  static const String seniorToNewHighestLevelOneScreen =
      '/senior_to_new_highest_level_one_screen';

  static const String seniorMentoringHighestLevelScreen =
      '/senior_mentoring_highest_level_screen';

  static const String referralTopLevelAgentStatusScreen =
      '/referral_top_level_agent_status_screen';

  static const String achievementRewardsScreen = '/achievement_rewards_screen';

  static const String achievementRewardsClaimPopupScreen =
      '/achievement_rewards_claim_popup_screen';

  static const String splashScreen = '/splash_screen';

  static const String maintenancePage3To4AmScreen =
      '/maintenance_page_3_to_4_am_screen';

  static const String networkErrorScreen = '/network_error_screen';

  static const String vipScreen = '/vip_screen';

  static const String levelBonusScreen = '/level_bonus_screen';

  static const String monthlySalaryScreen = '/monthly_salary_screen';

  static const String birthdayBonusScreen = '/birthday_bonus_screen';

  static const String levelBonusClaimedScreen = '/level_bonus_claimed_screen';

  static const String weeklyWageClaimedScreen = '/weekly_wage_claimed_screen';

  static const String weeklySalaryScreen = '/weekly_salary_screen';

  static const String weeklyRebateEligibleScreen =
      '/weekly_rebate_eligible_screen';

  static const String vipDailyWageScreen = '/vip_daily_wage_screen';

  static const String vipDailySalaryDailyWageRulesScreen =
      '/vip_daily_salary_daily_wage_rules_screen';

  static const String monthlySalaryOneScreen = '/monthly_salary_one_screen';

  static const String personalCenterScreen = '/personal_center_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String promotionsListScreen = '/promotions_list_screen';

  static const String promotionsDetailScreen = '/promotions_detail_screen';

  static const String popupClaimScreen = '/popup_claim_screen';

  static const String agentLeaderboardScreen = '/agent_leaderboard_screen';

  static const String agentTabPage = '/agent_tab_page';

  static const String agentLeaderboardDetailViewScreen =
      '/agent_leaderboard_detail_view_screen';

  static const String agentLeaderboardHistoryScreen =
      '/agent_leaderboard_history_screen';

  static const String myPersonalCenterZeroScreen =
      '/my_personal_center_zero_screen';

  static const String myPersonalCenterZeroOneScreen =
      '/my_personal_center_zero_one_screen';

  static const String teamMembersScreen = '/team_members_screen';

  static const String teamTabPage = '/team_tab_page';

  static const String reportDataAddRankingBonusScreen =
      '/report_data_add_ranking_bonus_screen';

  static const String reportdataaddTabPage = '/reportdataadd_tab_page';

  static const String reportDataSummaryLoadingScreen =
      '/report_data_summary_loading_screen';

  static const String reportdataTabPage = '/reportdata_tab_page';

  static const String reportDataSummaryDateFilterOneScreen =
      '/report_data_summary_date_filter_one_screen';

  static const String scrollviewTabPage = '/scrollview_tab_page';

  static const String bonusDetailsDepositBonusScreen =
      '/bonus_details_deposit_bonus_screen';

  static const String scrollviewTab1Page = '/scrollview_tab1_page';

  static const String bonusDetailsQualifiedUserScreen =
      '/bonus_details_qualified_user_screen';

  static const String scrollviewTab2Page = '/scrollview_tab2_page';

  static const String bonusDetailsAchievementScreen =
      '/bonus_details_achievement_screen';

  static const String scrollviewTab3Page = '/scrollview_tab3_page';

  static const String bonusDetailsDefaultScreen =
      '/bonus_details_default_screen';

  static const String scrollviewTab4Page = '/scrollview_tab4_page';

  static const String referralShareRulesPage = '/referral_share_rules_page';

  static const String popupScreen = '/popup_screen';

  static const String frontScreen = '/front_screen';

  static const String checkInScreen = '/check_in_screen';

  static const String downloadDetailsPcScreen = '/download_details_pc_screen';

  static const String checkInAlreadyCheckedInScreen =
      '/check_in_already_checked_in_screen';

  static const String checkInMakeUpCheckInScreen =
      '/check_in_make_up_check_in_screen';

  static const String checkInDay4CheckInScreen =
      '/check_in_day_4_check_in_screen';

  static const String checkInDay5CheckInScreen =
      '/check_in_day_5_check_in_screen';

  static const String checkInFreeMakeUpFreeCheckInScreen =
      '/check_in_free_make_up_free_check_in_screen';

  static const String logInScreen = '/log_in_screen';

  static const String registerScreen = '/register_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String registerClickAgreementTextScreen =
      '/register_click_agreement_text_screen';

  static const String registrationSuccessGuideScreen =
      '/registration_success_guide_screen';

  static const String disclaimerAgreementPage = '/disclaimer_agreement_page';

  static const String thirdPartyLoginCompleteInfoScreen =
      '/third_party_login_complete_info_screen';

  static const String thirdPartyLoginCompleteInfoOneScreen =
      '/third_party_login_complete_info_one_screen';

  static const String ph23NewPopupRegisterClaimScreen =
      '/ph23_new_popup_register_claim_screen';

  static const String notDuringEventPeriodScreen =
      '/not_during_event_period_screen';

  static const String state1PrizeNotClaimedThisScreen =
      '/state_1_prize_not_claimed_this_screen';

  static const String state2ThisRoundOngoingScreen =
      '/state_2_this_round_ongoing_screen';

  static const String state3NoPrizeWonThisRoundScreen =
      '/state_3_no_prize_won_this_round_screen';

  static const String state4NotAPaidMemberScreen =
      '/state_4_not_a_paid_member_screen';

  static const String homeWheelSpinScreen = '/home_wheel_spin_screen';

  static const String wheelSpinMainHiddenLevelsScreen =
      '/wheel_spin_main_hidden_levels_screen';

  static const String wheelspinmainTabPage = '/wheelspinmain_tab_page';

  static const String lotteryWithdrawalPendingReviewScreen =
      '/lottery_withdrawal_pending_review_screen';

  static const String wheelSpinMainMyWithdrawalScreen =
      '/wheel_spin_main_my_withdrawal_screen';

  static const String wheelSpinMainNoWithdrawalScreen =
      '/wheel_spin_main_no_withdrawal_screen';

  static const String rewardRecordsScreen = '/reward_records_screen';

  static const String wheelSpinMainRulesScreen =
      '/wheel_spin_main_rules_screen';

  static const String walletChooseAmountStyleScreen =
      '/wallet_choose_amount_style_screen';

  static const String depositInfo3rdPartySuccessScreen =
      '/deposit_info_3rd_party_success_screen';

  static const String walletTopUpRecordsPaymentScreen =
      '/wallet_top_up_records_payment_screen';

  static const String walletTopUpRecordsTimeScreen =
      '/wallet_top_up_records_time_screen';

  static const String depositInfo3rdPartySuccessOneScreen =
      '/deposit_info_3rd_party_success_one_screen';

  static const String walletTopUpRecordsWithdrawalScreen =
      '/wallet_top_up_records_withdrawal_screen';

  static const String topUpPromoPopupScreen = '/top_up_promo_popup_screen';

  static const String topUpPromoPopupInitialPage =
      '/top_up_promo_popup_initial_page';

  static const String homeSevenItemsScreen = '/home_seven_items_screen';

  static const String homeTasksScreen = '/home_tasks_screen';

  static const String homeTasksDefaultPageScreen =
      '/home_tasks_default_page_screen';

  static const String wheelResultHelpBonusRandomScreen =
      '/wheel_result_help_bonus_random_screen';

  static const String wheelResultExtraSpinsScreen =
      '/wheel_result_extra_spins_screen';

  static const String wheelResultWonCashScreen =
      '/wheel_result_won_cash_screen';

  static const String wheelResultWonCashOneScreen =
      '/wheel_result_won_cash_one_screen';

  static const String homeSpinTheWheelPopupScreen =
      '/home_spin_the_wheel_popup_screen';

  static const String sharePageOneScreen = '/share_page_one_screen';

  static const String bindNeverSetTransactionPasswordScreen =
      '/bind_never_set_transaction_password_screen';

  static const String bindneversetTabPage = '/bindneverset_tab_page';

  static const String usdtBindNeverSetTransactionPage =
      '/usdt_bind_never_set_transaction_page';

  static const String bindCryptoSettingsCardListScreen =
      '/bind_crypto_settings_card_list_screen';

  static const String bindcryptoTabPage = '/bindcrypto_tab_page';

  static const String addTopUpAccountBankAccountScreen =
      '/add_top_up_account_bank_account_screen';

  static const String walletWithdrawWagerRequirementScreen =
      '/wallet_withdraw_wager_requirement_screen';

  static const String walletWithdrawWagerMetScreen =
      '/wallet_withdraw_wager_met_screen';

  static const String bindCryptoNeverSetTransactionScreen =
      '/bind_crypto_never_set_transaction_screen';

  static const String dailyCumulativeDepositEventScreen =
      '/daily_cumulative_deposit_event_screen';

  static const String bettingHistoryScreen = '/betting_history_screen';

  static const String transactionDepositScreen = '/transaction_deposit_screen';

  static const String transactionDepositOneScreen =
      '/transaction_deposit_one_screen';

  static const String transactionDepositTwoScreen =
      '/transaction_deposit_two_screen';

  static const String topUpRecordsScreen = '/top_up_records_screen';

  static const String topUpRecordsCategoryFilterScreen =
      '/top_up_records_category_filter_screen';

  static const String topUpRecordsPaymentTypeFilterScreen =
      '/top_up_records_payment_type_filter_screen';

  static const String topUpRecordsTimeFilterScreen =
      '/top_up_records_time_filter_screen';

  static const String topUpRecordsWithdrawalRejectedScreen =
      '/top_up_records_withdrawal_rejected_screen';

  static const String withdrawalRecordsScreen = '/withdrawal_records_screen';

  static const String trialMoneyMainAfterParticipatingScreen =
      '/trial_money_main_after_participating_screen';

  static const String popupClaimOneScreen = '/popup_claim_one_screen';

  static const String trialMoneyPersonalCenterEntryScreen =
      '/trial_money_personal_center_entry_screen';

  static const String trialMoneyRewardPopupScreen =
      '/trial_money_reward_popup_screen';

  static const String bonusDetailsAddedTrialMoneyScreen =
      '/bonus_details_added_trial_money_screen';

  static const String batchBonusDepositOpenTreasureScreen =
      '/batch_bonus_deposit_open_treasure_screen';

  static const String homeClaimSuccessScreen = '/home_claim_success_screen';

  static const String homeSmsPopupScreen = '/home_sms_popup_screen';

  static const String informationScreen = '/information_screen';

  static const String messageEmptyScreen = '/message_empty_screen';

  static const String informationOneScreen = '/information_one_screen';

  static const String helpScreen = '/help_screen';

  static const String personalCenterClaimedBonusScreen =
      '/personal_center_claimed_bonus_screen';

  static const String bonusDetailsScreen = '/bonus_details_screen';

  static const String feedbackBoxSuccessPromptScreen =
      '/feedback_box_success_prompt_screen';

  static const String informationTwoScreen = '/information_two_screen';

  static const String informationThreeScreen = '/information_three_screen';

  static const String informationFourScreen = '/information_four_screen';

  static const String settingsPersonalInfoScreen =
      '/settings_personal_info_screen';

  static const String settingsTabPage = '/settings_tab_page';

  static const String settingsAddAccountPage = '/settings_add_account_page';

  static const String settingsChangePasswordPage =
      '/settings_change_password_page';

  static const String forgotPasswordMobilePaymentScreen =
      '/forgot_password_mobile_payment_screen';

  static const String forgotPasswordMobilePaymentOneScreen =
      '/forgot_password_mobile_payment_one_screen';

  static const String couponCenterVoucherWonScreen =
      '/coupon_center_voucher_won_screen';

  static const String couponcenterTabPage = '/couponcenter_tab_page';

  static const String couponCenterMyVouchersPage =
      '/coupon_center_my_vouchers_page';

  static const String couponCenterTaskRecordsScreen =
      '/coupon_center_task_records_screen';

  static const String couponCenterMyVouchersNoScreen =
      '/coupon_center_my_vouchers_no_screen';

  static const String couponcenterTab1Page = '/couponcenter_tab1_page';

  static const String couponCenterTaskRecordsOneScreen =
      '/coupon_center_task_records_one_screen';

  static const String spinSliceFilesScreen = '/spin_slice_files_screen';

  static const String spinSliceFilesOneScreen = '/spin_slice_files_one_screen';

  static const String redEnvelopeScreen = '/red_envelope_screen';

  static const String treasureBoxConfirmScreen = '/treasure_box_confirm_screen';

  static const String spinPanelScreen = '/spin_panel_screen';

  static const String smashTheGoldenEggScreen = '/smash_the_golden_egg_screen';

  static const String treasureBoxPopupScreen = '/treasure_box_popup_screen';

  static const String redEnvelopePopupScreen = '/red_envelope_popup_screen';

  static const String eggSmashPopupScreen = '/egg_smash_popup_screen';

  static const String wheelPopupScreen = '/wheel_popup_screen';

  static const String notWinnerPopupScreen = '/not_winner_popup_screen';

  static const String couponSystemConditionDisplayScreen =
      '/coupon_system_condition_display_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
    referralBringAFriendScreen: ReferralBringAFriendScreen.builder,
    ph23DailyFirstEntryPopupScreen: Ph23DailyFirstEntryPopupScreen.builder,
    referralNotLoggedInScreen: ReferralNotLoggedInScreen.builder,
    referralLoggedInScreen: ReferralLoggedInScreen.builder,
    referralLevel2IntermediateScreen: ReferralLevel2IntermediateScreen.builder,
    seniorMentoringAdvancedOneScreen: SeniorMentoringAdvancedOneScreen.builder,
    seniorToNewHighestLevelOneScreen: SeniorToNewHighestLevelOneScreen.builder,
    seniorMentoringHighestLevelScreen:
        SeniorMentoringHighestLevelScreen.builder,
    referralTopLevelAgentStatusScreen:
        ReferralTopLevelAgentStatusScreen.builder,
    achievementRewardsScreen: AchievementRewardsScreen.builder,
    achievementRewardsClaimPopupScreen:
        AchievementRewardsClaimPopupScreen.builder,
    splashScreen: SplashScreen.builder,
    maintenancePage3To4AmScreen: MaintenancePage3To4AmScreen.builder,
    networkErrorScreen: NetworkErrorScreen.builder,
    vipScreen: VipScreen.builder,
    levelBonusScreen: LevelBonusScreen.builder,
    monthlySalaryScreen: MonthlySalaryScreen.builder,
    birthdayBonusScreen: BirthdayBonusScreen.builder,
    levelBonusClaimedScreen: LevelBonusClaimedScreen.builder,
    weeklyWageClaimedScreen: WeeklyWageClaimedScreen.builder,
    weeklySalaryScreen: WeeklySalaryScreen.builder,
    weeklyRebateEligibleScreen: WeeklyRebateEligibleScreen.builder,
    vipDailyWageScreen: VipDailyWageScreen.builder,
    vipDailySalaryDailyWageRulesScreen:
        VipDailySalaryDailyWageRulesScreen.builder,
    monthlySalaryOneScreen: MonthlySalaryOneScreen.builder,
    personalCenterScreen: PersonalCenterScreen.builder,
    homeOneScreen: HomeOneScreen.builder,
    promotionsListScreen: PromotionsListScreen.builder,
    promotionsDetailScreen: PromotionsDetailScreen.builder,
    popupClaimScreen: PopupClaimScreen.builder,
    agentLeaderboardScreen: AgentLeaderboardScreen.builder,
    agentLeaderboardDetailViewScreen: AgentLeaderboardDetailViewScreen.builder,
    agentLeaderboardHistoryScreen: AgentLeaderboardHistoryScreen.builder,
    myPersonalCenterZeroScreen: MyPersonalCenterZeroScreen.builder,
    myPersonalCenterZeroOneScreen: MyPersonalCenterZeroOneScreen.builder,
    teamMembersScreen: TeamMembersScreen.builder,
    reportDataAddRankingBonusScreen: ReportDataAddRankingBonusScreen.builder,
    reportDataSummaryLoadingScreen: ReportDataSummaryLoadingScreen.builder,
    reportDataSummaryDateFilterOneScreen:
        ReportDataSummaryDateFilterOneScreen.builder,
    bonusDetailsDepositBonusScreen: BonusDetailsDepositBonusScreen.builder,
    bonusDetailsQualifiedUserScreen: BonusDetailsQualifiedUserScreen.builder,
    bonusDetailsAchievementScreen: BonusDetailsAchievementScreen.builder,
    bonusDetailsDefaultScreen: BonusDetailsDefaultScreen.builder,
    popupScreen: PopupScreen.builder,
    frontScreen: FrontScreen.builder,
    checkInScreen: CheckInScreen.builder,
    downloadDetailsPcScreen: DownloadDetailsPcScreen.builder,
    checkInAlreadyCheckedInScreen: CheckInAlreadyCheckedInScreen.builder,
    checkInMakeUpCheckInScreen: CheckInMakeUpCheckInScreen.builder,
    checkInDay4CheckInScreen: CheckInDay4CheckInScreen.builder,
    checkInDay5CheckInScreen: CheckInDay5CheckInScreen.builder,
    checkInFreeMakeUpFreeCheckInScreen:
        CheckInFreeMakeUpFreeCheckInScreen.builder,
    logInScreen: LogInScreen.builder,
    registerScreen: RegisterScreen.builder,
    registerOneScreen: RegisterOneScreen.builder,
    registerClickAgreementTextScreen: RegisterClickAgreementTextScreen.builder,
    registrationSuccessGuideScreen: RegistrationSuccessGuideScreen.builder,
    thirdPartyLoginCompleteInfoScreen:
        ThirdPartyLoginCompleteInfoScreen.builder,
    thirdPartyLoginCompleteInfoOneScreen:
        ThirdPartyLoginCompleteInfoOneScreen.builder,
    ph23NewPopupRegisterClaimScreen: Ph23NewPopupRegisterClaimScreen.builder,
    notDuringEventPeriodScreen: NotDuringEventPeriodScreen.builder,
    state1PrizeNotClaimedThisScreen: State1PrizeNotClaimedThisScreen.builder,
    state2ThisRoundOngoingScreen: State2ThisRoundOngoingScreen.builder,
    state3NoPrizeWonThisRoundScreen: State3NoPrizeWonThisRoundScreen.builder,
    state4NotAPaidMemberScreen: State4NotAPaidMemberScreen.builder,
    homeWheelSpinScreen: HomeWheelSpinScreen.builder,
    wheelSpinMainHiddenLevelsScreen: WheelSpinMainHiddenLevelsScreen.builder,
    lotteryWithdrawalPendingReviewScreen:
        LotteryWithdrawalPendingReviewScreen.builder,
    wheelSpinMainMyWithdrawalScreen: WheelSpinMainMyWithdrawalScreen.builder,
    wheelSpinMainNoWithdrawalScreen: WheelSpinMainNoWithdrawalScreen.builder,
    rewardRecordsScreen: RewardRecordsScreen.builder,
    wheelSpinMainRulesScreen: WheelSpinMainRulesScreen.builder,
    walletChooseAmountStyleScreen: WalletChooseAmountStyleScreen.builder,
    depositInfo3rdPartySuccessScreen: DepositInfo3rdPartySuccessScreen.builder,
    walletTopUpRecordsPaymentScreen: WalletTopUpRecordsPaymentScreen.builder,
    walletTopUpRecordsTimeScreen: WalletTopUpRecordsTimeScreen.builder,
    depositInfo3rdPartySuccessOneScreen:
        DepositInfo3rdPartySuccessOneScreen.builder,
    walletTopUpRecordsWithdrawalScreen:
        WalletTopUpRecordsWithdrawalScreen.builder,
    topUpPromoPopupScreen: TopUpPromoPopupScreen.builder,
    homeSevenItemsScreen: HomeSevenItemsScreen.builder,
    homeTasksScreen: HomeTasksScreen.builder,
    homeTasksDefaultPageScreen: HomeTasksDefaultPageScreen.builder,
    wheelResultHelpBonusRandomScreen: WheelResultHelpBonusRandomScreen.builder,
    wheelResultExtraSpinsScreen: WheelResultExtraSpinsScreen.builder,
    wheelResultWonCashScreen: WheelResultWonCashScreen.builder,
    wheelResultWonCashOneScreen: WheelResultWonCashOneScreen.builder,
    homeSpinTheWheelPopupScreen: HomeSpinTheWheelPopupScreen.builder,
    sharePageOneScreen: SharePageOneScreen.builder,
    bindNeverSetTransactionPasswordScreen:
        BindNeverSetTransactionPasswordScreen.builder,
    bindCryptoSettingsCardListScreen: BindCryptoSettingsCardListScreen.builder,
    addTopUpAccountBankAccountScreen: AddTopUpAccountBankAccountScreen.builder,
    walletWithdrawWagerRequirementScreen:
        WalletWithdrawWagerRequirementScreen.builder,
    walletWithdrawWagerMetScreen: WalletWithdrawWagerMetScreen.builder,
    bindCryptoNeverSetTransactionScreen:
        BindCryptoNeverSetTransactionScreen.builder,
    dailyCumulativeDepositEventScreen:
        DailyCumulativeDepositEventScreen.builder,
    bettingHistoryScreen: BettingHistoryScreen.builder,
    transactionDepositScreen: TransactionDepositScreen.builder,
    transactionDepositOneScreen: TransactionDepositOneScreen.builder,
    transactionDepositTwoScreen: TransactionDepositTwoScreen.builder,
    topUpRecordsScreen: TopUpRecordsScreen.builder,
    topUpRecordsCategoryFilterScreen: TopUpRecordsCategoryFilterScreen.builder,
    topUpRecordsPaymentTypeFilterScreen:
        TopUpRecordsPaymentTypeFilterScreen.builder,
    topUpRecordsTimeFilterScreen: TopUpRecordsTimeFilterScreen.builder,
    topUpRecordsWithdrawalRejectedScreen:
        TopUpRecordsWithdrawalRejectedScreen.builder,
    withdrawalRecordsScreen: WithdrawalRecordsScreen.builder,
    trialMoneyMainAfterParticipatingScreen:
        TrialMoneyMainAfterParticipatingScreen.builder,
    popupClaimOneScreen: PopupClaimOneScreen.builder,
    trialMoneyPersonalCenterEntryScreen:
        TrialMoneyPersonalCenterEntryScreen.builder,
    trialMoneyRewardPopupScreen: TrialMoneyRewardPopupScreen.builder,
    bonusDetailsAddedTrialMoneyScreen:
        BonusDetailsAddedTrialMoneyScreen.builder,
    batchBonusDepositOpenTreasureScreen:
        BatchBonusDepositOpenTreasureScreen.builder,
    homeClaimSuccessScreen: HomeClaimSuccessScreen.builder,
    homeSmsPopupScreen: HomeSmsPopupScreen.builder,
    informationScreen: InformationScreen.builder,
    messageEmptyScreen: MessageEmptyScreen.builder,
    informationOneScreen: InformationOneScreen.builder,
    helpScreen: HelpScreen.builder,
    personalCenterClaimedBonusScreen: PersonalCenterClaimedBonusScreen.builder,
    bonusDetailsScreen: BonusDetailsScreen.builder,
    feedbackBoxSuccessPromptScreen: FeedbackBoxSuccessPromptScreen.builder,
    informationTwoScreen: InformationTwoScreen.builder,
    informationThreeScreen: InformationThreeScreen.builder,
    informationFourScreen: InformationFourScreen.builder,
    settingsPersonalInfoScreen: SettingsPersonalInfoScreen.builder,
    forgotPasswordMobilePaymentScreen:
        ForgotPasswordMobilePaymentScreen.builder,
    forgotPasswordMobilePaymentOneScreen:
        ForgotPasswordMobilePaymentOneScreen.builder,
    couponCenterVoucherWonScreen: CouponCenterVoucherWonScreen.builder,
    couponCenterTaskRecordsScreen: CouponCenterTaskRecordsScreen.builder,
    couponCenterMyVouchersNoScreen: CouponCenterMyVouchersNoScreen.builder,
    couponCenterTaskRecordsOneScreen: CouponCenterTaskRecordsOneScreen.builder,
    spinSliceFilesScreen: SpinSliceFilesScreen.builder,
    spinSliceFilesOneScreen: SpinSliceFilesOneScreen.builder,
    redEnvelopeScreen: RedEnvelopeScreen.builder,
    treasureBoxConfirmScreen: TreasureBoxConfirmScreen.builder,
    spinPanelScreen: SpinPanelScreen.builder,
    smashTheGoldenEggScreen: SmashTheGoldenEggScreen.builder,
    treasureBoxPopupScreen: TreasureBoxPopupScreen.builder,
    redEnvelopePopupScreen: RedEnvelopePopupScreen.builder,
    eggSmashPopupScreen: EggSmashPopupScreen.builder,
    wheelPopupScreen: WheelPopupScreen.builder,
    notWinnerPopupScreen: NotWinnerPopupScreen.builder,
    couponSystemConditionDisplayScreen:
        CouponSystemConditionDisplayScreen.builder,
    appNavigationScreen: AppNavigationScreen.builder,
    initialRoute: ReferralBringAFriendScreen.builder,
  };
}
