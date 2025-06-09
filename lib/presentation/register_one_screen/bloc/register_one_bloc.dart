import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/register_one_model.dart';
part 'register_one_event.dart';
part 'register_one_state.dart';

/// A bloc that manages the state of a RegisterOne according to the event that is dispatched to it.
class RegisterOneBloc extends Bloc<RegisterOneEvent, RegisterOneState> {
  RegisterOneBloc(RegisterOneState initialState) : super(initialState) {
    on<RegisterOneInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _onInitialize(
    RegisterOneInitialEvent event,
    Emitter<RegisterOneState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController(),
        promoCodeController: TextEditingController(),
        isShowPassword: true,
        lagreetotheuser: false,
        lagreetoreceive: false,
      ),
    );
  }

  _changeCountry(ChangeCountryEvent event, Emitter<RegisterOneState> emit) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<RegisterOneState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(ChangeCheckBoxEvent event, Emitter<RegisterOneState> emit) {
    emit(state.copyWith(lagreetotheuser: event.value));
  }

  _changeCheckBox1(ChangeCheckBox1Event event, Emitter<RegisterOneState> emit) {
    emit(state.copyWith(lagreetoreceive: event.value));
  }
}
