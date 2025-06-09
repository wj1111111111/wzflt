import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/settings_personal_info_model.dart';
import '../models/settings_tab_model.dart';
part 'settings_personal_info_event.dart';
part 'settings_personal_info_state.dart';

/// A bloc that manages the state of a SettingsPersonalInfo according to the event that is dispatched to it.
class SettingsPersonalInfoBloc
    extends Bloc<SettingsPersonalInfoEvent, SettingsPersonalInfoState> {
  SettingsPersonalInfoBloc(SettingsPersonalInfoState initialState)
    : super(initialState) {
    on<SettingsPersonalInfoInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _onInitialize(
    SettingsPersonalInfoInitialEvent event,
    Emitter<SettingsPersonalInfoState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        emailController: TextEditingController(),
        emailoneController: TextEditingController(),
        isShowPassword: true,
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<SettingsPersonalInfoState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SettingsPersonalInfoState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }
}
