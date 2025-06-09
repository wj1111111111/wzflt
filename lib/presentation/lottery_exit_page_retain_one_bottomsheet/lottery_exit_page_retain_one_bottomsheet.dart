import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/lottery_exit_page_retain_one_bloc.dart';
import 'models/list55470397152_item_model.dart';
import 'models/listmore_one_item_model.dart';
import 'models/lottery_exit_page_retain_one_model.dart';
import 'widgets/list55470397152_item_widget.dart';
import 'widgets/listmore_one_item_widget.dart'; // ignore_for_file: must_be_immutable

class LotteryExitPageRetainOneBottomsheet extends StatelessWidget {
  const LotteryExitPageRetainOneBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LotteryExitPageRetainOneBloc>(
      create:
          (context) => LotteryExitPageRetainOneBloc(
            LotteryExitPageRetainOneState(
              lotteryExitPageRetainOneModelObj: LotteryExitPageRetainOneModel(),
            ),
          )..add(LotteryExitPageRetainOneInitialEvent()),
      child: LotteryExitPageRetainOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
      decoration: AppDecoration.fillBluegray80011.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "msg_1_invite_friends".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseBlueGray30002,
                  height: 22.h,
                  width: 24.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            width: double.maxFinite,
            child: BlocSelector<
              LotteryExitPageRetainOneBloc,
              LotteryExitPageRetainOneState,
              LotteryExitPageRetainOneModel?
            >(
              selector: (state) => state.lotteryExitPageRetainOneModelObj,
              builder: (context, lotteryExitPageRetainOneModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 18.h,
                    children: List.generate(
                      lotteryExitPageRetainOneModelObj
                              ?.listmoreOneItemList
                              .length ??
                          0,
                      (index) {
                        ListmoreOneItemModel model =
                            lotteryExitPageRetainOneModelObj
                                ?.listmoreOneItemList[index] ??
                            ListmoreOneItemModel();
                        return ListmoreOneItemWidget(model);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            decoration: AppDecoration.fillBluegray90033.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h, bottom: 8.h),
                    child: Text(
                      "msg_invite_friends_to4".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1058,
                  height: 38.h,
                  width: 40.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_2_send_a_help_invitation".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
            decoration: AppDecoration.fillBluegray90033.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              spacing: 12,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocSelector<
                  LotteryExitPageRetainOneBloc,
                  LotteryExitPageRetainOneState,
                  LotteryExitPageRetainOneModel?
                >(
                  selector: (state) => state.lotteryExitPageRetainOneModelObj,
                  builder: (context, lotteryExitPageRetainOneModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 2.h);
                      },
                      itemCount:
                          lotteryExitPageRetainOneModelObj
                              ?.list55470397152ItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        List55470397152ItemModel model =
                            lotteryExitPageRetainOneModelObj
                                ?.list55470397152ItemList[index] ??
                            List55470397152ItemModel();
                        return List55470397152ItemWidget(model);
                      },
                    );
                  },
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          height: 40.h,
                          text: "msg_send_message_on".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 4.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCall,
                              height: 24.h,
                              width: 24.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.none,
                          decoration:
                              CustomButtonStyles
                                  .gradientAmberToAmberTL2Decoration,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          decoration: AppDecoration.fs1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUserOnprimary24x24,
                                height: 24.h,
                                width: 24.h,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 88.h,
                                  margin: EdgeInsets.only(top: 2.h),
                                  child: Text(
                                    "msg_sending_a_text_message".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleSmall,
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
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
