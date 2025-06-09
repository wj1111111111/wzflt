import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/coupon_center_voucher_claimed_model.dart';
part 'coupon_center_voucher_claimed_event.dart';
part 'coupon_center_voucher_claimed_state.dart';

/// A bloc that manages the state of a CouponCenterVoucherClaimed according to the event that is dispatched to it.
class CouponCenterVoucherClaimedBloc
    extends
        Bloc<CouponCenterVoucherClaimedEvent, CouponCenterVoucherClaimedState> {
  CouponCenterVoucherClaimedBloc(CouponCenterVoucherClaimedState initialState)
    : super(initialState) {
    on<CouponCenterVoucherClaimedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponCenterVoucherClaimedInitialEvent event,
    Emitter<CouponCenterVoucherClaimedState> emit,
  ) async {}
}
