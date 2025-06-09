import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/popup_claim_bloc.dart';
import 'models/popup_claim_model.dart';
import 'models/popup_claim_one_item_model.dart';
import 'widgets/popup_claim_one_item_widget.dart';

class PopupClaimScreen extends StatelessWidget {
  const PopupClaimScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PopupClaimBloc>(
      create:
          (context) => PopupClaimBloc(
            PopupClaimState(popupClaimModelObj: PopupClaimModel()),
          )..add(PopupClaimInitialEvent()),
      child: PopupClaimScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 1028.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1061,
                    height: 1028.h,
                    width: 344.h,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 956.h,
                      padding: EdgeInsets.symmetric(vertical: 82.h),
                      decoration: AppDecoration.fillBlack9003,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img,
                            height: 322.h,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img362x362,
                            height: 362.h,
                            width: 362.h,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 694.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildStack(context),
                                  Container(
                                    height: 614.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        _buildStackcloseone(context),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: 452.h,
                                            margin: EdgeInsets.only(
                                              left: 12.h,
                                              right: 16.h,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    height: 372.h,
                                                    width: 340.h,
                                                    margin: EdgeInsets.only(
                                                      bottom: 12.h,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            14.h,
                                                          ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                          0.5,
                                                          0,
                                                        ),
                                                        end: Alignment(
                                                          0.5,
                                                          1.04,
                                                        ),
                                                        colors: [
                                                          appTheme
                                                              .lightGreen300,
                                                          appTheme
                                                              .lightGreen100,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 452.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      _buildStackone(context),
                                                      _buildStackgezione(
                                                        context,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img20240520113218,
                                                        height: 76.h,
                                                        width: 82.h,
                                                        alignment:
                                                            Alignment.topCenter,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 362.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img362x374,
              height: 362.h,
              width: double.maxFinite,
            ),
            CustomImageView(
              imagePath: ImageConstant.img202x312,
              height: 202.h,
              width: 314.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 12.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackcloseone(BuildContext context) {
    return Container(
      height: 392.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img392x374,
            height: 392.h,
            width: double.maxFinite,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseGray90001,
            height: 32.h,
            width: 34.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 84.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Container(
      height: 362.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.1,
            child: CustomImageView(
              imagePath: ImageConstant.img362x346,
              height: 362.h,
              width: double.maxFinite,
            ),
          ),
          Container(
            height: 350.h,
            margin: EdgeInsets.only(left: 4.h, right: 14.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.17,
                  child: CustomImageView(
                    imagePath: ImageConstant.img350x326,
                    height: 350.h,
                    width: double.maxFinite,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 22.h),
                    child: BlocSelector<
                      PopupClaimBloc,
                      PopupClaimState,
                      PopupClaimModel?
                    >(
                      selector: (state) => state.popupClaimModelObj,
                      builder: (context, popupClaimModelObj) {
                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 24.h);
                          },
                          itemCount:
                              popupClaimModelObj
                                  ?.popupClaimOneItemList
                                  .length ??
                              0,
                          itemBuilder: (context, index) {
                            PopupClaimOneItemModel model =
                                popupClaimModelObj
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackgezione(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 4.h, top: 68.h),
        color: appTheme.lightGreenA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderTL14,
        ),
        child: Container(
          height: 44.h,
          decoration: AppDecoration.fs23.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL14,
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Opacity(
                opacity: 0.15,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGezi,
                  height: 44.h,
                  width: 174.h,
                  radius: BorderRadius.vertical(top: Radius.circular(14.h)),
                  alignment: Alignment.centerLeft,
                ),
              ),
              SizedBox(
                height: 44.h,
                width: 222.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Opacity(
                      opacity: 0.15,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGezi44x168,
                        height: 44.h,
                        width: 170.h,
                        radius: BorderRadius.vertical(
                          top: Radius.circular(14.h),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: AppDecoration.outlineBlack9004,
                        child: Text(
                          "lbl10".tr.toUpperCase(),
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.headlineLargeAmberA100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
