import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/coupon_center_my_vouchers_bloc.dart';
import 'models/coupon_center_my_vouchers_model.dart';
import 'models/listred_package_item_model.dart';
import 'widgets/listred_package_item_widget.dart'; // ignore_for_file: must_be_immutable

class CouponCenterMyVouchersPage extends StatefulWidget {
  const CouponCenterMyVouchersPage({Key? key}) : super(key: key);

  @override
  CouponCenterMyVouchersPageState createState() =>
      CouponCenterMyVouchersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CouponCenterMyVouchersBloc>(
      create:
          (context) => CouponCenterMyVouchersBloc(
            CouponCenterMyVouchersState(
              couponCenterMyVouchersModelObj: CouponCenterMyVouchersModel(),
            ),
          )..add(CouponCenterMyVouchersInitialEvent()),
      child: CouponCenterMyVouchersPage(),
    );
  }
}

class CouponCenterMyVouchersPageState extends State<CouponCenterMyVouchersPage>
    with AutomaticKeepAliveClientMixin<CouponCenterMyVouchersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 16.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildListredpackage(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListredpackage(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        CouponCenterMyVouchersBloc,
        CouponCenterMyVouchersState,
        CouponCenterMyVouchersModel?
      >(
        selector: (state) => state.couponCenterMyVouchersModelObj,
        builder: (context, couponCenterMyVouchersModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 14.h);
            },
            itemCount:
                couponCenterMyVouchersModelObj?.listredPackageItemList.length ??
                0,
            itemBuilder: (context, index) {
              ListredPackageItemModel model =
                  couponCenterMyVouchersModelObj
                      ?.listredPackageItemList[index] ??
                  ListredPackageItemModel();
              return ListredPackageItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
