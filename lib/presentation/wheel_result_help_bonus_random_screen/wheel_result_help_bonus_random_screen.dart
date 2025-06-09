import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/wheel_result_help_bonus_random_bloc.dart';
import 'models/wheel_result_help_bonus_random_model.dart';

class WheelResultHelpBonusRandomScreen extends StatelessWidget {
  const WheelResultHelpBonusRandomScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WheelResultHelpBonusRandomBloc>(
      create:
          (context) => WheelResultHelpBonusRandomBloc(
            WheelResultHelpBonusRandomState(
              wheelResultHelpBonusRandomModelObj:
                  WheelResultHelpBonusRandomModel(),
            ),
          )..add(WheelResultHelpBonusRandomInitialEvent()),
      child: WheelResultHelpBonusRandomScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      WheelResultHelpBonusRandomBloc,
      WheelResultHelpBonusRandomState
    >(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: appTheme.black900.withValues(alpha: 0.8),
          body: Container(
            width: double.maxFinite,
            height: SizeUtils.height,
            decoration: AppDecoration.fillBlack9008,
            child: SafeArea(
              child: Container(
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 144.h),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildStackoneone(context),
                    _buildStackprice(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStackoneone(BuildContext context) {
    return Container(
      height: 374.h,
      margin: EdgeInsets.only(top: 44.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img15,
            height: 374.h,
            width: 374.h,
          ),
          CustomElevatedButton(
            height: 40.h,
            width: 326.h,
            text: "msg_get_right_now".tr,
            margin: EdgeInsets.only(bottom: 20.h),
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles
                    .gradientLightGreenAToLightGreenTL22Decoration,
            buttonTextStyle: theme.textTheme.titleMedium!,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackprice(BuildContext context) {
    return Container(
      height: 348.h,
      margin: EdgeInsets.only(left: 16.h, right: 12.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 332.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.9,
                  child: CustomImageView(
                    imagePath: ImageConstant.img1332x332,
                    height: 332.h,
                    width: 332.h,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 250.h,
                    width: 264.h,
                    margin: EdgeInsets.only(top: 20.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img2809afbfd6b37f6,
                          height: 250.h,
                          width: double.maxFinite,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img82d5a47b9a735f3154x174,
                          height: 154.h,
                          width: 176.h,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 32.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text("lbl_1_232".tr, style: theme.textTheme.displayMedium),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 52.h),
              decoration: AppDecoration.outlineAmberA10004,
              child: Text(
                "lbl_you_ve_won".tr,
                textAlign: TextAlign.left,
                style: CustomTextStyles.headlineSmallSFProTextYellow5002,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
