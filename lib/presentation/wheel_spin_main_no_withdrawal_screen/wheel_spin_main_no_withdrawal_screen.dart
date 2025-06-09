import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/wheel_spin_main_no_withdrawal_bloc.dart';
import 'models/wheel_spin_main_no_withdrawal_model.dart';

class WheelSpinMainNoWithdrawalScreen extends StatelessWidget {
  const WheelSpinMainNoWithdrawalScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WheelSpinMainNoWithdrawalBloc>(
      create:
          (context) => WheelSpinMainNoWithdrawalBloc(
            WheelSpinMainNoWithdrawalState(
              wheelSpinMainNoWithdrawalModelObj:
                  WheelSpinMainNoWithdrawalModel(),
            ),
          )..add(WheelSpinMainNoWithdrawalInitialEvent()),
      child: WheelSpinMainNoWithdrawalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      WheelSpinMainNoWithdrawalBloc,
      WheelSpinMainNoWithdrawalState
    >(
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
                spacing: 4,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup278,
                    height: 184.h,
                    width: 242.h,
                  ),
                  Text(
                    "msg_oops_there_is_no".tr,
                    style: CustomTextStyles.titleSmallBluegray400_1,
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
      height: 60.h,
      leadingWidth: 22.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 16.h),
      ),
      title: AppbarSubtitleTwo(
        text: "msg_withdrawal_history".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }
}
