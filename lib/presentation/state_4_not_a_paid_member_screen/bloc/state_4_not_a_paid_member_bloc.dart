import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/state_4_not_a_paid_member_model.dart';
part 'state_4_not_a_paid_member_event.dart';
part 'state_4_not_a_paid_member_state.dart';

/// A bloc that manages the state of a State4NotAPaidMember according to the event that is dispatched to it.
class State4NotAPaidMemberBloc
    extends Bloc<State4NotAPaidMemberEvent, State4NotAPaidMemberState> {
  State4NotAPaidMemberBloc(State4NotAPaidMemberState initialState)
    : super(initialState) {
    on<State4NotAPaidMemberInitialEvent>(_onInitialize);
  }

  _onInitialize(
    State4NotAPaidMemberInitialEvent event,
    Emitter<State4NotAPaidMemberState> emit,
  ) async {}
}
