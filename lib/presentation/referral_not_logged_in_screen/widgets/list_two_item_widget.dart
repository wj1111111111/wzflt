import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../models/list_two_item_model.dart';

// ignore_for_file: must_be_immutable
class ListTwoItemWidget extends StatelessWidget {
  ListTwoItemWidget(this.listTwoItemModelObj, {Key? key}) : super(key: key);

  ListTwoItemModel listTwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSenioragenti(context),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.h),
          decoration: AppDecoration.outlineOnPrimary2,
          child: Text(
            listTwoItemModelObj.frame!,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.h),
          decoration: AppDecoration.outlineOnPrimary2,
          child: Text(
            listTwoItemModelObj.frameOne!,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.h),
          decoration: AppDecoration.outlineOnPrimary2,
          child: Text(
            listTwoItemModelObj.frameTwo!,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
          decoration: AppDecoration.outlineOnPrimary2,
          child: Text(
            listTwoItemModelObj.frameThree!,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSenioragenti(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
        controller: listTwoItemModelObj.senioragenti1Controller,
        hintText: "lbl_senior_agent_i".tr,
        contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 18.h),
        borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
        fillColor: appTheme.blueGray90002,
      ),
    );
  }
}
