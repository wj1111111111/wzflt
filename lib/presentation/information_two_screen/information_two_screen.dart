import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/information_two_bloc.dart';
import 'models/expandablelistm_item_model.dart';
import 'models/information_two_model.dart';
import 'widgets/expandablelistm_item_widget.dart';

class InformationTwoScreen extends StatelessWidget {
  const InformationTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InformationTwoBloc>(
      create:
          (context) => InformationTwoBloc(
            InformationTwoState(informationTwoModelObj: InformationTwoModel()),
          )..add(InformationTwoInitialEvent()),
      child: InformationTwoScreen(),
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
          padding: EdgeInsets.only(left: 14.h, top: 16.h, right: 14.h),
          child: Column(
            spacing: 172,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildExpandablelistm(context),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12786,
                height: 40.h,
                width: 42.h,
              ),
            ],
          ),
        ),
      ),
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
  Widget _buildExpandablelistm(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocSelector<
        InformationTwoBloc,
        InformationTwoState,
        InformationTwoModel?
      >(
        selector: (state) => state.informationTwoModelObj,
        builder: (context, informationTwoModelObj) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount:
                informationTwoModelObj?.expandablelistmItemList.length ?? 0,
            itemBuilder: (context, index) {
              ExpandablelistmItemModel model =
                  informationTwoModelObj?.expandablelistmItemList[index] ??
                  ExpandablelistmItemModel();
              return ExpandablelistmItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
