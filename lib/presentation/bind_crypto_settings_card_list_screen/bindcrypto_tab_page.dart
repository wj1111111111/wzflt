import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/bind_crypto_settings_card_list_bloc.dart';
import 'models/bindcrypto_tab_model.dart';
import 'models/listusdttrc20on_item_model.dart';
import 'widgets/listusdttrc20on_item_widget.dart';

class BindcryptoTabPage extends StatefulWidget {
  const BindcryptoTabPage({Key? key}) : super(key: key);

  @override
  BindcryptoTabPageState createState() => BindcryptoTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BindCryptoSettingsCardListBloc>(
      create:
          (context) => BindCryptoSettingsCardListBloc(
            BindCryptoSettingsCardListState(
              bindcryptoTabModelObj: BindcryptoTabModel(),
            ),
          )..add(BindCryptoSettingsCardListInitialEvent()),
      child: BindcryptoTabPage(),
    );
  }
}

class BindcryptoTabPageState extends State<BindcryptoTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 6.h),
                child: Column(
                  children: [
                    _buildListusdttrc20on(context),
                    SizedBox(height: 8.h),
                    Text(
                      "msg_display_up_to_the".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 26.h),
                    CustomElevatedButton(
                      height: 50.h,
                      text: "msg_add_bank_account".tr,
                      margin: EdgeInsets.only(left: 10.h, right: 14.h),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles
                              .gradientLightGreenAToLightGreenTL22Decoration,
                      buttonTextStyle: theme.textTheme.titleMedium!,
                    ),
                    SizedBox(height: 4.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 274.h,
                        margin: EdgeInsets.only(left: 28.h),
                        child: Text(
                          "msg_for_your_privacy".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall!.copyWith(
                            height: 1.33,
                          ),
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
    );
  }

  /// Section Widget
  Widget _buildListusdttrc20on(BuildContext context) {
    return BlocSelector<
      BindCryptoSettingsCardListBloc,
      BindCryptoSettingsCardListState,
      BindcryptoTabModel?
    >(
      selector: (state) => state.bindcryptoTabModelObj,
      builder: (context, bindcryptoTabModelObj) {
        return ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.h);
          },
          itemCount: bindcryptoTabModelObj?.listusdttrc20onItemList.length ?? 0,
          itemBuilder: (context, index) {
            Listusdttrc20onItemModel model =
                bindcryptoTabModelObj?.listusdttrc20onItemList[index] ??
                Listusdttrc20onItemModel();
            return Listusdttrc20onItemWidget(model);
          },
        );
      },
    );
  }
}
