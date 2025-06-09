import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/coupon_center_my_vouchers_no_bloc.dart';
import 'models/couponcenter_tab1_model.dart';

class CouponcenterTab1Page extends StatefulWidget {
  const CouponcenterTab1Page({Key? key}) : super(key: key);

  @override
  CouponcenterTab1PageState createState() => CouponcenterTab1PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CouponCenterMyVouchersNoBloc>(
      create:
          (context) => CouponCenterMyVouchersNoBloc(
            CouponCenterMyVouchersNoState(
              couponcenterTab1ModelObj: CouponcenterTab1Model(),
            ),
          )..add(CouponCenterMyVouchersNoInitialEvent()),
      child: CouponcenterTab1Page(),
    );
  }
}

class CouponcenterTab1PageState extends State<CouponcenterTab1Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 66.h, vertical: 50.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 4,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup278,
                  height: 184.h,
                  width: double.maxFinite,
                ),
                Text(
                  "msg_oops_there_is_no".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
