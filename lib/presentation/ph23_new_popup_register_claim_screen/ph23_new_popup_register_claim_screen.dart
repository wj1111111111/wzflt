import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/ph23_new_popup_register_claim_bloc.dart';
import 'models/listcumulative_item_model.dart';
import 'models/ph23_new_popup_register_claim_model.dart';
import 'widgets/listcumulative_item_widget.dart';

class Ph23NewPopupRegisterClaimScreen extends StatelessWidget {
  const Ph23NewPopupRegisterClaimScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Ph23NewPopupRegisterClaimBloc>(
      create:
          (context) => Ph23NewPopupRegisterClaimBloc(
            Ph23NewPopupRegisterClaimState(
              ph23NewPopupRegisterClaimModelObj:
                  Ph23NewPopupRegisterClaimModel(),
            ),
          )..add(Ph23NewPopupRegisterClaimInitialEvent()),
      child: Ph23NewPopupRegisterClaimScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: appTheme.gray90002,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.fillGray,
        child: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                height: 894.h,
                padding: EdgeInsets.symmetric(vertical: 42.h),
                decoration: AppDecoration.fillBlack9003,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img322x368,
                      height: 322.h,
                      width: double.maxFinite,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img362x362,
                      height: 362.h,
                      width: 362.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img362x374,
                      height: 362.h,
                      width: double.maxFinite,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 42.h),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 696.h,
                        margin: EdgeInsets.only(top: 2.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            _buildStack(context),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 412.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img412x374,
                                      height: 412.h,
                                      width: double.maxFinite,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 120.h),
                                      child: CustomIconButton(
                                        height: 32.h,
                                        width: 32.h,
                                        padding: EdgeInsets.all(8.h),
                                        decoration: IconButtonStyleHelper.none,
                                        alignment: Alignment.bottomCenter,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCloseGray400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildColumncumulativ(context),
                            _buildStackone(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 202.h,
        margin: EdgeInsets.only(left: 36.h, right: 24.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img202x312,
              height: 202.h,
              width: double.maxFinite,
            ),
            CustomImageView(
              imagePath: ImageConstant.img2024052011321876x80,
              height: 76.h,
              width: 82.h,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncumulativ(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 30.h),
      decoration: AppDecoration.column289,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: BlocSelector<
              Ph23NewPopupRegisterClaimBloc,
              Ph23NewPopupRegisterClaimState,
              Ph23NewPopupRegisterClaimModel?
            >(
              selector: (state) => state.ph23NewPopupRegisterClaimModelObj,
              builder: (context, ph23NewPopupRegisterClaimModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 22.h);
                  },
                  itemCount:
                      ph23NewPopupRegisterClaimModelObj
                          ?.listcumulativeItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    ListcumulativeItemModel model =
                        ph23NewPopupRegisterClaimModelObj
                            ?.listcumulativeItemList[index] ??
                        ListcumulativeItemModel();
                    return ListcumulativeItemWidget(model);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 62.h,
        margin: EdgeInsets.only(left: 32.h, top: 118.h, right: 20.h),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 50.h,
                width: 72.h,
                padding: EdgeInsets.only(bottom: 6.h),
                decoration: AppDecoration.stack291,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPolygon21,
                      height: 10.h,
                      width: 36.h,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50.h,
              width: 72.h,
              padding: EdgeInsets.only(bottom: 6.h),
              decoration: AppDecoration.stack292,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPolygon22,
                    height: 10.h,
                    width: 36.h,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 52.h,
                width: 254.h,
                decoration: AppDecoration.stack293,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1275,
                      height: 52.h,
                      width: double.maxFinite,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCongratulations,
                      height: 32.h,
                      width: double.maxFinite,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 8.h),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
