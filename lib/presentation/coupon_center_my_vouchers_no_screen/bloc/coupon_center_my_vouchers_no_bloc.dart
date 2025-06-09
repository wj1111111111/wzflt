import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/coupon_center_my_vouchers_no_model.dart';
import '../models/couponcenter_tab1_model.dart';
part 'coupon_center_my_vouchers_no_event.dart';
part 'coupon_center_my_vouchers_no_state.dart';

/// A bloc that manages the state of a CouponCenterMyVouchersNo according to the event that is dispatched to it.
class CouponCenterMyVouchersNoBloc
    extends Bloc<CouponCenterMyVouchersNoEvent, CouponCenterMyVouchersNoState> {
  CouponCenterMyVouchersNoBloc(CouponCenterMyVouchersNoState initialState)
    : super(initialState) {
    on<CouponCenterMyVouchersNoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponCenterMyVouchersNoInitialEvent event,
    Emitter<CouponCenterMyVouchersNoState> emit,
  ) async {}
}
