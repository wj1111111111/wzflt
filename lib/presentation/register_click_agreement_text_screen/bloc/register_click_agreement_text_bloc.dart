import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/register_click_agreement_text_model.dart';
part 'register_click_agreement_text_event.dart';
part 'register_click_agreement_text_state.dart';

/// A bloc that manages the state of a RegisterClickAgreementText according to the event that is dispatched to it.
class RegisterClickAgreementTextBloc
    extends
        Bloc<RegisterClickAgreementTextEvent, RegisterClickAgreementTextState> {
  RegisterClickAgreementTextBloc(RegisterClickAgreementTextState initialState)
    : super(initialState) {
    on<RegisterClickAgreementTextInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _onInitialize(
    RegisterClickAgreementTextInitialEvent event,
    Emitter<RegisterClickAgreementTextState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        passwordoneController: TextEditingController(),
        passwordtwoController: TextEditingController(),
        isShowPassword: true,
        lagreetotheuser: false,
        lagreetoreceive: false,
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<RegisterClickAgreementTextState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<RegisterClickAgreementTextState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<RegisterClickAgreementTextState> emit,
  ) {
    emit(state.copyWith(lagreetotheuser: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<RegisterClickAgreementTextState> emit,
  ) {
    emit(state.copyWith(lagreetoreceive: event.value));
  }
}
