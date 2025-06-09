import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/redemption_code_expired_model.dart';
part 'redemption_code_expired_event.dart';
part 'redemption_code_expired_state.dart';

/// A bloc that manages the state of a RedemptionCodeExpired according to the event that is dispatched to it.
class RedemptionCodeExpiredBloc
    extends Bloc<RedemptionCodeExpiredEvent, RedemptionCodeExpiredState> {
  RedemptionCodeExpiredBloc(RedemptionCodeExpiredState initialState)
    : super(initialState) {
    on<RedemptionCodeExpiredInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _onInitialize(
    RedemptionCodeExpiredInitialEvent event,
    Emitter<RedemptionCodeExpiredState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        passwordoneController: TextEditingController(),
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<RedemptionCodeExpiredState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }
}
