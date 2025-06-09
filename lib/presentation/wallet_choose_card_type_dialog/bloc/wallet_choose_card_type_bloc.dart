import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listelectronic_item_model.dart';
import '../models/wallet_choose_card_type_model.dart';
part 'wallet_choose_card_type_event.dart';
part 'wallet_choose_card_type_state.dart';

/// A bloc that manages the state of a WalletChooseCardType according to the event that is dispatched to it.
class WalletChooseCardTypeBloc
    extends Bloc<WalletChooseCardTypeEvent, WalletChooseCardTypeState> {
  WalletChooseCardTypeBloc(WalletChooseCardTypeState initialState)
    : super(initialState) {
    on<WalletChooseCardTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletChooseCardTypeInitialEvent event,
    Emitter<WalletChooseCardTypeState> emit,
  ) async {
    emit(
      state.copyWith(
        walletChooseCardTypeModelObj: state.walletChooseCardTypeModelObj
            ?.copyWith(listelectronicItemList: fillListelectronicItemList()),
      ),
    );
  }

  List<ListelectronicItemModel> fillListelectronicItemList() {
    return [
      ListelectronicItemModel(
        electronic: ImageConstant.imgSearchOnprimary,
        electronic1: "msg_electronic_wallet2".tr,
      ),
      ListelectronicItemModel(
        electronic: ImageConstant.imgTelevisionOnprimary30x30,
        electronic1: "lbl_bank_account".tr,
      ),
      ListelectronicItemModel(
        electronic: ImageConstant.imgGridOnprimary30x30,
        electronic1: "lbl_crypto_wallet3".tr,
      ),
    ];
  }
}
