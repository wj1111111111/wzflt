import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/settings_personal_info_one_bloc.dart';
import 'models/settings_personal_info_one_model.dart'; // ignore_for_file: must_be_immutable

class SettingsPersonalInfoOneDialog extends StatelessWidget {
  const SettingsPersonalInfoOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsPersonalInfoOneBloc>(
      create:
          (context) => SettingsPersonalInfoOneBloc(
            SettingsPersonalInfoOneState(
              settingsPersonalInfoOneModelObj: SettingsPersonalInfoOneModel(),
            ),
          )..add(SettingsPersonalInfoOneInitialEvent()),
      child: SettingsPersonalInfoOneDialog(),
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
            spacing: 18,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1Red40001,
                    height: 14.h,
                    width: 16.h,
                  ),
                  Text("lbl_notice".tr, style: CustomTextStyles.titleMedium18),
                ],
              ),
              SizedBox(
                width: 286.h,
                child: Text(
                  "msg_once_the_email_is".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumBluegray400.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        height: 50.h,
                        text: "lbl_cancel".tr,
                        buttonStyle: CustomButtonStyles.fillGrayBL121,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumLightgreen800,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        height: 50.h,
                        text: "lbl_confirm".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles
                                .gradientLightGreenAToLightGreenBR12Decoration,
                        buttonTextStyle: theme.textTheme.titleMedium!,
                      ),
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
