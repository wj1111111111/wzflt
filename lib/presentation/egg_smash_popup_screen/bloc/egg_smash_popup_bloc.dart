import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/egg_smash_popup_model.dart';
part 'egg_smash_popup_event.dart';
part 'egg_smash_popup_state.dart';

/// A bloc that manages the state of a EggSmashPopup according to the event that is dispatched to it.
class EggSmashPopupBloc extends Bloc<EggSmashPopupEvent, EggSmashPopupState> {
  EggSmashPopupBloc(EggSmashPopupState initialState) : super(initialState) {
    on<EggSmashPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EggSmashPopupInitialEvent event,
    Emitter<EggSmashPopupState> emit,
  ) async {}
}
