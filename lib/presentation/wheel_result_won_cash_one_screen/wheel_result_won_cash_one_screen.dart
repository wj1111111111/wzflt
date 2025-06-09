import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/wheel_result_won_cash_one_bloc.dart';
import 'models/wheel_result_won_cash_one_model.dart';

class WheelResultWonCashOneScreen extends StatelessWidget {
  const WheelResultWonCashOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WheelResultWonCashOneBloc>(
      create:
          (context) => WheelResultWonCashOneBloc(
            WheelResultWonCashOneState(
              wheelResultWonCashOneModelObj: WheelResultWonCashOneModel(),
            ),
          )..add(WheelResultWonCashOneInitialEvent()),
      child: WheelResultWonCashOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WheelResultWonCashOneBloc, WheelResultWonCashOneState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: appTheme.black900.withValues(alpha: 0.8),
          body: Container(
            width: double.maxFinite,
            height: SizeUtils.height,
            decoration: AppDecoration.fillBlack9009,
            child: SafeArea(
              child: Container(
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 58.h),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildStackoneone(context),
                    Container(
                      height: 438.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img2374x374,
                            height: 374.h,
                            width: 374.h,
                            alignment: Alignment.topCenter,
                          ),
                          _buildStackonethree(context),
                          Text(
                            "lbl_2_0002".tr,
                            style: theme.textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
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
      height: 376.h,
      margin: EdgeInsets.only(top: 132.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img15,
            height: 374.h,
            width: 374.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomElevatedButton(
                    height: 40.h,
                    text: "msg_get_right_now".tr,
                    margin: EdgeInsets.only(left: 6.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles
                            .gradientLightGreenAToLightGreenTL22Decoration,
                    buttonTextStyle: theme.textTheme.titleMedium!,
                  ),
                  Text(
                    "msg_the_amount_has_been".tr,
                    style: CustomTextStyles.labelLargeSFProTextOnPrimaryMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackonethree(BuildContext context) {
    return Container(
      height: 332.h,
      margin: EdgeInsets.only(left: 16.h, right: 12.h, bottom: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
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
              height: 274.h,
              margin: EdgeInsets.only(left: 30.h, top: 20.h, right: 30.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img2809afbfd6b37f6,
                    height: 250.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 198.h,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img1194x278,
                                height: 194.h,
                                width: double.maxFinite,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgDebe4586dd1e44a,
                                height: 186.h,
                                width: double.maxFinite,
                                alignment: Alignment.topCenter,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: AppDecoration.outlineAmberA10004,
                          child: Text(
                            "lbl_you_ve_won".tr,
                            textAlign: TextAlign.left,
                            style:
                                CustomTextStyles
                                    .headlineSmallSFProTextYellow5002,
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
    );
  }
}
