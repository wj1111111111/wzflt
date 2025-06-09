import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/new_spin_event_popup_one_bloc.dart';
import 'models/new_spin_event_popup_one_model.dart'; // ignore_for_file: must_be_immutable

class NewSpinEventPopupOneDialog extends StatelessWidget {
  const NewSpinEventPopupOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NewSpinEventPopupOneBloc>(
      create:
          (context) => NewSpinEventPopupOneBloc(
            NewSpinEventPopupOneState(
              newSpinEventPopupOneModelObj: NewSpinEventPopupOneModel(),
            ),
          )..add(NewSpinEventPopupOneInitialEvent()),
      child: NewSpinEventPopupOneDialog(),
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
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            spacing: 18,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),
              Text(
                "lbl_confirmation".tr,
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "msg_you_need_to_complete".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeBluegray400.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 50.h,
                text: "lbl_verify_now".tr,
                buttonStyle: CustomButtonStyles.fillBlueGrayBL12,
                buttonTextStyle: CustomTextStyles.titleMediumLightgreenA700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
