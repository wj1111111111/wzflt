import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listrecharge_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListrechargeItemModel extends Equatable {
  ListrechargeItemModel({
    this.recharge,
    this.six,
    this.zero,
    this.balance100zero,
    this.tf,
    this.id,
  }) {
    recharge = recharge ?? "msg_recharge_successful".tr;
    six = six ?? "msg_21_33_2023_06_08".tr;
    zero = zero ?? "lbl_100_004".tr;
    balance100zero = balance100zero ?? "lbl_balance_100_00".tr;
    tf = tf ?? "lbl2".tr;
    id = id ?? "";
  }

  String? recharge;

  String? six;

  String? zero;

  String? balance100zero;

  String? tf;

  String? id;

  ListrechargeItemModel copyWith({
    String? recharge,
    String? six,
    String? zero,
    String? balance100zero,
    String? tf,
    String? id,
  }) {
    return ListrechargeItemModel(
      recharge: recharge ?? this.recharge,
      six: six ?? this.six,
      zero: zero ?? this.zero,
      balance100zero: balance100zero ?? this.balance100zero,
      tf: tf ?? this.tf,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [recharge, six, zero, balance100zero, tf, id];
}
