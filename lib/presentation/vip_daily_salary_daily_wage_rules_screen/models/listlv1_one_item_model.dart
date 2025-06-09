import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listlv1_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listlv1OneItemModel extends Equatable {
  Listlv1OneItemModel({
    this.lv1One,
    this.lvone,
    this.lv1Three,
    this.one,
    this.tf,
    this.thirty,
    this.three,
    this.threehundred,
    this.one1,
    this.sevenhundred,
    this.thirteen,
    this.sevenhundred1,
    this.two,
    this.onethousand,
    this.thirtythree,
    this.onethousandOne,
    this.three1,
    this.tenthousand,
    this.fiftythree,
    this.andabove,
    this.sixtythree,
    this.id,
  }) {
    lv1One = lv1One ?? ImageConstant.imgIconVip1;
    lvone = lvone ?? "lbl_lv_12".tr;
    lv1Three = lv1Three ?? ImageConstant.imgFolder;
    one = one ?? "lbl_13".tr;
    tf = tf ?? "lbl5".tr;
    thirty = thirty ?? "lbl_30".tr;
    three = three ?? "lbl_33".tr;
    threehundred = threehundred ?? "lbl_3003".tr;
    one1 = one1 ?? "lbl5".tr;
    sevenhundred = sevenhundred ?? "lbl_700".tr;
    thirteen = thirteen ?? "lbl_132".tr;
    sevenhundred1 = sevenhundred1 ?? "lbl_700".tr;
    two = two ?? "lbl5".tr;
    onethousand = onethousand ?? "lbl_10002".tr;
    thirtythree = thirtythree ?? "lbl_332".tr;
    onethousandOne = onethousandOne ?? "lbl_10002".tr;
    three1 = three1 ?? "lbl5".tr;
    tenthousand = tenthousand ?? "lbl_10000".tr;
    fiftythree = fiftythree ?? "lbl_532".tr;
    andabove = andabove ?? "msg_10000_and_above".tr;
    sixtythree = sixtythree ?? "lbl_63".tr;
    id = id ?? "";
  }

  String? lv1One;

  String? lvone;

  String? lv1Three;

  String? one;

  String? tf;

  String? thirty;

  String? three;

  String? threehundred;

  String? one1;

  String? sevenhundred;

  String? thirteen;

  String? sevenhundred1;

  String? two;

  String? onethousand;

  String? thirtythree;

  String? onethousandOne;

  String? three1;

  String? tenthousand;

  String? fiftythree;

  String? andabove;

  String? sixtythree;

  String? id;

  Listlv1OneItemModel copyWith({
    String? lv1One,
    String? lvone,
    String? lv1Three,
    String? one,
    String? tf,
    String? thirty,
    String? three,
    String? threehundred,
    String? one1,
    String? sevenhundred,
    String? thirteen,
    String? sevenhundred1,
    String? two,
    String? onethousand,
    String? thirtythree,
    String? onethousandOne,
    String? three1,
    String? tenthousand,
    String? fiftythree,
    String? andabove,
    String? sixtythree,
    String? id,
  }) {
    return Listlv1OneItemModel(
      lv1One: lv1One ?? this.lv1One,
      lvone: lvone ?? this.lvone,
      lv1Three: lv1Three ?? this.lv1Three,
      one: one ?? this.one,
      tf: tf ?? this.tf,
      thirty: thirty ?? this.thirty,
      three: three ?? this.three,
      threehundred: threehundred ?? this.threehundred,
      one1: one1 ?? this.one1,
      sevenhundred: sevenhundred ?? this.sevenhundred,
      thirteen: thirteen ?? this.thirteen,
      sevenhundred1: sevenhundred1 ?? this.sevenhundred1,
      two: two ?? this.two,
      onethousand: onethousand ?? this.onethousand,
      thirtythree: thirtythree ?? this.thirtythree,
      onethousandOne: onethousandOne ?? this.onethousandOne,
      three1: three1 ?? this.three1,
      tenthousand: tenthousand ?? this.tenthousand,
      fiftythree: fiftythree ?? this.fiftythree,
      andabove: andabove ?? this.andabove,
      sixtythree: sixtythree ?? this.sixtythree,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    lv1One,
    lvone,
    lv1Three,
    one,
    tf,
    thirty,
    three,
    threehundred,
    one1,
    sevenhundred,
    thirteen,
    sevenhundred1,
    two,
    onethousand,
    thirtythree,
    onethousandOne,
    three1,
    tenthousand,
    fiftythree,
    andabove,
    sixtythree,
    id,
  ];
}
