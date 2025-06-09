import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/home_popup_text_bloc.dart';
import 'models/home_popup_text_model.dart'; // ignore_for_file: must_be_immutable

class HomePopupTextDialog extends StatelessWidget {
  const HomePopupTextDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePopupTextBloc>(
      create:
          (context) => HomePopupTextBloc(
            HomePopupTextState(homePopupTextModelObj: HomePopupTextModel()),
          )..add(HomePopupTextInitialEvent()),
      child: HomePopupTextDialog(),
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
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.fs4bg.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder14,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_lorem_ipsum_dolor".tr,
                      maxLines: 27,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
                        height: 1.14,
                      ),
                    ),
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
                          "lbl_2_8".tr,
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
