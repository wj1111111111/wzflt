import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/usdt_bind_never_set_transaction_model.dart';
part 'usdt_bind_never_set_transaction_event.dart';
part 'usdt_bind_never_set_transaction_state.dart';

/// A bloc that manages the state of a UsdtBindNeverSetTransaction according to the event that is dispatched to it.
class UsdtBindNeverSetTransactionBloc
    extends
        Bloc<
          UsdtBindNeverSetTransactionEvent,
          UsdtBindNeverSetTransactionState
        > {
  UsdtBindNeverSetTransactionBloc(UsdtBindNeverSetTransactionState initialState)
    : super(initialState) {
    on<UsdtBindNeverSetTransactionInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _onInitialize(
    UsdtBindNeverSetTransactionInitialEvent event,
    Emitter<UsdtBindNeverSetTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        confirmpasswordController: TextEditingController(),
        oneoneController: TextEditingController(),
        isShowPassword: true,
      ),
    );
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<UsdtBindNeverSetTransactionState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }
}
