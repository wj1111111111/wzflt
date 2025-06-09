import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/registration_success_guide_bloc.dart';
import 'models/listone_item_model.dart';
import 'models/registration_success_guide_model.dart';
import 'widgets/listone_item_widget.dart';

class RegistrationSuccessGuideScreen extends StatelessWidget {
  const RegistrationSuccessGuideScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistrationSuccessGuideBloc>(
      create:
          (context) => RegistrationSuccessGuideBloc(
            RegistrationSuccessGuideState(
              registrationSuccessGuideModelObj: RegistrationSuccessGuideModel(),
            ),
          )..add(RegistrationSuccessGuideInitialEvent()),
      child: RegistrationSuccessGuideScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90035,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 160,
                children: [
                  SizedBox(
                    height: 556.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildStackoneone(context),
                        _buildListone(context),
                      ],
                    ),
                  ),
                  _buildRowvectorone(context),
                  SizedBox(height: 22.h),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildRowcopyright(context),
    );
  }

  /// Section Widget
  Widget _buildStackoneone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 284.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1284x374,
              height: 284.h,
              width: double.maxFinite,
            ),
            SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    height: 56.h,
                    width: 56.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.outlineLightGreenA,
                    child: CustomImageView(
                      imagePath: ImageConstant.img1Onprimary56x56,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "msg_congratulations2".tr,
                    style: CustomTextStyles.titleMediumLightgreenA70018,
                  ),
                  Text(
                    "msg_you_have_successfully".tr,
                    style: CustomTextStyles.bodyLargeBluegray400,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: BlocSelector<
        RegistrationSuccessGuideBloc,
        RegistrationSuccessGuideState,
        RegistrationSuccessGuideModel?
      >(
        selector: (state) => state.registrationSuccessGuideModelObj,
        builder: (context, registrationSuccessGuideModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 14.h);
            },
            itemCount:
                registrationSuccessGuideModelObj?.listoneItemList.length ?? 0,
            itemBuilder: (context, index) {
              ListoneItemModel model =
                  registrationSuccessGuideModelObj?.listoneItemList[index] ??
                  ListoneItemModel();
              return ListoneItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowvectorone(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.h, right: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector20x22,
            height: 20.h,
            width: 24.h,
            margin: EdgeInsets.only(bottom: 2.h),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(
                "lbl_home".tr,
                style: CustomTextStyles.bodyMediumLightgreenA700.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_deposit".tr,
              style: CustomTextStyles.bodyMediumLightgreenA700.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector20x20,
            height: 20.h,
            width: 22.h,
            margin: EdgeInsets.only(left: 6.h, right: 4.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcopyright(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.h),
      decoration: AppDecoration.fs3qbg,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                "msg_copyright_jbet88".tr,
                style: CustomTextStyles.titleMediumBluegray400,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClockRedA400,
            height: 22.h,
            width: 24.h,
            margin: EdgeInsets.only(right: 14.h),
          ),
        ],
      ),
    );
  }
}
