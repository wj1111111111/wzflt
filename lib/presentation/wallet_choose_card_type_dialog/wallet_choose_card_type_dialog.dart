import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/wallet_choose_card_type_bloc.dart';
import 'models/listelectronic_item_model.dart';
import 'models/wallet_choose_card_type_model.dart';
import 'widgets/listelectronic_item_widget.dart'; // ignore_for_file: must_be_immutable

class WalletChooseCardTypeDialog extends StatelessWidget {
  const WalletChooseCardTypeDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletChooseCardTypeBloc>(
      create:
          (context) => WalletChooseCardTypeBloc(
            WalletChooseCardTypeState(
              walletChooseCardTypeModelObj: WalletChooseCardTypeModel(),
            ),
          )..add(WalletChooseCardTypeInitialEvent()),
      child: WalletChooseCardTypeDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 24.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            spacing: 18,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "msg_select_withdrawal".tr.toUpperCase(),
                style: CustomTextStyles.titleLarge20,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: BlocSelector<
                    WalletChooseCardTypeBloc,
                    WalletChooseCardTypeState,
                    WalletChooseCardTypeModel?
                  >(
                    selector: (state) => state.walletChooseCardTypeModelObj,
                    builder: (context, walletChooseCardTypeModelObj) {
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 18.h);
                        },
                        itemCount:
                            walletChooseCardTypeModelObj
                                ?.listelectronicItemList
                                .length ??
                            0,
                        itemBuilder: (context, index) {
                          ListelectronicItemModel model =
                              walletChooseCardTypeModelObj
                                  ?.listelectronicItemList[index] ??
                              ListelectronicItemModel();
                          return ListelectronicItemWidget(model);
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ],
    );
  }
}
