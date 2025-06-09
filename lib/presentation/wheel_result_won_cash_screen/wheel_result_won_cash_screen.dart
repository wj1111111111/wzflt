import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/wheel_result_won_cash_bloc.dart';
import 'models/wheel_result_won_cash_model.dart';

class WheelResultWonCashScreen extends StatelessWidget {
  const WheelResultWonCashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WheelResultWonCashBloc>(
      create:
          (context) => WheelResultWonCashBloc(
            WheelResultWonCashState(
              wheelResultWonCashModelObj: WheelResultWonCashModel(),
            ),
          )..add(WheelResultWonCashInitialEvent()),
      child: WheelResultWonCashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WheelResultWonCashBloc, WheelResultWonCashState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: theme.colorScheme.onPrimary,
          body: Container(
            width: double.maxFinite,
            height: SizeUtils.height,
            decoration: AppDecoration.fillOnPrimary4,
            child: SafeArea(
              child: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Container(
                    height: SizeUtils.height,
                    padding: EdgeInsets.only(top: 134.h),
                    decoration: AppDecoration.fillBlack9004,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img17,
                          height: 374.h,
                          width: 374.h,
                          margin: EdgeInsets.only(top: 54.h),
                        ),
                        Container(
                          height: 432.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgA1,
                                height: 340.h,
                                width: 340.h,
                                alignment: Alignment.topLeft,
                              ),
                              Container(
                                height: 422.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    _buildStacktwoone(context),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img2809afbfd6b37f6,
                                      height: 250.h,
                                      width: 264.h,
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 20.h),
                                    ),
                                    _buildStackonethree(context),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 74.h),
                                      child: Text(
                                        "lbl_1_232".tr,
                                        style: theme.textTheme.displayMedium,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 128.h),
                                      decoration:
                                          AppDecoration.outlineAmberA10004,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStacktwoone(BuildContext context) {
    return Container(
      height: 376.h,
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
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomElevatedButton(
                    height: 40.h,
                    text: "msg_get_right_now".tr,
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
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 332.h,
        margin: EdgeInsets.only(left: 16.h, right: 12.h),
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
            SizedBox(
              height: 200.h,
              width: 210.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgB928f94165e9728,
                    height: 174.h,
                    width: 176.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgB928f94165e9728,
                    height: 174.h,
                    width: 176.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
