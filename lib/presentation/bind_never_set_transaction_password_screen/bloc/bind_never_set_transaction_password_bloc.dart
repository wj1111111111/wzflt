import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bind_never_set_transaction_password_model.dart';
import '../models/bindneverset_tab_model.dart';
part 'bind_never_set_transaction_password_event.dart';
part 'bind_never_set_transaction_password_state.dart';

/// A bloc that manages the state of a BindNeverSetTransactionPassword according to the event that is dispatched to it.
class BindNeverSetTransactionPasswordBloc
    extends
        Bloc<
          BindNeverSetTransactionPasswordEvent,
          BindNeverSetTransactionPasswordState
        > {
  BindNeverSetTransactionPasswordBloc(
    BindNeverSetTransactionPasswordState initialState,
  ) : super(initialState) {
    on<BindNeverSetTransactionPasswordInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _onInitialize(
    BindNeverSetTransactionPasswordInitialEvent event,
    Emitter<BindNeverSetTransactionPasswordState> emit,
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
    Emitter<BindNeverSetTransactionPasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }
}
