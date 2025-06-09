import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/home_tasks_default_page_bloc.dart';
import 'models/home_tasks_default_page_model.dart';

class HomeTasksDefaultPageScreen extends StatelessWidget {
  const HomeTasksDefaultPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTasksDefaultPageBloc>(
      create:
          (context) => HomeTasksDefaultPageBloc(
            HomeTasksDefaultPageState(
              homeTasksDefaultPageModelObj: HomeTasksDefaultPageModel(),
            ),
          )..add(HomeTasksDefaultPageInitialEvent()),
      child: HomeTasksDefaultPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTasksDefaultPageBloc, HomeTasksDefaultPageState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 40.h),
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
                    "lbl_no_data".tr,
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
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        width: 8.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_notice".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }
}
