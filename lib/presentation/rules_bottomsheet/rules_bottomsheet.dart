import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/rules_bloc.dart';
import 'models/rules_model.dart'; // ignore_for_file: must_be_immutable

class RulesBottomsheet extends StatelessWidget {
  const RulesBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RulesBloc>(
      create:
          (context) =>
              RulesBloc(RulesState(rulesModelObj: RulesModel()))
                ..add(RulesInitialEvent()),
      child: RulesBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.h),
      decoration: AppDecoration.fillBluegray80011.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseBlueGray30002,
            height: 16.h,
            width: 24.h,
            alignment: Alignment.centerRight,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_rule".tr,
              style: CustomTextStyles.titleMediumSFProText,
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg_when_the_accumulated".tr,
              maxLines: 14,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumOnPrimary,
            ),
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }
}
