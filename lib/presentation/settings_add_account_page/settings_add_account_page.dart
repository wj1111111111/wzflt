import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/settings_add_account_bloc.dart';
import 'models/listaccount_item_model.dart';
import 'models/settings_add_account_model.dart';
import 'widgets/listaccount_item_widget.dart'; // ignore_for_file: must_be_immutable

class SettingsAddAccountPage extends StatefulWidget {
  const SettingsAddAccountPage({Key? key}) : super(key: key);

  @override
  SettingsAddAccountPageState createState() => SettingsAddAccountPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsAddAccountBloc>(
      create:
          (context) => SettingsAddAccountBloc(
            SettingsAddAccountState(
              settingsAddAccountModelObj: SettingsAddAccountModel(),
            ),
          )..add(SettingsAddAccountInitialEvent()),
      child: SettingsAddAccountPage(),
    );
  }
}

class SettingsAddAccountPageState extends State<SettingsAddAccountPage>
    with AutomaticKeepAliveClientMixin<SettingsAddAccountPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(bottom: 36.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    spacing: 8,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildRowaccountedito(context),
                      _buildListaccount(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowaccountedito(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("lbl_account_editor".tr, style: theme.textTheme.titleMedium),
          CustomIconButton(
            height: 30.h,
            width: 44.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.gradientLightGreenAToLightGreen,
            child: CustomImageView(imagePath: ImageConstant.imgGroup954),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListaccount(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        SettingsAddAccountBloc,
        SettingsAddAccountState,
        SettingsAddAccountModel?
      >(
        selector: (state) => state.settingsAddAccountModelObj,
        builder: (context, settingsAddAccountModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 12.h);
            },
            itemCount:
                settingsAddAccountModelObj?.listaccountItemList.length ?? 0,
            itemBuilder: (context, index) {
              ListaccountItemModel model =
                  settingsAddAccountModelObj?.listaccountItemList[index] ??
                  ListaccountItemModel();
              return ListaccountItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
