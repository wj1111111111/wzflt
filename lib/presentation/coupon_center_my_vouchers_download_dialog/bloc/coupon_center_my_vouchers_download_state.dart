part of 'coupon_center_my_vouchers_download_bloc.dart';

/// Represents the state of CouponCenterMyVouchersDownload in the application.

// ignore_for_file: must_be_immutable
class CouponCenterMyVouchersDownloadState extends Equatable {
  CouponCenterMyVouchersDownloadState({
    this.couponCenterMyVouchersDownloadModelObj,
  });

  CouponCenterMyVouchersDownloadModel? couponCenterMyVouchersDownloadModelObj;

  @override
  List<Object?> get props => [couponCenterMyVouchersDownloadModelObj];
  CouponCenterMyVouchersDownloadState copyWith({
    CouponCenterMyVouchersDownloadModel? couponCenterMyVouchersDownloadModelObj,
  }) {
    return CouponCenterMyVouchersDownloadState(
      couponCenterMyVouchersDownloadModelObj:
          couponCenterMyVouchersDownloadModelObj ??
          this.couponCenterMyVouchersDownloadModelObj,
    );
  }
}
