import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/settings_personal_info_one_model.dart';
part 'settings_personal_info_one_event.dart';
part 'settings_personal_info_one_state.dart';

/// A bloc that manages the state of a SettingsPersonalInfoOne according to the event that is dispatched to it.
class SettingsPersonalInfoOneBloc
    extends Bloc<SettingsPersonalInfoOneEvent, SettingsPersonalInfoOneState> {
  SettingsPersonalInfoOneBloc(SettingsPersonalInfoOneState initialState)
    : super(initialState) {
    on<SettingsPersonalInfoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsPersonalInfoOneInitialEvent event,
    Emitter<SettingsPersonalInfoOneState> emit,
  ) async {}
}
