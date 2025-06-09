import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/information_one_bloc.dart';
import 'models/information_one_model.dart';

class InformationOneScreen extends StatelessWidget {
  const InformationOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InformationOneBloc>(
      create:
          (context) => InformationOneBloc(
            InformationOneState(informationOneModelObj: InformationOneModel()),
          )..add(InformationOneInitialEvent()),
      child: InformationOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InformationOneBloc, InformationOneState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 14.h, top: 16.h, right: 14.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [_buildColumninformati(context)],
              ),
            ),
          ),
        );
      },
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
  Widget _buildColumninformati(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 14.h, top: 12.h, right: 14.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_information_title".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Text(
                  "lbl_2023_03_05".tr,
                  style: CustomTextStyles.labelLargeBluegray70001,
                ),
              ],
            ),
          ),
          SizedBox(width: double.maxFinite, child: Divider()),
          Text(
            "msg_participe_do_sorteio".tr,
            maxLines: 16,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
              height: 1.14,
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
