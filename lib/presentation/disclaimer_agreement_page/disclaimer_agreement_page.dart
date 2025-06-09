import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/disclaimer_agreement_bloc.dart';
import 'models/disclaimer_agreement_model.dart'; // ignore_for_file: must_be_immutable

class DisclaimerAgreementPage extends StatelessWidget {
  const DisclaimerAgreementPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DisclaimerAgreementBloc>(
      create:
          (context) => DisclaimerAgreementBloc(
            DisclaimerAgreementState(
              disclaimerAgreementModelObj: DisclaimerAgreementModel(),
            ),
          )..add(DisclaimerAgreementInitialEvent()),
      child: DisclaimerAgreementPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisclaimerAgreementBloc, DisclaimerAgreementState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90035,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRowlogowj93one(context),
                      SizedBox(height: 20.h),
                      _buildRowuseragreemen(context),
                      SizedBox(height: 26.h),
                      Container(
                        width: 142.h,
                        margin: EdgeInsets.only(left: 28.h),
                        child: Text(
                          "msg_terms_of_service".tr,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleMediumAmberA400_1,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_by_registering_and".tr,
                                style:
                                    CustomTextStyles.bodyMediumBluegray40015_1,
                              ),
                              TextSpan(
                                text: "msg_www_jbet88_co_the".tr,
                                style:
                                    CustomTextStyles.bodyMediumLightgreenA70015,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 18.h),
                      Container(
                        width: 146.h,
                        margin: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "msg_1_grant_of_license".tr,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      SizedBox(
                        height: 436.h,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 336.h,
                              child: Text(
                                "msg_1_1_subject_to".tr,
                                maxLines: 24,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumBluegray40015
                                    .copyWith(height: 1.20),
                              ),
                            ),
                            _buildColumntopone(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowlogowj93one(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.h),
      decoration: AppDecoration.outlineBlack9005,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoWj93246x128,
            height: 28.h,
            width: 80.h,
          ),
          Spacer(),
          CustomElevatedButton(
            height: 28.h,
            width: 68.h,
            text: "lbl_login".tr,
            buttonStyle: CustomButtonStyles.fillBlueGrayTL6,
            buttonTextStyle: theme.textTheme.titleMedium!,
          ),
          Container(
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: AppDecoration.fs23.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Text(
              "lbl_register".tr,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowuseragreemen(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h, right: 24.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameOrange30004,
            height: 24.h,
            width: 26.h,
          ),
          Container(
            width: 152.h,
            margin: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_user_agreement".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCloseBlueGray20005,
            height: 16.h,
            width: 18.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumntopone(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 66.h),
        child: Column(
          spacing: 70,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: 14.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
              decoration: AppDecoration.fs4bg.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowUpAmber30002,
                    height: 6.h,
                    width: 14.h,
                  ),
                  Text(
                    "lbl_top".tr,
                    style: CustomTextStyles.bodyMediumOnPrimary,
                  ),
                ],
              ),
            ),
            Container(
              height: 20.h,
              width: 374.h,
              decoration: BoxDecoration(color: appTheme.gray90002),
            ),
          ],
        ),
      ),
    );
  }
}
