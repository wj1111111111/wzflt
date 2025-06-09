import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/wheel_spin_main_hidden_levels_bloc.dart';
import 'models/wheelspinmain_tab_model.dart';

class WheelspinmainTabPage extends StatefulWidget {
  const WheelspinmainTabPage({Key? key}) : super(key: key);

  @override
  WheelspinmainTabPageState createState() => WheelspinmainTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<WheelSpinMainHiddenLevelsBloc>(
      create:
          (context) => WheelSpinMainHiddenLevelsBloc(
            WheelSpinMainHiddenLevelsState(
              wheelspinmainTabModelObj: WheelspinmainTabModel(),
            ),
          )..add(WheelSpinMainHiddenLevelsInitialEvent()),
      child: WheelspinmainTabPage(),
    );
  }
}

class WheelspinmainTabPageState extends State<WheelspinmainTabPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 100,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 56.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 34.h,
                  width: 372.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.gray90002,
                        appTheme.gray90002.withValues(alpha: 0),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img100162,
                  height: 40.h,
                  width: 40.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 6.h),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img100161,
            height: 52.h,
            width: 48.h,
          ),
        ],
      ),
    );
  }
}
