import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/promotions_detail_bloc.dart';
import 'models/promotions_detail_model.dart';

class PromotionsDetailScreen extends StatelessWidget {
  const PromotionsDetailScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PromotionsDetailBloc>(
      create:
          (context) => PromotionsDetailBloc(
            PromotionsDetailState(
              promotionsDetailModelObj: PromotionsDetailModel(),
            ),
          )..add(PromotionsDetailInitialEvent()),
      child: PromotionsDetailScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionsDetailBloc, PromotionsDetailState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 14.h, top: 12.h, right: 14.h),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        decoration: AppDecoration.fs4bg.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Column(
                          spacing: 10,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage6180x344,
                              height: 180.h,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(8.h),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 154.h,
                                margin: EdgeInsets.only(left: 12.h),
                                child: Text(
                                  "msg_100_milh_es_title".tr.toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 312.h,
                              child: Text(
                                "msg_ends_at_b_nus_de".tr,
                                maxLines: 29,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumBluegray40015
                                    .copyWith(height: 1.20),
                              ),
                            ),
                            SizedBox(height: 18.h),
                          ],
                        ),
                      ),
                      SizedBox(height: 52.h),
                    ],
                  ),
                ),
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
        text: "msg_provedor_de_jogos".tr,
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
