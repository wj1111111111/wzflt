import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/front_model.dart';
part 'front_event.dart';
part 'front_state.dart';

/// A bloc that manages the state of a Front according to the event that is dispatched to it.
class FrontBloc extends Bloc<FrontEvent, FrontState> {
  FrontBloc(FrontState initialState) : super(initialState) {
    on<FrontInitialEvent>(_onInitialize);
  }

  _onInitialize(FrontInitialEvent event, Emitter<FrontState> emit) async {}
}
