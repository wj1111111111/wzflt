import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listaccount_item_model.dart';

// ignore_for_file: must_be_immutable
class ListaccountItemWidget extends StatelessWidget {
  ListaccountItemWidget(this.listaccountItemModelObj, {Key? key})
    : super(key: key);

  ListaccountItemModel listaccountItemModelObj;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.h),
          decoration: AppDecoration.outline1.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Text(
                      listaccountItemModelObj.account!,
                      style: CustomTextStyles.titleSmallBluegray70001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        listaccountItemModelObj.tf!,
                        style: CustomTextStyles.titleSmallBluegray400_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: double.maxFinite, child: Divider()),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Text(
                      listaccountItemModelObj.type!,
                      style: CustomTextStyles.titleSmallBluegray70001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        listaccountItemModelObj.brazilpxi!,
                        style: CustomTextStyles.titleSmallBluegray400_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: double.maxFinite, child: Divider()),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Text(
                      listaccountItemModelObj.pixtype!,
                      style: CustomTextStyles.titleSmallBluegray70001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        listaccountItemModelObj.cpf!,
                        style: CustomTextStyles.titleSmallBluegray400_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: double.maxFinite, child: Divider()),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Text(
                      listaccountItemModelObj.name!,
                      style: CustomTextStyles.titleSmallBluegray70001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        listaccountItemModelObj.lucasmartins!,
                        style: CustomTextStyles.titleSmallBluegray400_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: double.maxFinite, child: Divider()),
              Text(
                listaccountItemModelObj.remark!,
                style: CustomTextStyles.titleSmallBluegray70001,
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
