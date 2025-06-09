import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/top_up_records_withdrawal_rejected_model.dart';
part 'top_up_records_withdrawal_rejected_event.dart';
part 'top_up_records_withdrawal_rejected_state.dart';

/// A bloc that manages the state of a TopUpRecordsWithdrawalRejected according to the event that is dispatched to it.
class TopUpRecordsWithdrawalRejectedBloc
    extends
        Bloc<
          TopUpRecordsWithdrawalRejectedEvent,
          TopUpRecordsWithdrawalRejectedState
        > {
  TopUpRecordsWithdrawalRejectedBloc(
    TopUpRecordsWithdrawalRejectedState initialState,
  ) : super(initialState) {
    on<TopUpRecordsWithdrawalRejectedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopUpRecordsWithdrawalRejectedInitialEvent event,
    Emitter<TopUpRecordsWithdrawalRejectedState> emit,
  ) async {
    emit(state.copyWith(descriptionController: TextEditingController()));
  }
}
