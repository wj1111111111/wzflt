import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/message_bloc.dart';
import 'models/message_model.dart'; // ignore_for_file: must_be_immutable

class MessageDialog extends StatelessWidget {
  const MessageDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MessageBloc>(
      create:
          (context) =>
              MessageBloc(MessageState(messageModelObj: MessageModel()))
                ..add(MessageInitialEvent()),
      child: MessageDialog(),
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
              SizedBox(height: 10.h),
              Text("lbl_hint".tr, style: CustomTextStyles.titleMedium18),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "msg_once_the_email_is".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumBluegray400.copyWith(
                    height: 1.13,
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
