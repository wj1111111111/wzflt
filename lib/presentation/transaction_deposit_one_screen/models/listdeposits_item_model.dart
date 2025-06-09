import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdeposits_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdepositsItemModel extends Equatable {
  ListdepositsItemModel({
    this.depositsTwo,
    this.six,
    this.zero,
    this.zeroOne,
    this.tf,
    this.id,
  }) {
    depositsTwo = depositsTwo ?? "lbl_deposits2".tr;
    six = six ?? "msg_21_33_2023_06_08".tr;
    zero = zero ?? "lbl_100_005".tr;
    zeroOne = zeroOne ?? "lbl_100_006".tr;
    tf = tf ?? "lbl2".tr;
    id = id ?? "";
  }

  String? depositsTwo;

  String? six;

  String? zero;

  String? zeroOne;

  String? tf;

  String? id;

  ListdepositsItemModel copyWith({
    String? depositsTwo,
    String? six,
    String? zero,
    String? zeroOne,
    String? tf,
    String? id,
  }) {
    return ListdepositsItemModel(
      depositsTwo: depositsTwo ?? this.depositsTwo,
      six: six ?? this.six,
      zero: zero ?? this.zero,
      zeroOne: zeroOne ?? this.zeroOne,
      tf: tf ?? this.tf,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [depositsTwo, six, zero, zeroOne, tf, id];
}
