import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/forgot_password_mobile_payment_one_model.dart';
part 'forgot_password_mobile_payment_one_event.dart';
part 'forgot_password_mobile_payment_one_state.dart';

/// A bloc that manages the state of a ForgotPasswordMobilePaymentOne according to the event that is dispatched to it.
class ForgotPasswordMobilePaymentOneBloc
    extends
        Bloc<
          ForgotPasswordMobilePaymentOneEvent,
          ForgotPasswordMobilePaymentOneState
        > {
  ForgotPasswordMobilePaymentOneBloc(
    ForgotPasswordMobilePaymentOneState initialState,
  ) : super(initialState) {
    on<ForgotPasswordMobilePaymentOneInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _onInitialize(
    ForgotPasswordMobilePaymentOneInitialEvent event,
    Emitter<ForgotPasswordMobilePaymentOneState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        oneoneController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true,
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ForgotPasswordMobilePaymentOneState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<ForgotPasswordMobilePaymentOneState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<ForgotPasswordMobilePaymentOneState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }
}
