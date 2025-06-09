import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_claim_success_model.dart';
part 'home_claim_success_event.dart';
part 'home_claim_success_state.dart';

/// A bloc that manages the state of a HomeClaimSuccess according to the event that is dispatched to it.
class HomeClaimSuccessBloc
    extends Bloc<HomeClaimSuccessEvent, HomeClaimSuccessState> {
  HomeClaimSuccessBloc(HomeClaimSuccessState initialState)
    : super(initialState) {
    on<HomeClaimSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeClaimSuccessInitialEvent event,
    Emitter<HomeClaimSuccessState> emit,
  ) async {}
}
