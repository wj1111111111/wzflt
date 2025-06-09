import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/home_tasks_bloc.dart';
import 'models/home_tasks_item_model.dart';
import 'models/home_tasks_model.dart';
import 'widgets/home_tasks_item_widget.dart';

class HomeTasksScreen extends StatelessWidget {
  const HomeTasksScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTasksBloc>(
      create:
          (context) =>
              HomeTasksBloc(HomeTasksState(homeTasksModelObj: HomeTasksModel()))
                ..add(HomeTasksInitialEvent()),
      child: HomeTasksScreen(),
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
            mainAxisSize: MainAxisSize.max,
            children: [_buildHometasks(context)],
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
        text: "lbl_notice".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildHometasks(BuildContext context) {
    return Expanded(
      child: BlocSelector<HomeTasksBloc, HomeTasksState, HomeTasksModel?>(
        selector: (state) => state.homeTasksModelObj,
        builder: (context, homeTasksModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.h);
            },
            itemCount: homeTasksModelObj?.homeTasksItemList.length ?? 0,
            itemBuilder: (context, index) {
              HomeTasksItemModel model =
                  homeTasksModelObj?.homeTasksItemList[index] ??
                  HomeTasksItemModel();
              return HomeTasksItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
