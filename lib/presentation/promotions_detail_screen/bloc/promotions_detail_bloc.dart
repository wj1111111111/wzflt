import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/promotions_detail_model.dart';
part 'promotions_detail_event.dart';
part 'promotions_detail_state.dart';

/// A bloc that manages the state of a PromotionsDetail according to the event that is dispatched to it.
class PromotionsDetailBloc
    extends Bloc<PromotionsDetailEvent, PromotionsDetailState> {
  PromotionsDetailBloc(PromotionsDetailState initialState)
    : super(initialState) {
    on<PromotionsDetailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PromotionsDetailInitialEvent event,
    Emitter<PromotionsDetailState> emit,
  ) async {}
}
