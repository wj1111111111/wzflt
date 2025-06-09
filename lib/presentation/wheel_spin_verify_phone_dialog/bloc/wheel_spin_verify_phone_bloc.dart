import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wheel_spin_verify_phone_model.dart';
part 'wheel_spin_verify_phone_event.dart';
part 'wheel_spin_verify_phone_state.dart';

/// A bloc that manages the state of a WheelSpinVerifyPhone according to the event that is dispatched to it.
class WheelSpinVerifyPhoneBloc
    extends Bloc<WheelSpinVerifyPhoneEvent, WheelSpinVerifyPhoneState> {
  WheelSpinVerifyPhoneBloc(WheelSpinVerifyPhoneState initialState)
    : super(initialState) {
    on<WheelSpinVerifyPhoneInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _onInitialize(
    WheelSpinVerifyPhoneInitialEvent event,
    Emitter<WheelSpinVerifyPhoneState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        checkmarkoneController: TextEditingController(),
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<WheelSpinVerifyPhoneState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }
}
