import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/leaderboard_my_prizes_bloc.dart';
import 'models/leaderboard_my_prizes_model.dart';
import 'models/listyour_item_model.dart';
import 'widgets/listyour_item_widget.dart'; // ignore_for_file: must_be_immutable

class LeaderboardMyPrizesBottomsheet extends StatelessWidget {
  const LeaderboardMyPrizesBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LeaderboardMyPrizesBloc>(
      create:
          (context) => LeaderboardMyPrizesBloc(
            LeaderboardMyPrizesState(
              leaderboardMyPrizesModelObj: LeaderboardMyPrizesModel(),
            ),
          )..add(LeaderboardMyPrizesInitialEvent()),
      child: LeaderboardMyPrizesBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fillBluegray90012.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 130.h),
                  child: Text(
                    "lbl_my_rewards".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                CustomIconButton(
                  height: 28.h,
                  width: 28.h,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillLightGreen,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCloseBlack90028x28,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
            ),
          ),
          SizedBox(height: 18.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: BlocSelector<
                LeaderboardMyPrizesBloc,
                LeaderboardMyPrizesState,
                LeaderboardMyPrizesModel?
              >(
                selector: (state) => state.leaderboardMyPrizesModelObj,
                builder: (context, leaderboardMyPrizesModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.h);
                    },
                    itemCount:
                        leaderboardMyPrizesModelObj?.listyourItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      ListyourItemModel model =
                          leaderboardMyPrizesModelObj
                              ?.listyourItemList[index] ??
                          ListyourItemModel();
                      return ListyourItemWidget(model);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
