import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/redemption_code_expired_no_random_model.dart';
part 'redemption_code_expired_no_random_event.dart';
part 'redemption_code_expired_no_random_state.dart';

/// A bloc that manages the state of a RedemptionCodeExpiredNoRandom according to the event that is dispatched to it.
class RedemptionCodeExpiredNoRandomBloc
    extends
        Bloc<
          RedemptionCodeExpiredNoRandomEvent,
          RedemptionCodeExpiredNoRandomState
        > {
  RedemptionCodeExpiredNoRandomBloc(
    RedemptionCodeExpiredNoRandomState initialState,
  ) : super(initialState) {
    on<RedemptionCodeExpiredNoRandomInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _onInitialize(
    RedemptionCodeExpiredNoRandomInitialEvent event,
    Emitter<RedemptionCodeExpiredNoRandomState> emit,
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
    Emitter<RedemptionCodeExpiredNoRandomState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }
}
