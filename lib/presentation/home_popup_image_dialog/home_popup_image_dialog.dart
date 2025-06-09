import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/home_popup_image_bloc.dart';
import 'models/home_popup_image_model.dart'; // ignore_for_file: must_be_immutable

class HomePopupImageDialog extends StatelessWidget {
  const HomePopupImageDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePopupImageBloc>(
      create:
          (context) => HomePopupImageBloc(
            HomePopupImageState(homePopupImageModelObj: HomePopupImageModel()),
          )..add(HomePopupImageInitialEvent()),
      child: HomePopupImageDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          decoration: AppDecoration.fs2bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                decoration: AppDecoration.fs4bg.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder14,
                ),
                child: Column(
                  spacing: 14,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCardMatkaLandingEn388x270,
                      height: 388.h,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(12.h),
                    ),
                    CustomElevatedButton(
                      height: 32.h,
                      width: 130.h,
                      text: "lbl_more2".tr,
                      rightIcon: Container(
                        margin: EdgeInsets.only(left: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowleft,
                          height: 8.h,
                          width: 10.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles
                              .gradientLightGreenAToLightGreenTL16Decoration,
                      buttonTextStyle: theme.textTheme.titleMedium!,
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      height: 40.h,
                      width: 100.h,
                      text: "lbl_previous".tr,
                      buttonStyle: CustomButtonStyles.fillGrayLR18,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          "lbl_3_82".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 40.h,
                      width: 100.h,
                      text: "lbl_next".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL18,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
