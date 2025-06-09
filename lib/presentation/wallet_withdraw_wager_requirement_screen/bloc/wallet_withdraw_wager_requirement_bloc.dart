import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/slidervector_item_model.dart';
import '../models/wallet_withdraw_wager_requirement_model.dart';
part 'wallet_withdraw_wager_requirement_event.dart';
part 'wallet_withdraw_wager_requirement_state.dart';

/// A bloc that manages the state of a WalletWithdrawWagerRequirement according to the event that is dispatched to it.
class WalletWithdrawWagerRequirementBloc
    extends
        Bloc<
          WalletWithdrawWagerRequirementEvent,
          WalletWithdrawWagerRequirementState
        > {
  WalletWithdrawWagerRequirementBloc(
    WalletWithdrawWagerRequirementState initialState,
  ) : super(initialState) {
    on<WalletWithdrawWagerRequirementInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _onInitialize(
    WalletWithdrawWagerRequirementInitialEvent event,
    Emitter<WalletWithdrawWagerRequirementState> emit,
  ) async {
    emit(
      state.copyWith(
        passwordController: TextEditingController(),
        oneoneController: TextEditingController(),
        sliderIndex: 0,
      ),
    );
    emit(
      state.copyWith(
        walletWithdrawWagerRequirementModelObj: state
            .walletWithdrawWagerRequirementModelObj
            ?.copyWith(slidervectorItemList: fillSlidervectorItemList()),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<WalletWithdrawWagerRequirementState> emit,
  ) {
    emit(state.copyWith(sliderIndex: event.value));
  }

  List<SlidervectorItemModel> fillSlidervectorItemList() {
    return [
      SlidervectorItemModel(
        pixmobile: "lbl_pix_mobile".tr,
        eightthousandni: "lbl_8927".tr,
        three: "lbl_2023_05_03".tr,
      ),
    ];
  }
}
