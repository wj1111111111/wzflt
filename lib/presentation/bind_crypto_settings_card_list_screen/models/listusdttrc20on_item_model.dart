import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listusdttrc20on_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listusdttrc20onItemModel extends Equatable {
  Listusdttrc20onItemModel({
    this.usdttrc20one,
    this.usdttrctwenty,
    this.tplfxh,
    this.date,
    this.usdttrc20three,
    this.id,
  }) {
    usdttrc20one = usdttrc20one ?? ImageConstant.imgGroup2131329901;
    usdttrctwenty = usdttrctwenty ?? "lbl_usdt_trc20".tr;
    tplfxh = tplfxh ?? "lbl_tp_lfxh".tr;
    date = date ?? "lbl_2025_01_03".tr;
    usdttrc20three = usdttrc20three ?? ImageConstant.img5fd78a7083dbb13;
    id = id ?? "";
  }

  String? usdttrc20one;

  String? usdttrctwenty;

  String? tplfxh;

  String? date;

  String? usdttrc20three;

  String? id;

  Listusdttrc20onItemModel copyWith({
    String? usdttrc20one,
    String? usdttrctwenty,
    String? tplfxh,
    String? date,
    String? usdttrc20three,
    String? id,
  }) {
    return Listusdttrc20onItemModel(
      usdttrc20one: usdttrc20one ?? this.usdttrc20one,
      usdttrctwenty: usdttrctwenty ?? this.usdttrctwenty,
      tplfxh: tplfxh ?? this.tplfxh,
      date: date ?? this.date,
      usdttrc20three: usdttrc20three ?? this.usdttrc20three,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    usdttrc20one,
    usdttrctwenty,
    tplfxh,
    date,
    usdttrc20three,
    id,
  ];
}
