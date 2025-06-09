import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../achievement_rewards_invitation_bottomsheet/achievement_rewards_invitation_bottomsheet.dart';
import '../achievement_rewards_rules_bottomsheet/achievement_rewards_rules_bottomsheet.dart';
import '../agent_level_info_popup_dialog/agent_level_info_popup_dialog.dart';
import '../bonus_details_one_bottomsheet/bonus_details_one_bottomsheet.dart';
import '../coupon_center_my_vouchers_download_dialog/coupon_center_my_vouchers_download_dialog.dart';
import '../coupon_center_voucher_claimed_dialog/coupon_center_voucher_claimed_dialog.dart';
import '../coupon_system_condition_display_one_dialog/coupon_system_condition_display_one_dialog.dart';
import '../feedback_box_limit_reached_dialog/feedback_box_limit_reached_dialog.dart';
import '../home_info_popup_simplified_text_dialog/home_info_popup_simplified_text_dialog.dart';
import '../home_popup_bottomsheet/home_popup_bottomsheet.dart';
import '../home_popup_image_dialog/home_popup_image_dialog.dart';
import '../home_popup_image_text_dialog/home_popup_image_text_dialog.dart';
import '../home_popup_text_dialog/home_popup_text_dialog.dart';
import '../home_single_game_entry_popup_bottomsheet/home_single_game_entry_popup_bottomsheet.dart';
import '../leaderboard_history_bottomsheet/leaderboard_history_bottomsheet.dart';
import '../leaderboard_history_one_bottomsheet/leaderboard_history_one_bottomsheet.dart';
import '../leaderboard_history_two_bottomsheet/leaderboard_history_two_bottomsheet.dart';
import '../leaderboard_my_prizes_bottomsheet/leaderboard_my_prizes_bottomsheet.dart';
import '../leaderboard_my_prizes_one_dialog/leaderboard_my_prizes_one_dialog.dart';
import '../leaderboard_no_prize_data_bottomsheet/leaderboard_no_prize_data_bottomsheet.dart';
import '../leaderboard_rules_bottomsheet/leaderboard_rules_bottomsheet.dart';
import '../lottery_exit_page_retain_dialog/lottery_exit_page_retain_dialog.dart';
import '../lottery_exit_page_retain_one_bottomsheet/lottery_exit_page_retain_one_bottomsheet.dart';
import '../lottery_withdrawal_conditions_dialog/lottery_withdrawal_conditions_dialog.dart';
import '../lottery_withdrawal_eligible_dialog/lottery_withdrawal_eligible_dialog.dart';
import '../message_dialog/message_dialog.dart';
import '../new_spin_event_popup_dialog/new_spin_event_popup_dialog.dart';
import '../new_spin_event_popup_one_dialog/new_spin_event_popup_one_dialog.dart';
import '../next_day_inform_people_needed_dialog/next_day_inform_people_needed_dialog.dart';
import '../other_pages_enter_game_prompt_dialog/other_pages_enter_game_prompt_dialog.dart';
import '../ph23_new_popup_register_claim_one_dialog/ph23_new_popup_register_claim_one_dialog.dart';
import '../ph_home_dialog/ph_home_dialog.dart';
import '../reconnection_popup_dialog/reconnection_popup_dialog.dart';
import '../redemption_code_expired_dialog/redemption_code_expired_dialog.dart';
import '../redemption_code_expired_no_random_dialog/redemption_code_expired_no_random_dialog.dart';
import '../redemption_code_expired_one_dialog/redemption_code_expired_one_dialog.dart';
import '../report_data_summary_date_filter_bottomsheet/report_data_summary_date_filter_bottomsheet.dart';
import '../rules_bottomsheet/rules_bottomsheet.dart';
import '../settings_personal_info_one_dialog/settings_personal_info_one_dialog.dart';
import '../successful_invitation_notice_dialog/successful_invitation_notice_dialog.dart';
import '../successful_invitation_notice_one_dialog/successful_invitation_notice_one_dialog.dart';
import '../team_members_popup_dialog/team_members_popup_dialog.dart';
import '../wallet_choose_card_type_dialog/wallet_choose_card_type_dialog.dart';
import '../wallet_deposit_dialog/wallet_deposit_dialog.dart';
import '../wallet_deposit_one_dialog/wallet_deposit_one_dialog.dart';
import '../wallet_withdraw_dialog/wallet_withdraw_dialog.dart';
import '../wallet_withdraw_not_enough_bottomsheet/wallet_withdraw_not_enough_bottomsheet.dart';
import '../wallet_withdraw_wager_met_popup_bottomsheet/wallet_withdraw_wager_met_popup_bottomsheet.dart';
import '../wallet_withdraw_wager_requirement_one_bottomsheet/wallet_withdraw_wager_requirement_one_bottomsheet.dart';
import '../weekly_salary_one_dialog/weekly_salary_one_dialog.dart';
import '../wheel_spin_verify_phone_dialog/wheel_spin_verify_phone_dialog.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(
        AppNavigationState(appNavigationModelObj: AppNavigationModel()),
      )..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Color(0XFFFFFFFF),
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Text(
                            "App Navigation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Check your app's UI from the below demo screens of your app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF888888),
                              fontSize: 16.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: Color(0XFF000000),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Log in",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "register",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.registerScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "register One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.registerOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Referral - Bring a Friend",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.referralBringAFriendScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "PH23 - Daily First Entry Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.ph23DailyFirstEntryPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Referral - Not Logged In",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.referralNotLoggedInScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Referral - Logged In",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.referralLoggedInScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Referral - Level 2 - Intermediate",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.referralLevel2IntermediateScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Senior mentoring - Advanced One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.seniorMentoringAdvancedOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Senior to New - Highest Level One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.seniorToNewHighestLevelOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Senior mentoring - highest level",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.seniorMentoringHighestLevelScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Referral - Top-level Agent Status",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.referralTopLevelAgentStatusScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Agent Level Info Popup - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                AgentLevelInfoPopupDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Achievement Rewards",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.achievementRewardsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Achievement Rewards - Rules - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                AchievementRewardsRulesBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Achievement Rewards - Claim Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.achievementRewardsClaimPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Achievement Rewards - Invitation - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                AchievementRewardsInvitationBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Screen",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Popup - Text - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                HomePopupTextDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Popup - Image & Text - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                HomePopupImageTextDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Popup - Image - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                HomePopupImageDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reconnection Popup - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                ReconnectionPopupDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Maintenance Page - 3 to 4 AM",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.maintenancePage3To4AmScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Network Error",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.networkErrorScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VIP",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.vipScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Level bonus",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.levelBonusScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "monthly salary",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.monthlySalaryScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "birthday bonus",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.birthdayBonusScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Level Bonus - Claimed",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.levelBonusClaimedScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Weekly Wage - Claimed",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.weeklyWageClaimedScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "weekly salary",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.weeklySalaryScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "weekly salary One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                WeeklySalaryOneDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Weekly Rebate - Eligible",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.weeklyRebateEligibleScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VIP - Daily Wage",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.vipDailyWageScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "VIP Daily Salary (Daily Wage Rules)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.vipDailySalaryDailyWageRulesScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "monthly salary One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.monthlySalaryOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Personal Center",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.personalCenterScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - One Item",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Home - Single Game Entry Popup - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                HomeSingleGameEntryPopupBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Promotions - List",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.promotionsListScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Promotions - Detail",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.promotionsDetailScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Popup Claim",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.popupClaimScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Home Info Popup - Simplified Text - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                HomeInfoPopupSimplifiedTextDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Agent Leaderboard",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.agentLeaderboardScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Agent Leaderboard - Detail View",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.agentLeaderboardDetailViewScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Agent Leaderboard - History",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.agentLeaderboardHistoryScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Leaderboard - Rules - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                LeaderboardRulesBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Leaderboard - My Prizes - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                LeaderboardMyPrizesBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Leaderboard - My Prizes One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                LeaderboardMyPrizesOneDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Leaderboard - No Prize Data - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                LeaderboardNoPrizeDataBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Leaderboard - History - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                LeaderboardHistoryBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Leaderboard - History One - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                LeaderboardHistoryOneBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Leaderboard - History Two - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                LeaderboardHistoryTwoBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My personal center Zero",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.myPersonalCenterZeroScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Redemption Code Expired - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                RedemptionCodeExpiredDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Redemption Code Expired - No Random - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                RedemptionCodeExpiredNoRandomDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Redemption Code Expired One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                RedemptionCodeExpiredOneDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My personal center Zero One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.myPersonalCenterZeroOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Team Members - Popup - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                TeamMembersPopupDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Team Members",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.teamMembersScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Report Data - Add Ranking Bonus",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.reportDataAddRankingBonusScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Report Data Summary - Loading",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.reportDataSummaryLoadingScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Report Data Summary - Date Filter - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                ReportDataSummaryDateFilterBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Report Data Summary - Date Filter One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.reportDataSummaryDateFilterOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bonus Details - Deposit Bonus",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bonusDetailsDepositBonusScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bonus Details - Qualified User",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bonusDetailsQualifiedUserScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bonus Details - Achievement",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bonusDetailsAchievementScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bonus Details - Default",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bonusDetailsDefaultScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Popup",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.popupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "front",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frontScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Check-In",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.checkInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Download Details - PC",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.downloadDetailsPcScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Popup - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                HomePopupBottomsheet.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Check-In - Already Checked In",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.checkInAlreadyCheckedInScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Check-In - Make-up Check-In",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.checkInMakeUpCheckInScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Check-In - Day 4 Check-In",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.checkInDay4CheckInScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Check-In - Day 5 Check-In",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.checkInDay5CheckInScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Check-In - Free Make-up/Free Check-In",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.checkInFreeMakeUpFreeCheckInScreen,
                              ),
                            ),
                            
                            _buildScreenTitle(
                              context,
                              screenTitle: "Register - Click Agreement Text",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.registerClickAgreementTextScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Registration Success Guide",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.registrationSuccessGuideScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Third Party Login - Complete Info",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.thirdPartyLoginCompleteInfoScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Third Party Login - Complete Info One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.thirdPartyLoginCompleteInfoOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "PH23 New Popup Register Claim",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.ph23NewPopupRegisterClaimScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "PH23 New Popup Register Claim One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                Ph23NewPopupRegisterClaimOneDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Not During Event Period",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.notDuringEventPeriodScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "State 1 - Prize Not Claimed This",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.state1PrizeNotClaimedThisScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "State 2 - This Round Ongoing",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.state2ThisRoundOngoingScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "State 3 - No Prize Won This Round",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.state3NoPrizeWonThisRoundScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "State 4 - Not a Paid Member",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.state4NotAPaidMemberScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Wheel Spin",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.homeWheelSpinScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Spin Main - Hidden Levels",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelSpinMainHiddenLevelsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Lottery - Withdrawal Pending Review",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.lotteryWithdrawalPendingReviewScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "New Spin Event Popup - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                NewSpinEventPopupDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Spin Main - My Withdrawal",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelSpinMainMyWithdrawalScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Spin Main - No Withdrawal",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelSpinMainNoWithdrawalScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Successful Invitation Notice - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                SuccessfulInvitationNoticeDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Spin - Verify Phone - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                WheelSpinVerifyPhoneDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reward Records",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.rewardRecordsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Rules - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                RulesBottomsheet.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Spin Main - Rules",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelSpinMainRulesScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Choose Amount Style",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.walletChooseAmountStyleScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Deposit - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                WalletDepositDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Deposit One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                WalletDepositOneDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Deposit Info - 3rd Party Success",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.depositInfo3rdPartySuccessScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Top-up Records - Payment",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.walletTopUpRecordsPaymentScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Top-up Records - Time",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.walletTopUpRecordsTimeScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Deposit Info - 3rd Party Success One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.depositInfo3rdPartySuccessOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Wallet - Top-up Records - Withdrawal",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.walletTopUpRecordsWithdrawalScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Top-up Promo Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.topUpPromoPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Seven Items",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.homeSevenItemsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Tasks",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.homeTasksScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Tasks (Default Page)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.homeTasksDefaultPageScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Result - Help Bonus (Random)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelResultHelpBonusRandomScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Result - Extra Spins",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelResultExtraSpinsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Result - Won Cash",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelResultWonCashScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Result - Won Cash One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelResultWonCashOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Spin the Wheel Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.homeSpinTheWheelPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Lottery - Withdrawal Conditions - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                LotteryWithdrawalConditionsDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Lottery - Withdrawal Eligible - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                LotteryWithdrawalEligibleDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Lottery - Exit Page - Retain - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                LotteryExitPageRetainDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Lottery - Exit Page - Retain One - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                LotteryExitPageRetainOneBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Successful Invitation Notice One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                SuccessfulInvitationNoticeOneDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Next Day - Inform People Needed - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                NextDayInformPeopleNeededDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Share page One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.sharePageOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "New Spin Event Popup One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                NewSpinEventPopupOneDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Bind - Never Set Transaction Password",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bindNeverSetTransactionPasswordScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bind Crypto - Settings - Card List",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bindCryptoSettingsCardListScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Choose Card Type - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                WalletChooseCardTypeDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Withdraw - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                WalletWithdrawDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add Top-up Account - Bank Account",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.addTopUpAccountBankAccountScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Wallet - Withdraw - Not Enough - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                WalletWithdrawNotEnoughBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Wallet - Withdraw - Wager Requirement",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.walletWithdrawWagerRequirementScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Wallet - Withdraw - Wager Met (Popup) - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                WalletWithdrawWagerMetPopupBottomsheet.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wallet - Withdraw - Wager Met -",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.walletWithdrawWagerMetScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Wallet - Withdraw - Wager Requirement One - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                WalletWithdrawWagerRequirementOneBottomsheet
                                    .builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Bind Crypto - Never Set Transaction",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bindCryptoNeverSetTransactionScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Daily Cumulative Deposit Event",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.dailyCumulativeDepositEventScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Betting History",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bettingHistoryScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Transaction - Deposit",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.transactionDepositScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Transaction - Deposit One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.transactionDepositOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Transaction - Deposit Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.transactionDepositTwoScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Top-up Records",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.topUpRecordsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Top-up Records - Category Filter",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.topUpRecordsCategoryFilterScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Top-up Records - Payment Type Filter",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.topUpRecordsPaymentTypeFilterScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Top-up Records - Time Filter",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.topUpRecordsTimeFilterScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Top-up Records - Withdrawal Rejected",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.topUpRecordsWithdrawalRejectedScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Withdrawal Records",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.withdrawalRecordsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "PH Home - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                PhHomeDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Trial Money Main - After Participating",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes
                                    .trialMoneyMainAfterParticipatingScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Popup Claim One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.popupClaimOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Trial Money - Personal Center Entry",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.trialMoneyPersonalCenterEntryScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Trial Money - Reward Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.trialMoneyRewardPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Other Pages - Enter Game Prompt - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                OtherPagesEnterGamePromptDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bonus Details - Added Trial Money",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bonusDetailsAddedTrialMoneyScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Batch Bonus Deposit - Open Treasure",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.batchBonusDepositOpenTreasureScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - Claim Success",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.homeClaimSuccessScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home - SMS Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.homeSmsPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Message - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                MessageDialog.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "information",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.informationScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Message - Empty",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.messageEmptyScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "information One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.informationOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.helpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Personal Center - Claimed Bonus",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.personalCenterClaimedBonusScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bonus details",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.bonusDetailsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bonus Details One - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                context,
                                BonusDetailsOneBottomsheet.builder(context),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Feedback Box - Limit Reached - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                FeedbackBoxLimitReachedDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Feedback Box - Success Prompt",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.feedbackBoxSuccessPromptScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "information Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.informationTwoScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "information Three",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.informationThreeScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "information Four",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.informationFourScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings - Personal Info",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.settingsPersonalInfoScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Settings - Personal Info One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                SettingsPersonalInfoOneDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password - Mobile Payment",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.forgotPasswordMobilePaymentScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Forgot Password - Mobile Payment One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.forgotPasswordMobilePaymentOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Coupon Center - Voucher Won",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.couponCenterVoucherWonScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Coupon Center - Task Records",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.couponCenterTaskRecordsScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Coupon Center - Voucher Claimed - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                CouponCenterVoucherClaimedDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Coupon Center - My Vouchers - No",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.couponCenterMyVouchersNoScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Coupon Center - Task Records - One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.couponCenterTaskRecordsOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Coupon Center - My Vouchers - Download - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                CouponCenterMyVouchersDownloadDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Spin - Slice Files",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.spinSliceFilesScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Spin - Slice Files One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.spinSliceFilesOneScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Red Envelope",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.redEnvelopeScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Treasure Box - Confirm",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.treasureBoxConfirmScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Spin - Panel",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.spinPanelScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Smash the Golden Egg",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.smashTheGoldenEggScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Treasure Box Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.treasureBoxPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Red Envelope Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.redEnvelopePopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Egg Smash Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.eggSmashPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wheel Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.wheelPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Not Winner Popup",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.notWinnerPopupScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Coupon System Condition Display",
                              onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.couponSystemConditionDisplayScreen,
                              ),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Coupon System Condition Display One - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                context,
                                CouponSystemConditionDisplayOneDialog.builder(
                                  context,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(BuildContext context, Widget className) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(BuildContext context, Widget className) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(height: 1.h, thickness: 1.h, color: Color(0XFF888888)),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
