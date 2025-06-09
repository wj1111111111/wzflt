import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listpixmobile_item_model.dart';
import '../models/wallet_withdraw_wager_met_model.dart';
part 'wallet_withdraw_wager_met_event.dart';
part 'wallet_withdraw_wager_met_state.dart';

/// A bloc that manages the state of a WalletWithdrawWagerMet according to the event that is dispatched to it.
class WalletWithdrawWagerMetBloc
    extends Bloc<WalletWithdrawWagerMetEvent, WalletWithdrawWagerMetState> {
  WalletWithdrawWagerMetBloc(WalletWithdrawWagerMetState initialState)
    : super(initialState) {
    on<WalletWithdrawWagerMetInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletWithdrawWagerMetInitialEvent event,
    Emitter<WalletWithdrawWagerMetState> emit,
  ) async {
    emit(
      state.copyWith(
        walletWithdrawWagerMetModelObj: state.walletWithdrawWagerMetModelObj
            ?.copyWith(listpixmobileItemList: fillListpixmobileItemList()),
      ),
    );
  }

  List<ListpixmobileItemModel> fillListpixmobileItemList() {
    return [
      ListpixmobileItemModel(
        pixmobileOne: ImageConstant.imgVectorAmberA400,
        pixmobile: "lbl_pix_mobile".tr,
        password: "lbl_8927".tr,
        date: "lbl_2023_05_03".tr,
      ),
      ListpixmobileItemModel(),
      ListpixmobileItemModel(),
      ListpixmobileItemModel(),
      ListpixmobileItemModel(),
    ];
  }
}
