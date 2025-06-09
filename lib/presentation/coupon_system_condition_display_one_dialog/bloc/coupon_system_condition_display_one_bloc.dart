import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/coupon_system_condition_display_one_model.dart';
part 'coupon_system_condition_display_one_event.dart';
part 'coupon_system_condition_display_one_state.dart';

/// A bloc that manages the state of a CouponSystemConditionDisplayOne according to the event that is dispatched to it.
class CouponSystemConditionDisplayOneBloc
    extends
        Bloc<
          CouponSystemConditionDisplayOneEvent,
          CouponSystemConditionDisplayOneState
        > {
  CouponSystemConditionDisplayOneBloc(
    CouponSystemConditionDisplayOneState initialState,
  ) : super(initialState) {
    on<CouponSystemConditionDisplayOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponSystemConditionDisplayOneInitialEvent event,
    Emitter<CouponSystemConditionDisplayOneState> emit,
  ) async {}
}
