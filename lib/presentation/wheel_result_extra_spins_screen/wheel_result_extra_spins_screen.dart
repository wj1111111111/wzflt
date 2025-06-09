import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/wheel_result_extra_spins_bloc.dart';
import 'models/wheel_result_extra_spins_model.dart';

class WheelResultExtraSpinsScreen extends StatelessWidget {
  const WheelResultExtraSpinsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WheelResultExtraSpinsBloc>(
      create:
          (context) => WheelResultExtraSpinsBloc(
            WheelResultExtraSpinsState(
              wheelResultExtraSpinsModelObj: WheelResultExtraSpinsModel(),
            ),
          )..add(WheelResultExtraSpinsInitialEvent()),
      child: WheelResultExtraSpinsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WheelResultExtraSpinsBloc, WheelResultExtraSpinsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 1132.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1137,
                        height: 1132.h,
                        width: double.maxFinite,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: SizeUtils.height,
                          padding: EdgeInsets.only(top: 58.h),
                          decoration: AppDecoration.fillBlack9004,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              _buildStackoneone(context),
                              Container(
                                height: 432.h,
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
                                      "lbl_1_time_draw".tr,
                                      style: theme.textTheme.displayMedium,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 52.h),
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
                      ),
                    ],
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
  Widget _buildStackoneone(BuildContext context) {
    return Container(
      height: 374.h,
      margin: EdgeInsets.only(top: 132.h),
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
            margin: EdgeInsets.only(bottom: 22.h),
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
  Widget _buildStackonethree(BuildContext context) {
    return Container(
      height: 332.h,
      margin: EdgeInsets.only(left: 16.h, right: 12.h, bottom: 14.h),
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
                    imagePath: ImageConstant.imgImage867164x162,
                    height: 164.h,
                    width: 164.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 30.h),
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
