import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Home, Romax, Promotion, Diamondparty, Teams }

// ignore_for_file: must_be_immutable
class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

// ignore_for_file: must_be_immutable
class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
      isSelected: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame1003,
      activeIcon: ImageConstant.imgFrame1003,
      title: "lbl_roma_x".tr,
      type: BottomBarEnum.Romax,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPromotion,
      activeIcon: ImageConstant.imgNavPromotion,
      title: "lbl_promotion".tr,
      type: BottomBarEnum.Promotion,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame1003,
      activeIcon: ImageConstant.imgFrame1003,
      title: "lbl_diamond_party".tr,
      type: BottomBarEnum.Diamondparty,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavTeams,
      activeIcon: ImageConstant.imgNavTeams,
      title: "lbl_teams".tr,
      type: BottomBarEnum.Teams,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 84.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(bottomMenuList.length, (index) {
            return InkWell(
              onTap: () {
                for (var element in bottomMenuList) {
                  element.isSelected = false;
                }
                bottomMenuList[index].isSelected = true;
                widget.onChanged?.call(bottomMenuList[index].type);
                setState(() {});
              },
              child:
                  bottomMenuList[index].isSelected
                      ? SizedBox(
                        width: 34.h,
                        child: Column(
                          spacing: 2,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: bottomMenuList[index].activeIcon,
                              height: 20.h,
                              width: double.maxFinite,
                              color: appTheme.lightGreenA700,
                            ),
                            Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles.labelLargeLightgreenA700
                                  .copyWith(color: appTheme.lightGreenA700),
                            ),
                          ],
                        ),
                      )
                      : SizedBox(
                        width: 68.h,
                        child: Column(
                          spacing: 14,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 52.h,
                                decoration: AppDecoration.outlineBlack900,
                                child: Text(
                                  bottomMenuList[index].title ?? "",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.labelLargeNotoSans
                                      .copyWith(color: appTheme.blueGray400),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: bottomMenuList[index].icon,
                              height: 18.h,
                              width: 36.h,
                            ),
                          ],
                        ),
                      ),
            );
          }),
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
