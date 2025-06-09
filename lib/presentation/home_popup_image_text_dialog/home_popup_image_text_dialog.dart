import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/home_popup_image_text_bloc.dart';
import 'models/home_popup_image_text_model.dart'; // ignore_for_file: must_be_immutable

class HomePopupImageTextDialog extends StatelessWidget {
  const HomePopupImageTextDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePopupImageTextBloc>(
      create:
          (context) => HomePopupImageTextBloc(
            HomePopupImageTextState(
              homePopupImageTextModelObj: HomePopupImageTextModel(),
            ),
          )..add(HomePopupImageTextInitialEvent()),
      child: HomePopupImageTextDialog(),
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
                  spacing: 16,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCardMatkaLandingEn,
                      height: 186.h,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(12.h),
                    ),
                    Text(
                      "msg_lorem_ipsum_dolor2".tr,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
                        height: 1.14,
                      ),
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
                      buttonStyle: CustomButtonStyles.fillLightGreenA,
                      buttonTextStyle: theme.textTheme.titleMedium!,
                    ),
                    SizedBox(height: 12.h),
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
                      buttonTextStyle: CustomTextStyles.titleSmallBluegray400_1,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          "lbl_1_8".tr,
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
