import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/bonus_details_one_bloc.dart';
import 'models/bonus_details_one_model.dart'; // ignore_for_file: must_be_immutable

class BonusDetailsOneBottomsheet extends StatelessWidget {
  const BonusDetailsOneBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BonusDetailsOneBloc>(
      create:
          (context) => BonusDetailsOneBloc(
            BonusDetailsOneState(
              bonusDetailsOneModelObj: BonusDetailsOneModel(),
            ),
          )..add(BonusDetailsOneInitialEvent()),
      child: BonusDetailsOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 20.h, top: 20.h, bottom: 20.h),
      decoration: AppDecoration.fs2bg.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineBlack90010,
              child: Text(
                "lbl_notices".tr,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_the_bonus_statistics".tr,
                  style: CustomTextStyles.titleSmallBluegray40015_1,
                ),
                TextSpan(
                  text: "lbl_23_59_yesterday".tr,
                  style: CustomTextStyles.titleSmallAmberA40015,
                ),
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
