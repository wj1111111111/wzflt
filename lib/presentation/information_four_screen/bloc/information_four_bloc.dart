import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/information_four_model.dart';
part 'information_four_event.dart';
part 'information_four_state.dart';

/// A bloc that manages the state of a InformationFour according to the event that is dispatched to it.
class InformationFourBloc
    extends Bloc<InformationFourEvent, InformationFourState> {
  InformationFourBloc(InformationFourState initialState) : super(initialState) {
    on<InformationFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InformationFourInitialEvent event,
    Emitter<InformationFourState> emit,
  ) async {}
}
