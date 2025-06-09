import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import 'bloc/information_three_bloc.dart';
import 'models/information_item_model.dart';
import 'models/information_three_model.dart';
import 'widgets/information_item_widget.dart';

class InformationThreeScreen extends StatelessWidget {
  const InformationThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InformationThreeBloc>(
      create:
          (context) => InformationThreeBloc(
            InformationThreeState(
              informationThreeModelObj: InformationThreeModel(),
            ),
          )..add(InformationThreeInitialEvent()),
      child: InformationThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _buildInformation(context),
                    SizedBox(height: 52.h),
                    Container(
                      height: 40.h,
                      width: 42.h,
                      margin: EdgeInsets.only(right: 14.h),
                      padding: EdgeInsets.only(right: 4.h),
                      decoration: AppDecoration.fs15.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup12694,
                            height: 20.h,
                            width: 28.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup12707,
                      height: 40.h,
                      width: 42.h,
                      margin: EdgeInsets.only(right: 14.h),
                    ),
                    SizedBox(height: 142.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildStackallloaded(context),
      floatingActionButton: _buildFloatingactionb(context),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        width: 8.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_notifications".tr,
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
  Widget _buildInformation(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: BlocSelector<
          InformationThreeBloc,
          InformationThreeState,
          InformationThreeModel?
        >(
          selector: (state) => state.informationThreeModelObj,
          builder: (context, informationThreeModelObj) {
            return ListView.separated(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.h);
              },
              itemCount:
                  informationThreeModelObj?.informationItemList.length ?? 0,
              itemBuilder: (context, index) {
                InformationItemModel model =
                    informationThreeModelObj?.informationItemList[index] ??
                    InformationItemModel();
                return InformationItemWidget(model);
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackallloaded(BuildContext context) {
    return Container(
      height: 64.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                "lbl_all_loaded".tr,
                style: CustomTextStyles.titleSmallBluegray200_1,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(14.h),
                  decoration: AppDecoration.outlineBlack9003,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          border: Border.all(
                            color: appTheme.blueGray400,
                            width: 2.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_select_all".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 34.h,
                        width: 94.h,
                        text: "lbl_delete".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles.gradientRedToRedTL6Decoration,
                        buttonTextStyle: theme.textTheme.titleMedium!,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingactionb(BuildContext context) {
    return CustomFloatingButton(
      height: 40,
      width: 40,
      decoration: FloatingButtonStyleHelper.gradientGrayToBlueGray,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup911,
        height: 20.0.h,
        width: 20.0.h,
      ),
    );
  }
}
