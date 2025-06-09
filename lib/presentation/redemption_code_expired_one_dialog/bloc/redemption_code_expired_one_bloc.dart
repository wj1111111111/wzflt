import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/redemption_code_expired_one_model.dart';
part 'redemption_code_expired_one_event.dart';
part 'redemption_code_expired_one_state.dart';

/// A bloc that manages the state of a RedemptionCodeExpiredOne according to the event that is dispatched to it.
class RedemptionCodeExpiredOneBloc
    extends Bloc<RedemptionCodeExpiredOneEvent, RedemptionCodeExpiredOneState> {
  RedemptionCodeExpiredOneBloc(RedemptionCodeExpiredOneState initialState)
    : super(initialState) {
    on<RedemptionCodeExpiredOneInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _onInitialize(
    RedemptionCodeExpiredOneInitialEvent event,
    Emitter<RedemptionCodeExpiredOneState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        checkmarkoneController: TextEditingController(),
        passwordoneController: TextEditingController(),
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<RedemptionCodeExpiredOneState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }
}
