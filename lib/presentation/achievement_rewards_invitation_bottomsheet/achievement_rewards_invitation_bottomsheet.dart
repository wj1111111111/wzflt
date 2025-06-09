import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/achievement_rewards_invitation_bloc.dart';
import 'models/achievement_rewards_invitation_model.dart';
import 'models/listmore_one_item_model.dart';
import 'widgets/listmore_one_item_widget.dart'; // ignore_for_file: must_be_immutable

class AchievementRewardsInvitationBottomsheet extends StatelessWidget {
  const AchievementRewardsInvitationBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AchievementRewardsInvitationBloc>(
      create:
          (context) => AchievementRewardsInvitationBloc(
            AchievementRewardsInvitationState(
              achievementRewardsInvitationModelObj:
                  AchievementRewardsInvitationModel(),
            ),
          )..add(AchievementRewardsInvitationInitialEvent()),
      child: AchievementRewardsInvitationBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildStacksharewithy(context);
  }

  /// Section Widget
  Widget _buildStacksharewithy(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        color: appTheme.gray90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Container(
          height: 288.h,
          padding: EdgeInsets.symmetric(vertical: 20.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL10,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 70.h,
                width: 64.h,
                decoration: AppDecoration.stack105,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomIconButton(
                      height: 34.h,
                      width: 34.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.gradientGreenToGreenA,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpOnprimary34x34,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 14.h, top: 4.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_share_with_your".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.h),
                        width: double.maxFinite,
                        child: BlocSelector<
                          AchievementRewardsInvitationBloc,
                          AchievementRewardsInvitationState,
                          AchievementRewardsInvitationModel?
                        >(
                          selector:
                              (state) =>
                                  state.achievementRewardsInvitationModelObj,
                          builder: (
                            context,
                            achievementRewardsInvitationModelObj,
                          ) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                direction: Axis.horizontal,
                                spacing: 18.h,
                                children: List.generate(
                                  achievementRewardsInvitationModelObj
                                          ?.listmoreOneItemList
                                          .length ??
                                      0,
                                  (index) {
                                    ListmoreOneItemModel model =
                                        achievementRewardsInvitationModelObj
                                            ?.listmoreOneItemList[index] ??
                                        ListmoreOneItemModel();
                                    return ListmoreOneItemWidget(model);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 54.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame,
                              height: 20.h,
                              width: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "msg_share_this_binding".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 22.h),
                      Container(
                        width: 302.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 6.h,
                        ),
                        decoration: AppDecoration.outlineLightgreenA7001
                            .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 236.h,
                              child: Text(
                                "msg_http_www_jbet2".tr,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodyMediumLightgreenA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
