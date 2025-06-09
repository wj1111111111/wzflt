import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_top_up_account_bank_account_model.dart';
part 'add_top_up_account_bank_account_event.dart';
part 'add_top_up_account_bank_account_state.dart';

/// A bloc that manages the state of a AddTopUpAccountBankAccount according to the event that is dispatched to it.
class AddTopUpAccountBankAccountBloc
    extends
        Bloc<AddTopUpAccountBankAccountEvent, AddTopUpAccountBankAccountState> {
  AddTopUpAccountBankAccountBloc(AddTopUpAccountBankAccountState initialState)
    : super(initialState) {
    on<AddTopUpAccountBankAccountInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _onInitialize(
    AddTopUpAccountBankAccountInitialEvent event,
    Emitter<AddTopUpAccountBankAccountState> emit,
  ) async {
    emit(
      state.copyWith(
        oneoneController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true,
      ),
    );
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<AddTopUpAccountBankAccountState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }
}
