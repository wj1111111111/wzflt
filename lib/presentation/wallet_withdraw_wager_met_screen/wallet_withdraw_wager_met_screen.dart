import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/wallet_withdraw_wager_met_bloc.dart';
import 'models/listpixmobile_item_model.dart';
import 'models/wallet_withdraw_wager_met_model.dart';
import 'widgets/listpixmobile_item_widget.dart';

class WalletWithdrawWagerMetScreen extends StatelessWidget {
  const WalletWithdrawWagerMetScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletWithdrawWagerMetBloc>(
      create:
          (context) => WalletWithdrawWagerMetBloc(
            WalletWithdrawWagerMetState(
              walletWithdrawWagerMetModelObj: WalletWithdrawWagerMetModel(),
            ),
          )..add(WalletWithdrawWagerMetInitialEvent()),
      child: WalletWithdrawWagerMetScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 12.h, top: 16.h, right: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildListpixmobile(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_wallet".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgLock),
        AppbarSubtitleThree(
          text: "lbl_1980_00".tr,
          margin: EdgeInsets.only(left: 8.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img1,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(left: 11.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildListpixmobile(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: BlocSelector<
          WalletWithdrawWagerMetBloc,
          WalletWithdrawWagerMetState,
          WalletWithdrawWagerMetModel?
        >(
          selector: (state) => state.walletWithdrawWagerMetModelObj,
          builder: (context, walletWithdrawWagerMetModelObj) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 12.h);
              },
              itemCount:
                  walletWithdrawWagerMetModelObj
                      ?.listpixmobileItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ListpixmobileItemModel model =
                    walletWithdrawWagerMetModelObj
                        ?.listpixmobileItemList[index] ??
                    ListpixmobileItemModel();
                return ListpixmobileItemWidget(model);
              },
            );
          },
        ),
      ),
    );
  }
}
