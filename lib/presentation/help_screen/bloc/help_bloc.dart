import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/help_model.dart';
part 'help_event.dart';
part 'help_state.dart';

/// A bloc that manages the state of a Help according to the event that is dispatched to it.
class HelpBloc extends Bloc<HelpEvent, HelpState> {
  HelpBloc(HelpState initialState) : super(initialState) {
    on<HelpInitialEvent>(_onInitialize);
  }

  _onInitialize(HelpInitialEvent event, Emitter<HelpState> emit) async {}
}
