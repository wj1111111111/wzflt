import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/popup_bloc.dart';
import 'models/popup_model.dart';

class PopupScreen extends StatelessWidget {
  const PopupScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PopupBloc>(
      create:
          (context) =>
              PopupBloc(PopupState(popupModelObj: PopupModel()))
                ..add(PopupInitialEvent()),
      child: PopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopupBloc, PopupState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: appTheme.black900.withValues(alpha: 0.7),
          body: Container(
            width: double.maxFinite,
            height: SizeUtils.height,
            decoration: AppDecoration.fillBlack9005,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.only(left: 14.h, top: 170.h, right: 14.h),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [_buildColumncloseone(context)],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumncloseone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.h),
            child: CustomIconButton(
              height: 20.h,
              width: 20.h,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineOnPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseOnprimary20x20,
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 16.h),
                Text("lbl_description".tr, style: theme.textTheme.titleMedium),
                SizedBox(height: 14.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 36.h,
                    width: 200.h,
                    margin: EdgeInsets.only(left: 24.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Text(
                          "msg_it_will_be_updated".tr,
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text(
                              "lbl_today_data".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img1Black90014x14,
                          height: 14.h,
                          width: 16.h,
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 26.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img114x14,
                        height: 14.h,
                        width: 14.h,
                        alignment: Alignment.topCenter,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "msg_today_s_income_includes".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "msg_registration_bonus_deposit".tr,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                    height: 1.14,
                  ),
                ),
                SizedBox(height: 34.h),
                CustomElevatedButton(
                  height: 54.h,
                  text: "lbl_confirm".tr,
                  buttonStyle: CustomButtonStyles.fillBlueGrayBL12,
                  buttonTextStyle: CustomTextStyles.titleMediumLightgreenA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
