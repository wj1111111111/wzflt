import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/ph23_new_popup_register_claim_one_bloc.dart';
import 'models/ph23_new_popup_register_claim_one_model.dart'; // ignore_for_file: must_be_immutable

class Ph23NewPopupRegisterClaimOneDialog extends StatelessWidget {
  const Ph23NewPopupRegisterClaimOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Ph23NewPopupRegisterClaimOneBloc>(
      create:
          (context) => Ph23NewPopupRegisterClaimOneBloc(
            Ph23NewPopupRegisterClaimOneState(
              ph23NewPopupRegisterClaimOneModelObj:
                  Ph23NewPopupRegisterClaimOneModel(),
            ),
          )..add(Ph23NewPopupRegisterClaimOneInitialEvent()),
      child: Ph23NewPopupRegisterClaimOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [_buildStackviewone(context)],
    );
  }

  /// Section Widget
  Widget _buildStackviewone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        color: appTheme.green70003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Container(
          height: 170.h,
          padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 10.h),
          decoration: AppDecoration.fillGreen70003.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 108.h,
                width: 320.h,
                margin: EdgeInsets.only(bottom: 4.h),
                decoration: BoxDecoration(
                  color: appTheme.green90018,
                  borderRadius: BorderRadius.circular(5.h),
                  border: Border.all(
                    color: appTheme.green40003,
                    width: 2.h,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                  spacing: 18,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "msg_activate_privileges".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      "msg_1_congratulations".tr,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallGreen300.copyWith(
                        height: 1.14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
