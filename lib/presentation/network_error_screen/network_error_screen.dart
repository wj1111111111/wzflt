import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/network_error_bloc.dart';
import 'models/network_error_model.dart';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NetworkErrorBloc>(
      create:
          (context) => NetworkErrorBloc(
            NetworkErrorState(networkErrorModelObj: NetworkErrorModel()),
          )..add(NetworkErrorInitialEvent()),
      child: NetworkErrorScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NetworkErrorBloc, NetworkErrorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 38.h, top: 44.h, right: 38.h),
              child: Column(
                spacing: 22,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 194.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgF0f002d24efce8d,
                            height: 184.h,
                            width: 242.h,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        Text(
                          "msg_the_network_is_not".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallBluegray400_1
                              .copyWith(height: 1.43),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 44.h,
                    width: 120.h,
                    text: "lbl_reload".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles
                            .gradientLightGreenAToLightGreenDecoration,
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
      height: 58.h,
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_ticket_records".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }
}
