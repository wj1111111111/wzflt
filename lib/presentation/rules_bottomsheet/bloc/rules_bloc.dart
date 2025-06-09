import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/rules_model.dart';
part 'rules_event.dart';
part 'rules_state.dart';

/// A bloc that manages the state of a Rules according to the event that is dispatched to it.
class RulesBloc extends Bloc<RulesEvent, RulesState> {
  RulesBloc(RulesState initialState) : super(initialState) {
    on<RulesInitialEvent>(_onInitialize);
  }

  _onInitialize(RulesInitialEvent event, Emitter<RulesState> emit) async {}
}
