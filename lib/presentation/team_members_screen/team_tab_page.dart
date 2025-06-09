import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/team_members_bloc.dart';
import 'models/listlevelcounte_item_model.dart';
import 'models/listtoday_item_model.dart';
import 'models/listtwo_item_model.dart';
import 'models/team_tab_model.dart';
import 'widgets/listlevelcounte_item_widget.dart';
import 'widgets/listtoday_item_widget.dart';
import 'widgets/listtwo_item_widget.dart';

class TeamTabPage extends StatefulWidget {
  const TeamTabPage({Key? key}) : super(key: key);

  @override
  TeamTabPageState createState() => TeamTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TeamMembersBloc>(
      create:
          (context) =>
              TeamMembersBloc(TeamMembersState(teamTabModelObj: TeamTabModel()))
                ..add(TeamMembersInitialEvent()),
      child: TeamTabPage(),
    );
  }
}

class TeamTabPageState extends State<TeamTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  spacing: 10,
                  children: [_buildColumnview(context), _buildListtwo(context)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnview(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 8,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 18,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 4.h,
                            bottom: 4.h,
                          ),
                          decoration: AppDecoration.gradientDeepOrangeToPinkA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgProfileOnprimary,
                                height: 14.h,
                                width: 16.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 2.h),
                              ),
                              SizedBox(
                                height: 38.h,
                                width: 130.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Text(
                                      "lbl_junior_agent_i".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 8.h),
                                        child: Text(
                                          "lbl_my_agent_tier".tr,
                                          style:
                                              CustomTextStyles
                                                  .bodyMediumOnPrimary_1,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img1Black90036x26,
                                      height: 36.h,
                                      width: 28.h,
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(4.h),
                          decoration: AppDecoration.gradientCyanAToBlueA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFrame2131330280,
                                height: 36.h,
                                width: 26.h,
                              ),
                              Expanded(
                                child: Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.symmetric(vertical: 10.h),
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_team_count".tr,
                                        style:
                                            CustomTextStyles
                                                .bodyMediumOnPrimary_1,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 28.h),
                                        child: Text(
                                          "lbl_975".tr,
                                          style: CustomTextStyles.titleLarge20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgProfileOnprimary,
                                height: 14.h,
                                width: 14.h,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(left: 4.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 46.h,
                  margin: EdgeInsets.only(left: 10.h, right: 18.h),
                  width: double.maxFinite,
                  child: BlocSelector<
                    TeamMembersBloc,
                    TeamMembersState,
                    TeamTabModel?
                  >(
                    selector: (state) => state.teamTabModelObj,
                    builder: (context, teamTabModelObj) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 27.0.h),
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.h,
                              color: appTheme.blueGray80009,
                            ),
                          );
                        },
                        itemCount:
                            teamTabModelObj?.listtodayItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          ListtodayItemModel model =
                              teamTabModelObj?.listtodayItemList[index] ??
                              ListtodayItemModel();
                          return ListtodayItemWidget(model);
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
          SizedBox(
            height: 64.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 8.h,
                  ),
                  decoration: AppDecoration.fs4bg.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: BlocSelector<
                    TeamMembersBloc,
                    TeamMembersState,
                    TeamTabModel?
                  >(
                    selector: (state) => state.teamTabModelObj,
                    builder: (context, teamTabModelObj) {
                      return SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 8.h,
                        ),
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          direction: Axis.horizontal,
                          spacing: 30.h,
                          children: List.generate(
                            teamTabModelObj?.listlevelcounteItemList.length ??
                                0,
                            (index) {
                              ListlevelcounteItemModel model =
                                  teamTabModelObj
                                      ?.listlevelcounteItemList[index] ??
                                  ListlevelcounteItemModel();
                              return ListlevelcounteItemWidget(model);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 82.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 8.h,
                    ),
                    decoration: AppDecoration.column210,
                    child: Column(
                      spacing: 4,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_level_12".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFrame2131330280,
                                height: 10.h,
                                width: 6.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text(
                                  "lbl_252".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.h),
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
              children: [
                BlocSelector<TeamMembersBloc, TeamMembersState, TeamTabModel?>(
                  selector: (state) => state.teamTabModelObj,
                  builder: (context, teamTabModelObj) {
                    return CustomDropDown(
                      width: 148.h,
                      icon: Container(
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 14.h,
                          width: 12.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      iconSize: 14.h,
                      hintText: "lbl_all".tr,
                      hintStyle: CustomTextStyles.bodyMediumBluegray40013_1,
                      items: teamTabModelObj?.dropdownItemList ?? [],
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 12.h,
                      ),
                    );
                  },
                ),
                Expanded(
                  child: BlocSelector<
                    TeamMembersBloc,
                    TeamMembersState,
                    TextEditingController?
                  >(
                    selector: (state) => state.dateRangeController,
                    builder: (context, dateRangeController) {
                      return CustomTextFormField(
                        controller: dateRangeController,
                        hintText: "msg_2024_08_21_2024_08_27".tr,
                        hintStyle: CustomTextStyles.bodyMediumBluegray40013_1,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(10.h, 12.h, 8.h, 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 14.h,
                            width: 16.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(maxHeight: 40.h),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 12.h,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                        fillColor: appTheme.gray90001,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListtwo(BuildContext context) {
    return BlocSelector<TeamMembersBloc, TeamMembersState, TeamTabModel?>(
      selector: (state) => state.teamTabModelObj,
      builder: (context, teamTabModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
          itemCount: teamTabModelObj?.listtwoItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListtwoItemModel model =
                teamTabModelObj?.listtwoItemList[index] ?? ListtwoItemModel();
            return ListtwoItemWidget(
              model,
              onSelectedChipView: (i, value) {
                context.read<TeamMembersBloc>().add(
                  UpdateChipViewEvent(
                    index: index,
                    subIndex: i,
                    isSelected: value,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
