import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wallet_top_up_records_withdrawal_model.dart';
part 'wallet_top_up_records_withdrawal_event.dart';
part 'wallet_top_up_records_withdrawal_state.dart';

/// A bloc that manages the state of a WalletTopUpRecordsWithdrawal according to the event that is dispatched to it.
class WalletTopUpRecordsWithdrawalBloc
    extends
        Bloc<
          WalletTopUpRecordsWithdrawalEvent,
          WalletTopUpRecordsWithdrawalState
        > {
  WalletTopUpRecordsWithdrawalBloc(
    WalletTopUpRecordsWithdrawalState initialState,
  ) : super(initialState) {
    on<WalletTopUpRecordsWithdrawalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletTopUpRecordsWithdrawalInitialEvent event,
    Emitter<WalletTopUpRecordsWithdrawalState> emit,
  ) async {
    emit(state.copyWith(descriptionController: TextEditingController()));
  }
}
