import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/message_empty_bloc.dart';
import 'models/message_empty_model.dart';

class MessageEmptyScreen extends StatelessWidget {
  const MessageEmptyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MessageEmptyBloc>(
      create:
          (context) => MessageEmptyBloc(
            MessageEmptyState(messageEmptyModelObj: MessageEmptyModel()),
          )..add(MessageEmptyInitialEvent()),
      child: MessageEmptyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageEmptyBloc, MessageEmptyState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 100.h),
              child: Column(
                spacing: 12,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup944,
                    height: 184.h,
                    width: 242.h,
                  ),
                  Text(
                    "lbl_no_entries".tr,
                    style: CustomTextStyles.titleMediumBluegray400,
                  ),
                ],
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
}
