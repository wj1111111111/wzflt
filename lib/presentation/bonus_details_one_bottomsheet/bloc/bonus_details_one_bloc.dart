import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bonus_details_one_model.dart';
part 'bonus_details_one_event.dart';
part 'bonus_details_one_state.dart';

/// A bloc that manages the state of a BonusDetailsOne according to the event that is dispatched to it.
class BonusDetailsOneBloc
    extends Bloc<BonusDetailsOneEvent, BonusDetailsOneState> {
  BonusDetailsOneBloc(BonusDetailsOneState initialState) : super(initialState) {
    on<BonusDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BonusDetailsOneInitialEvent event,
    Emitter<BonusDetailsOneState> emit,
  ) async {}
}
