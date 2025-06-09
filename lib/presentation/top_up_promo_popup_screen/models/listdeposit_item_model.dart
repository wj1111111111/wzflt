import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdeposit_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdepositItemModel extends Equatable {
  ListdepositItemModel({
    this.deposit,
    this.extra,
    this.tf,
    this.paymayapayment,
    this.upto,
    this.depositOne,
    this.extraOne,
    this.one,
    this.paymayapayment1,
    this.uptoOne,
    this.id,
  }) {
    deposit = deposit ?? "lbl_deposit".tr;
    extra = extra ?? "lbl_extra".tr;
    tf = tf ?? "lbl".tr;
    paymayapayment = paymayapayment ?? "lbl_paymaya_payment".tr;
    upto = upto ?? "lbl_up_to3".tr;
    depositOne = depositOne ?? "lbl_deposit".tr;
    extraOne = extraOne ?? "lbl_extra".tr;
    one = one ?? "lbl".tr;
    paymayapayment1 = paymayapayment1 ?? "lbl_paymaya_payment".tr;
    uptoOne = uptoOne ?? "lbl_up_to3".tr;
    id = id ?? "";
  }

  String? deposit;

  String? extra;

  String? tf;

  String? paymayapayment;

  String? upto;

  String? depositOne;

  String? extraOne;

  String? one;

  String? paymayapayment1;

  String? uptoOne;

  String? id;

  ListdepositItemModel copyWith({
    String? deposit,
    String? extra,
    String? tf,
    String? paymayapayment,
    String? upto,
    String? depositOne,
    String? extraOne,
    String? one,
    String? paymayapayment1,
    String? uptoOne,
    String? id,
  }) {
    return ListdepositItemModel(
      deposit: deposit ?? this.deposit,
      extra: extra ?? this.extra,
      tf: tf ?? this.tf,
      paymayapayment: paymayapayment ?? this.paymayapayment,
      upto: upto ?? this.upto,
      depositOne: depositOne ?? this.depositOne,
      extraOne: extraOne ?? this.extraOne,
      one: one ?? this.one,
      paymayapayment1: paymayapayment1 ?? this.paymayapayment1,
      uptoOne: uptoOne ?? this.uptoOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    deposit,
    extra,
    tf,
    paymayapayment,
    upto,
    depositOne,
    extraOne,
    one,
    paymayapayment1,
    uptoOne,
    id,
  ];
}
