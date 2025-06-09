import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/log_in_model.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

/// A bloc that manages the state of a LogIn according to the event that is dispatched to it.
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState initialState) : super(initialState) {
    on<LogInInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _onInitialize(LogInInitialEvent event, Emitter<LogInState> emit) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        passwordoneController: TextEditingController(),
        passwordtwoController: TextEditingController(),
        isShowPassword: true,
        reteamspassword: false,
      ),
    );
  }

  _changeCountry(ChangeCountryEvent event, Emitter<LogInState> emit) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LogInState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(ChangeCheckBoxEvent event, Emitter<LogInState> emit) {
    emit(state.copyWith(reteamspassword: event.value));
  }
}
