import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/settings_change_password_model.dart';
part 'settings_change_password_event.dart';
part 'settings_change_password_state.dart';

/// A bloc that manages the state of a SettingsChangePassword according to the event that is dispatched to it.
class SettingsChangePasswordBloc
    extends Bloc<SettingsChangePasswordEvent, SettingsChangePasswordState> {
  SettingsChangePasswordBloc(SettingsChangePasswordState initialState)
    : super(initialState) {
    on<SettingsChangePasswordInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangePasswordVisibilityEvent2>(_changePasswordVisibility2);
    on<ChangePasswordVisibilityEvent3>(_changePasswordVisibility3);
    on<ChangePasswordVisibilityEvent4>(_changePasswordVisibility4);
  }

  _onInitialize(
    SettingsChangePasswordInitialEvent event,
    Emitter<SettingsChangePasswordState> emit,
  ) async {
    emit(
      state.copyWith(
        passwordController: TextEditingController(),
        newpasswordController: TextEditingController(),
        newpasswordoneController: TextEditingController(),
        newpasswordtwoController: TextEditingController(),
        newpassword1Controller: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true,
        isShowPassword2: true,
        isShowPassword3: true,
        isShowPassword4: true,
      ),
    );
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SettingsChangePasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<SettingsChangePasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _changePasswordVisibility2(
    ChangePasswordVisibilityEvent2 event,
    Emitter<SettingsChangePasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword2: event.value));
  }

  _changePasswordVisibility3(
    ChangePasswordVisibilityEvent3 event,
    Emitter<SettingsChangePasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword3: event.value));
  }

  _changePasswordVisibility4(
    ChangePasswordVisibilityEvent4 event,
    Emitter<SettingsChangePasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword4: event.value));
  }
}
