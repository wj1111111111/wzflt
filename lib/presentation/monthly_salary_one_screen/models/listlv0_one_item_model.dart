import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listlv0_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listlv0OneItemModel extends Equatable {
  Listlv0OneItemModel({
    this.lv0One,
    this.lvzero,
    this.zero,
    this.zeroOne,
    this.tf,
    this.id,
  }) {
    lv0One = lv0One ?? ImageConstant.imgIconVip140x40;
    lvzero = lvzero ?? "lbl_lv_0".tr;
    zero = zero ?? "lbl_99_00".tr;
    zeroOne = zeroOne ?? "lbl_99_00".tr;
    tf = tf ?? "lbl9".tr;
    id = id ?? "";
  }

  String? lv0One;

  String? lvzero;

  String? zero;

  String? zeroOne;

  String? tf;

  String? id;

  Listlv0OneItemModel copyWith({
    String? lv0One,
    String? lvzero,
    String? zero,
    String? zeroOne,
    String? tf,
    String? id,
  }) {
    return Listlv0OneItemModel(
      lv0One: lv0One ?? this.lv0One,
      lvzero: lvzero ?? this.lvzero,
      zero: zero ?? this.zero,
      zeroOne: zeroOne ?? this.zeroOne,
      tf: tf ?? this.tf,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [lv0One, lvzero, zero, zeroOne, tf, id];
}
