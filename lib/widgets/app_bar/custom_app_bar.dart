import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style {
  bgStyle,
  bgFillOnPrimaryContainer,
  bgShadowBlack900,
  bgGradientnamelightgreenA70001namelightgreen800,
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.shape,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(key: key);

  final double? height;

  final ShapeBorder? shape;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shape: shape,
      toolbarHeight: height ?? 66.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(SizeUtils.width, height ?? 66.h);
  _getStyle() {
    switch (styleType) {
      case Style.bgStyle:
        return Container(
          height: 22.h,
          width: 374.h,
          margin: EdgeInsets.only(bottom: 14.h),
        );
      case Style.bgFillOnPrimaryContainer:
        return Container(
          height: 66.h,
          width: 374.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        );
      case Style.bgShadowBlack900:
        return Container(
          height: 48.h,
          width: 374.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withValues(alpha: 0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(0, 2),
              ),
            ],
          ),
        );
      case Style.bgGradientnamelightgreenA70001namelightgreen800:
        return Stack(
          children: [
            Container(
              height: 68.h,
              width: 374.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 0.5),
                  end: Alignment(1, 0.5),
                  colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
                ),
              ),
            ),
            SizedBox(height: 68.h, width: 374.h),
          ],
        );
      default:
        return null;
    }
  }
}
