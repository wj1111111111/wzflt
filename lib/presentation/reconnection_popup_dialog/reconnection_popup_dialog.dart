import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/reconnection_popup_bloc.dart';
import 'models/reconnection_popup_model.dart'; // ignore_for_file: must_be_immutable

class ReconnectionPopupDialog extends StatelessWidget {
  const ReconnectionPopupDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReconnectionPopupBloc>(
      create:
          (context) => ReconnectionPopupBloc(
            ReconnectionPopupState(
              reconnectionPopupModelObj: ReconnectionPopupModel(),
            ),
          )..add(ReconnectionPopupInitialEvent()),
      child: ReconnectionPopupDialog(),
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
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: AppDecoration.fs2bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_hint".tr, style: CustomTextStyles.titleMedium18),
              SizedBox(height: 18.h),
              Text(
                "msg_login_has_expired".tr,
                style: CustomTextStyles.titleMediumBluegray400,
              ),
              SizedBox(height: 42.h),
              CustomElevatedButton(
                width: 116.h,
                text: "lbl_login".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles
                        .gradientLightGreenAToLightGreenDecoration,
                buttonTextStyle: theme.textTheme.titleMedium!,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
