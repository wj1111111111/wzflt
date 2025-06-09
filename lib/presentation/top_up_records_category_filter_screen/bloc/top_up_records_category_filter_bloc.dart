import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/top_up_records_category_filter_model.dart';
part 'top_up_records_category_filter_event.dart';
part 'top_up_records_category_filter_state.dart';

/// A bloc that manages the state of a TopUpRecordsCategoryFilter according to the event that is dispatched to it.
class TopUpRecordsCategoryFilterBloc
    extends
        Bloc<TopUpRecordsCategoryFilterEvent, TopUpRecordsCategoryFilterState> {
  TopUpRecordsCategoryFilterBloc(TopUpRecordsCategoryFilterState initialState)
    : super(initialState) {
    on<TopUpRecordsCategoryFilterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopUpRecordsCategoryFilterInitialEvent event,
    Emitter<TopUpRecordsCategoryFilterState> emit,
  ) async {}
}
