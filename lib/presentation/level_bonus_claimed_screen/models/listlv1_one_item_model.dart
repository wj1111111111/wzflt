import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listlv1_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listlv1OneItemModel extends Equatable {
  Listlv1OneItemModel({
    this.lv1One,
    this.lvone,
    this.eighthundred,
    this.zipcode,
    this.fivehundred,
    this.fivehundredOne,
    this.id,
  }) {
    lv1One = lv1One ?? ImageConstant.imgIconVip1;
    lvone = lvone ?? "lbl_lv_12".tr;
    eighthundred = eighthundred ?? "lbl_800".tr;
    zipcode = zipcode ?? "lbl_1200".tr;
    fivehundred = fivehundred ?? "lbl_5002".tr;
    fivehundredOne = fivehundredOne ?? "lbl_5002".tr;
    id = id ?? "";
  }

  String? lv1One;

  String? lvone;

  String? eighthundred;

  String? zipcode;

  String? fivehundred;

  String? fivehundredOne;

  String? id;

  Listlv1OneItemModel copyWith({
    String? lv1One,
    String? lvone,
    String? eighthundred,
    String? zipcode,
    String? fivehundred,
    String? fivehundredOne,
    String? id,
  }) {
    return Listlv1OneItemModel(
      lv1One: lv1One ?? this.lv1One,
      lvone: lvone ?? this.lvone,
      eighthundred: eighthundred ?? this.eighthundred,
      zipcode: zipcode ?? this.zipcode,
      fivehundred: fivehundred ?? this.fivehundred,
      fivehundredOne: fivehundredOne ?? this.fivehundredOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    lv1One,
    lvone,
    eighthundred,
    zipcode,
    fivehundred,
    fivehundredOne,
    id,
  ];
}
