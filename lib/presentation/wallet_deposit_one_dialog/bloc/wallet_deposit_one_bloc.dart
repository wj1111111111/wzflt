import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wallet_deposit_one_model.dart';
part 'wallet_deposit_one_event.dart';
part 'wallet_deposit_one_state.dart';

/// A bloc that manages the state of a WalletDepositOne according to the event that is dispatched to it.
class WalletDepositOneBloc
    extends Bloc<WalletDepositOneEvent, WalletDepositOneState> {
  WalletDepositOneBloc(WalletDepositOneState initialState)
    : super(initialState) {
    on<WalletDepositOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletDepositOneInitialEvent event,
    Emitter<WalletDepositOneState> emit,
  ) async {}
}
