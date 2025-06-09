import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/coupon_center_voucher_won_bloc.dart';
import 'models/couponcenter_tab_model.dart';
import 'models/listfirst_item_model.dart';
import 'widgets/listfirst_item_widget.dart';

class CouponcenterTabPage extends StatefulWidget {
  const CouponcenterTabPage({Key? key}) : super(key: key);

  @override
  CouponcenterTabPageState createState() => CouponcenterTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CouponCenterVoucherWonBloc>(
      create:
          (context) => CouponCenterVoucherWonBloc(
            CouponCenterVoucherWonState(
              couponcenterTabModelObj: CouponcenterTabModel(),
            ),
          )..add(CouponCenterVoucherWonInitialEvent()),
      child: CouponcenterTabPage(),
    );
  }
}

class CouponcenterTabPageState extends State<CouponcenterTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 20.h),
      child: Column(children: [_buildListfirst(context)]),
    );
  }

  /// Section Widget
  Widget _buildListfirst(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        CouponCenterVoucherWonBloc,
        CouponCenterVoucherWonState,
        CouponcenterTabModel?
      >(
        selector: (state) => state.couponcenterTabModelObj,
        builder: (context, couponcenterTabModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 12.h);
            },
            itemCount: couponcenterTabModelObj?.listfirstItemList.length ?? 0,
            itemBuilder: (context, index) {
              ListfirstItemModel model =
                  couponcenterTabModelObj?.listfirstItemList[index] ??
                  ListfirstItemModel();
              return ListfirstItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
