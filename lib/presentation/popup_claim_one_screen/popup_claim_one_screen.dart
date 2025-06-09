import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/popup_claim_one_bloc.dart';
import 'models/popup_claim_one_item_model.dart';
import 'models/popup_claim_one_model.dart';
import 'widgets/popup_claim_one_item_widget.dart';

class PopupClaimOneScreen extends StatelessWidget {
  const PopupClaimOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PopupClaimOneBloc>(
      create:
          (context) => PopupClaimOneBloc(
            PopupClaimOneState(popupClaimOneModelObj: PopupClaimOneModel()),
          )..add(PopupClaimOneInitialEvent()),
      child: PopupClaimOneScreen(),
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
        decoration: AppDecoration.fillGray90002,
        child: SafeArea(
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
                _buildStack(context),
                CustomImageView(
                  imagePath: ImageConstant.img412x374,
                  height: 412.h,
                  width: double.maxFinite,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 106.h),
                ),
                _buildColumnview(context),
                _buildStackone(context),
              ],
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
        margin: EdgeInsets.only(left: 36.h, top: 2.h, right: 24.h),
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
  Widget _buildColumnview(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 16.h, top: 160.h, right: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 30.h),
        decoration: AppDecoration.column387,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 6.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: BlocSelector<
                  PopupClaimOneBloc,
                  PopupClaimOneState,
                  PopupClaimOneModel?
                >(
                  selector: (state) => state.popupClaimOneModelObj,
                  builder: (context, popupClaimOneModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 22.h);
                      },
                      itemCount:
                          popupClaimOneModelObj?.popupClaimOneItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        PopupClaimOneItemModel model =
                            popupClaimOneModelObj
                                ?.popupClaimOneItemList[index] ??
                            PopupClaimOneItemModel();
                        return PopupClaimOneItemWidget(model);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 62.h,
        margin: EdgeInsets.only(left: 32.h, top: 122.h, right: 20.h),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 50.h,
                width: 72.h,
                padding: EdgeInsets.only(bottom: 6.h),
                decoration: AppDecoration.stack389,
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
              decoration: AppDecoration.stack390,
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
                decoration: AppDecoration.stack391,
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
