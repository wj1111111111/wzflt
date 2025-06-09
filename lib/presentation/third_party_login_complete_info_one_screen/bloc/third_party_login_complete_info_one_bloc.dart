import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/third_party_login_complete_info_one_model.dart';
part 'third_party_login_complete_info_one_event.dart';
part 'third_party_login_complete_info_one_state.dart';

/// A bloc that manages the state of a ThirdPartyLoginCompleteInfoOne according to the event that is dispatched to it.
class ThirdPartyLoginCompleteInfoOneBloc
    extends
        Bloc<
          ThirdPartyLoginCompleteInfoOneEvent,
          ThirdPartyLoginCompleteInfoOneState
        > {
  ThirdPartyLoginCompleteInfoOneBloc(
    ThirdPartyLoginCompleteInfoOneState initialState,
  ) : super(initialState) {
    on<ThirdPartyLoginCompleteInfoOneInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _onInitialize(
    ThirdPartyLoginCompleteInfoOneInitialEvent event,
    Emitter<ThirdPartyLoginCompleteInfoOneState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController(),
        passwordoneController: TextEditingController(),
        promoCodeController: TextEditingController(),
        isShowPassword: true,
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ThirdPartyLoginCompleteInfoOneState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<ThirdPartyLoginCompleteInfoOneState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }
}
