import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridgcash_one_item_model.dart';
import '../models/wallet_choose_amount_style_model.dart';
part 'wallet_choose_amount_style_event.dart';
part 'wallet_choose_amount_style_state.dart';

/// A bloc that manages the state of a WalletChooseAmountStyle according to the event that is dispatched to it.
class WalletChooseAmountStyleBloc
    extends Bloc<WalletChooseAmountStyleEvent, WalletChooseAmountStyleState> {
  WalletChooseAmountStyleBloc(WalletChooseAmountStyleState initialState)
    : super(initialState) {
    on<WalletChooseAmountStyleInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _onInitialize(
    WalletChooseAmountStyleInitialEvent event,
    Emitter<WalletChooseAmountStyleState> emit,
  ) async {
    emit(state.copyWith(radioGroup: ""));
    emit(
      state.copyWith(
        walletChooseAmountStyleModelObj: state.walletChooseAmountStyleModelObj
            ?.copyWith(gridgcashOneItemList: fillGridgcashOneItemList()),
      ),
    );
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<WalletChooseAmountStyleState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<GridgcashOneItemModel> fillGridgcashOneItemList() {
    return [
      GridgcashOneItemModel(
        gcashOne: ImageConstant.img1336x36,
        gcashTwo: "lbl_gcash".tr,
      ),
      GridgcashOneItemModel(
        gcashOne: ImageConstant.imgImage36x36,
        gcashTwo: "lbl_paymaya".tr,
      ),
      GridgcashOneItemModel(
        gcashOne: ImageConstant.imgImage29,
        gcashTwo: "lbl_grabpay".tr,
      ),
      GridgcashOneItemModel(
        gcashOne: ImageConstant.imgImage30,
        gcashTwo: "lbl_gotyme".tr,
      ),
      GridgcashOneItemModel(
        gcashOne: ImageConstant.img20230510141707,
        gcashTwo: "lbl_online_banking".tr,
      ),
      GridgcashOneItemModel(
        gcashOne: ImageConstant.imgContrastCyan50,
        gcashTwo: "lbl_qr_ph".tr,
      ),
      GridgcashOneItemModel(gcashTwo: "lbl_20".tr),
      GridgcashOneItemModel(gcashTwo: "lbl_402".tr),
      GridgcashOneItemModel(gcashTwo: "lbl_2002".tr),
      GridgcashOneItemModel(gcashTwo: "lbl_5_bonus".tr),
      GridgcashOneItemModel(gcashTwo: "lbl_5_bonus".tr),
      GridgcashOneItemModel(gcashTwo: "lbl_500002".tr),
      GridgcashOneItemModel(),
      GridgcashOneItemModel(),
      GridgcashOneItemModel(),
    ];
  }
}
