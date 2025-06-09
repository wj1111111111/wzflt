import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/coupon_center_my_vouchers_download_model.dart';
part 'coupon_center_my_vouchers_download_event.dart';
part 'coupon_center_my_vouchers_download_state.dart';

/// A bloc that manages the state of a CouponCenterMyVouchersDownload according to the event that is dispatched to it.
class CouponCenterMyVouchersDownloadBloc
    extends
        Bloc<
          CouponCenterMyVouchersDownloadEvent,
          CouponCenterMyVouchersDownloadState
        > {
  CouponCenterMyVouchersDownloadBloc(
    CouponCenterMyVouchersDownloadState initialState,
  ) : super(initialState) {
    on<CouponCenterMyVouchersDownloadInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponCenterMyVouchersDownloadInitialEvent event,
    Emitter<CouponCenterMyVouchersDownloadState> emit,
  ) async {}
}
