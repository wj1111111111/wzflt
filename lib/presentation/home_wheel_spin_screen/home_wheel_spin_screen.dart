import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/home_wheel_spin_bloc.dart';
import 'models/home_wheel_spin_model.dart';
import 'models/listpassword_item_model.dart';
import 'widgets/listpassword_item_widget.dart';

class HomeWheelSpinScreen extends StatelessWidget {
  const HomeWheelSpinScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeWheelSpinBloc>(
      create:
          (context) => HomeWheelSpinBloc(
            HomeWheelSpinState(homeWheelSpinModelObj: HomeWheelSpinModel()),
          )..add(HomeWheelSpinInitialEvent()),
      child: HomeWheelSpinScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: theme.colorScheme.onPrimary,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.fillOnPrimary2,
        child: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                height: SizeUtils.height,
                padding: EdgeInsets.symmetric(vertical: 66.h),
                decoration: AppDecoration.fillBlack9004,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgF3,
                      height: 98.h,
                      width: double.maxFinite,
                      alignment: Alignment.topCenter,
                    ),
                    _buildStack187dtlr3on(context),
                    _buildStackbgone(context),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 556.h,
                        margin: EdgeInsets.only(bottom: 40.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Opacity(
                              opacity: 0.85,
                              child: CustomImageView(
                                imagePath: ImageConstant.img556x374,
                                height: 556.h,
                                width: double.maxFinite,
                              ),
                            ),
                            Opacity(
                              opacity: 0.35,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgF1528x374,
                                height: 528.h,
                                width: double.maxFinite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 586.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                            opacity: 0.35,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgF2,
                              height: 586.h,
                              width: double.maxFinite,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 504.h,
                              margin: EdgeInsets.only(bottom: 20.h),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  _buildStackone(context),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildStackfive(context),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 46.h,
                                            right: 48.h,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 34.h),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 46.h,
                                            right: 48.h,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 12.h),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 68.h,
                                            right: 72.h,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserAmberA40004,
                                                height: 8.h,
                                                width: 10.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.h, right: 20.h),
                      child: CustomIconButton(
                        height: 32.h,
                        width: 32.h,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillGrayTL16,
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCloseOnprimary20x20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack187dtlr3on(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 102.h,
        margin: EdgeInsets.only(left: 16.h, top: 66.h, right: 12.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img187dtlr31,
              height: 102.h,
              width: double.maxFinite,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 36.h,
                          width: 44.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-(10 / 360)),
                                  child: Text(
                                    "lbl_g".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.h),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-(8 / 360)),
                                  child: Text(
                                    "lbl_e2".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-(7 / 360)),
                                  child: Text(
                                    "lbl_t".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-(5 / 360)),
                          child: Text(
                            "lbl2".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-(4 / 360)),
                        child: Text(
                          "lbl_52".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-(2 / 360)),
                        child: Text(
                          "lbl_0".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-(1 / 360)),
                        child: Text(
                          "lbl_0".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-(-1 / 360)),
                          child: Text(
                            "lbl_f".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-(-2 / 360)),
                          child: Text(
                            "lbl_o".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(-(-3 / 360)),
                          child: Text(
                            "lbl_r".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 38.h,
                          width: 48.h,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-(-4 / 360)),
                                  child: Text(
                                    "lbl_f".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-(-5 / 360)),
                                    child: Text(
                                      "lbl_r".tr,
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 14.h),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-(-6 / 360)),
                                  child: Text(
                                    "lbl_e2".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(-(-8 / 360)),
                                child: Text(
                                  "lbl_e2".tr,
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackbgone(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 132.h,
        margin: EdgeInsets.only(left: 36.h, right: 36.h, bottom: 42.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 110.h,
                width: 260.h,
                margin: EdgeInsets.only(top: 6.h),
                decoration: BoxDecoration(
                  color: appTheme.gray90072,
                  borderRadius: BorderRadius.circular(12.h),
                  border: Border.all(
                    color: appTheme.yellow60003.withValues(alpha: 0.3),
                    width: 4.h,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              ),
            ),
            Container(
              height: 132.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1132x300,
                    height: 132.h,
                    width: double.maxFinite,
                  ),
                  BlocSelector<
                    HomeWheelSpinBloc,
                    HomeWheelSpinState,
                    HomeWheelSpinModel?
                  >(
                    selector: (state) => state.homeWheelSpinModelObj,
                    builder: (context, homeWheelSpinModelObj) {
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            homeWheelSpinModelObj
                                ?.listpasswordItemList
                                .length ??
                            0,
                        itemBuilder: (context, index) {
                          ListpasswordItemModel model =
                              homeWheelSpinModelObj
                                  ?.listpasswordItemList[index] ??
                              ListpasswordItemModel();
                          return ListpasswordItemWidget(model);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 290.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img290x374,
              height: 290.h,
              width: double.maxFinite,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 230.h,
                width: 294.h,
                margin: EdgeInsets.only(top: 6.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 138.h,
                        width: 112.h,
                        margin: EdgeInsets.only(top: 36.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFc2,
                              height: 138.h,
                              width: double.maxFinite,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage1108,
                              height: 62.h,
                              width: 64.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 12.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBaoshi1,
                      height: 140.h,
                      width: 142.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 30.h),
                    ),
                    SizedBox(
                      height: 230.h,
                      width: 186.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage771,
                            height: 230.h,
                            width: double.maxFinite,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img74x74,
                            height: 74.h,
                            width: 76.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 40.h, right: 12.h),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage110084x84,
                      height: 84.h,
                      width: 86.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 44.h, top: 42.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img0ab53a5f627c836,
                      height: 82.h,
                      width: 84.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 8.h, right: 42.h),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackfive(BuildContext context) {
    return SizedBox(
      height: 370.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 28.h),
                        padding: EdgeInsets.symmetric(horizontal: 42.h),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 94.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 94.h,
                                        width: 94.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .img60247024a38f18f,
                                              height: 94.h,
                                              width: double.maxFinite,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgSettingsBlueGray100,
                                              height: 20.h,
                                              width: 34.h,
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                bottom: 2.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgC4950f6b1abbb18,
                                      height: 14.h,
                                      width: 86.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 94.h,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                        height: 94.h,
                                        width: 92.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .img60247024a38f18f94x90,
                                              height: 94.h,
                                              width: double.maxFinite,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgGroup2131329458,
                                              height: 14.h,
                                              width: 26.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                bottom: 6.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgC4950f6b1abbb1814x84,
                                      height: 14.h,
                                      width: 86.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage1146,
            height: 126.h,
            width: 326.h,
            alignment: Alignment.bottomCenter,
          ),
          Container(
            height: 370.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131330042,
                  height: 302.h,
                  width: 304.h,
                ),
                Container(
                  height: 370.h,
                  padding: EdgeInsets.all(32.h),
                  decoration: AppDecoration.stack313,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 122.h,
                          width: 50.h,
                          margin: EdgeInsets.only(top: 22.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSubtract122x48,
                                height: 122.h,
                                width: double.maxFinite,
                                radius: BorderRadius.circular(5.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgDownload,
                                height: 16.h,
                                width: 18.h,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 8.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder72,
                        ),
                        child: Container(
                          height: 146.h,
                          width: 148.h,
                          decoration: AppDecoration.gradientBlackToBlack900
                              .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder72,
                              ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 94.h,
                                width: 96.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img94x94,
                                      height: 94.h,
                                      width: 94.h,
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 76.h,
                                        width: 66.h,
                                        margin: EdgeInsets.only(top: 4.h),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  bottom: 18.h,
                                                ),
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack9006,
                                                child: Text(
                                                  "lbl_12".tr,
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      CustomTextStyles
                                                          .headlineSmallSFProText,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: double.maxFinite,
                                              child: Column(
                                                spacing: 18,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .img100000Ispt,
                                                    height: 34.h,
                                                    width: double.maxFinite,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgFrame2131329923,
                                                    height: 24.h,
                                                    width: double.maxFinite,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 12.h,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 32.h,
                                  margin: EdgeInsets.only(left: 6.h, top: 4.h),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-(137 / 360)),
                                    child: Text(
                                      "lbl_unknow".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(height: 2.00),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 32.h,
                                  margin: EdgeInsets.only(
                                    right: 10.h,
                                    bottom: 8.h,
                                  ),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-(-46 / 360)),
                                    child: Text(
                                      "lbl_unknow".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(height: 2.00),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 30.h,
                                  margin: EdgeInsets.only(bottom: 16.h),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-(-27 / 360)),
                                    child: Text(
                                      "lbl_999_99".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(height: 2.00),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 20.h,
                                  margin: EdgeInsets.only(right: 40.h),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-(-70 / 360)),
                                    child: Text(
                                      "lbl_999_99".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(height: 2.00),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 26.h,
                                  margin: EdgeInsets.only(
                                    top: 8.h,
                                    right: 16.h,
                                  ),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-(48 / 360)),
                                    child: Text(
                                      "lbl_999_99".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(height: 2.00),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(
                                      -(-180 / 360),
                                    ),
                                    child: Text(
                                      "lbl_1_99".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 12.h,
                          margin: EdgeInsets.only(top: 66.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(89 / 360)),
                            child: Text(
                              "lbl_999_99".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20.h,
                          margin: EdgeInsets.only(top: 66.h, right: 116.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(70 / 360)),
                            child: Text(
                              "lbl_unknow".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 36.h,
                          margin: EdgeInsets.only(left: 68.h, bottom: 92.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(-157 / 360)),
                            child: Text(
                              "lbl_unknow".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 22.h,
                          margin: EdgeInsets.only(left: 114.h, bottom: 38.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(-112 / 360)),
                            child: Text(
                              "lbl_unknow".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 42.h,
                          margin: EdgeInsets.only(right: 58.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMargin,
                                height: 22.h,
                                width: 24.h,
                              ),
                              SizedBox(height: 32.h),
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(-(22 / 360)),
                                child: Text(
                                  "lbl_one_more".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.labelMedium!.copyWith(
                                    height: 2.00,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "lbl_2000_002".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                              SizedBox(height: 62.h),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage16,
                                height: 22.h,
                                width: 24.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 36.h,
                          margin: EdgeInsets.only(left: 70.h, top: 112.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(158 / 360)),
                            child: Text(
                              "lbl_2000_002".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 28.h,
                          margin: EdgeInsets.only(left: 90.h, bottom: 88.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(-135 / 360)),
                            child: Text(
                              "lbl_999_99".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 22.h,
                          margin: EdgeInsets.only(left: 112.h, top: 58.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(112 / 360)),
                            child: Text(
                              "lbl_one_more".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 8.h,
                          margin: EdgeInsets.only(bottom: 30.h),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(-89 / 360)),
                            child: Text(
                              "lbl_one_more".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 36.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 5.h,
                                      margin: EdgeInsets.only(top: 2.h),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage16x16,
                                      height: 16.h,
                                      width: 16.h,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(left: 18.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 4.h,
                                      width: 4.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 5.h,
                                      width: 5.h,
                                      margin: EdgeInsets.only(right: 10.h),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 14.h),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage16x16,
                                      height: 20.h,
                                      width: 20.h,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 4.h,
                                      ),
                                    ),
                                    SizedBox(height: 24.h),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgB928f94165e972820x20,
                                      height: 20.h,
                                      width: 22.h,
                                    ),
                                    SizedBox(height: 20.h),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgMargin20x20,
                                      height: 20.h,
                                      width: 22.h,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    SizedBox(height: 14.h),
                                    Container(
                                      height: 5.h,
                                      width: 5.h,
                                      margin: EdgeInsets.only(right: 10.h),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 4.h,
                                      width: 4.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Column(
                                    spacing: 46,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 5.h,
                                            width: 5.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.h),
                                              gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                                  appTheme.yellow10005,
                                                  appTheme.amber70005,
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 4.h,
                                            width: 4.h,
                                            decoration: BoxDecoration(
                                              color:
                                                  theme.colorScheme.onPrimary,
                                              borderRadius:
                                                  BorderRadius.circular(2.h),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: appTheme.orangeA10001,
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 5.h,
                                            width: 5.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.h),
                                              gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                                  appTheme.yellow10005,
                                                  appTheme.amber70005,
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 4.h,
                                              width: 4.h,
                                              decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.onPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        appTheme.orangeA10001,
                                                    spreadRadius: 2.h,
                                                    blurRadius: 2.h,
                                                    offset: Offset(0, 0),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage16x16,
                        height: 16.h,
                        width: 18.h,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 28.h),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 34.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage16,
                                      height: 20.h,
                                      width: 20.h,
                                      alignment: Alignment.center,
                                    ),
                                    Container(
                                      height: 5.h,
                                      width: 5.h,
                                      margin: EdgeInsets.only(
                                        left: 16.h,
                                        top: 4.h,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage16,
                        height: 22.h,
                        width: 24.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 58.h, top: 56.h),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 70.h),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 26.h),
                                          child: Column(
                                            spacing: 46,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    height: 4.h,
                                                    width: 4.h,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          theme
                                                              .colorScheme
                                                              .onPrimary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            2.h,
                                                          ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              appTheme
                                                                  .orangeA10001,
                                                          spreadRadius: 2.h,
                                                          blurRadius: 2.h,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 5.h,
                                                    width: 5.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            2.h,
                                                          ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                          0.5,
                                                          0,
                                                        ),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.yellow10005,
                                                          appTheme.amber70005,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                      height: 4.h,
                                                      width: 4.h,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            theme
                                                                .colorScheme
                                                                .onPrimary,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              2.h,
                                                            ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                appTheme
                                                                    .orangeA10001,
                                                            spreadRadius: 2.h,
                                                            blurRadius: 2.h,
                                                            offset: Offset(
                                                              0,
                                                              0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 5.h,
                                                    width: 5.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            2.h,
                                                          ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                          0.5,
                                                          0,
                                                        ),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.yellow10005,
                                                          appTheme.amber70005,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgB928f94165e972824x24,
                                                  height: 24.h,
                                                  width: 26.h,
                                                  alignment:
                                                      Alignment.centerRight,
                                                ),
                                                SizedBox(height: 20.h),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgMargin16x16,
                                                  height: 16.h,
                                                  width: 18.h,
                                                ),
                                                SizedBox(height: 24.h),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage16,
                                                  height: 20.h,
                                                  width: 22.h,
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: EdgeInsets.only(
                                                    right: 2.h,
                                                  ),
                                                ),
                                                SizedBox(height: 14.h),
                                                Container(
                                                  height: 6.h,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                    left: 8.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          3.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.yellow10005,
                                                        appTheme.amber70005,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 4.h,
                                                  width: 4.h,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            appTheme
                                                                .orangeA10001,
                                                        spreadRadius: 2.h,
                                                        blurRadius: 2.h,
                                                        offset: Offset(0, 0),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage16,
                        height: 20.h,
                        width: 22.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 96.h, bottom: 34.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMargin22x22,
                        height: 22.h,
                        width: 24.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 60.h, bottom: 60.h),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 36.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgMargin1,
                                      height: 20.h,
                                      width: 20.h,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 5.h,
                                        width: 5.h,
                                        margin: EdgeInsets.only(
                                          left: 14.h,
                                          bottom: 2.h,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            2.h,
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment(0.5, 0),
                                            end: Alignment(0.5, 1),
                                            colors: [
                                              appTheme.yellow10005,
                                              appTheme.amber70005,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 4.h,
                          width: 4.h,
                          margin: EdgeInsets.only(top: 30.h, right: 70.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(2.h),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.orangeA10001,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 4.h,
                          width: 4.h,
                          margin: EdgeInsets.only(right: 68.h, bottom: 30.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(2.h),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.orangeA10001,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 62.h,
                          margin: EdgeInsets.only(bottom: 8.h),
                          child: Column(
                            spacing: 6,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 5.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 5.h,
                                      width: 5.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 4.h,
                                      width: 4.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 4.h,
                                      width: 4.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 4.h,
                          width: 4.h,
                          margin: EdgeInsets.only(left: 68.h, bottom: 30.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(2.h),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.orangeA10001,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 4.h,
                          width: 4.h,
                          margin: EdgeInsets.only(left: 30.h, top: 70.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(2.h),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.orangeA10001,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 4.h,
                          width: 4.h,
                          margin: EdgeInsets.only(left: 70.h, top: 30.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(2.h),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.orangeA10001,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 122.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 4.h,
                                          width: 4.h,
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.orangeA10001,
                                                spreadRadius: 2.h,
                                                blurRadius: 2.h,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 4.h,
                                          width: 4.h,
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.orangeA10001,
                                                spreadRadius: 2.h,
                                                blurRadius: 2.h,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 5.h,
                          width: 5.h,
                          margin: EdgeInsets.only(left: 74.h, bottom: 38.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.yellow10005,
                                appTheme.amber70005,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 5.h,
                          width: 5.h,
                          margin: EdgeInsets.only(top: 20.h, right: 122.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.yellow10005,
                                appTheme.amber70005,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 5.h,
                          width: 5.h,
                          margin: EdgeInsets.only(left: 122.h, top: 20.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.yellow10005,
                                appTheme.amber70005,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 5.h,
                          width: 5.h,
                          margin: EdgeInsets.only(left: 40.h, top: 76.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.yellow10005,
                                appTheme.amber70005,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 302.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img82,
                              height: 302.h,
                              width: 302.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup2131330076,
                              height: 34.h,
                              width: 26.h,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
