import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listlv6_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listlv6OneItemModel extends Equatable {
  Listlv6OneItemModel({
    this.lv6One,
    this.lvsix,
    this.eighthundred,
    this.zipcode,
    this.threehundred,
    this.threehundred1,
    this.id,
  }) {
    lv6One = lv6One ?? ImageConstant.imgIconVip6;
    lvsix = lvsix ?? "lbl_lv_6".tr;
    eighthundred = eighthundred ?? "lbl_800".tr;
    zipcode = zipcode ?? "lbl_1200".tr;
    threehundred = threehundred ?? "lbl_3002".tr;
    threehundred1 = threehundred1 ?? "lbl_3002".tr;
    id = id ?? "";
  }

  String? lv6One;

  String? lvsix;

  String? eighthundred;

  String? zipcode;

  String? threehundred;

  String? threehundred1;

  String? id;

  Listlv6OneItemModel copyWith({
    String? lv6One,
    String? lvsix,
    String? eighthundred,
    String? zipcode,
    String? threehundred,
    String? threehundred1,
    String? id,
  }) {
    return Listlv6OneItemModel(
      lv6One: lv6One ?? this.lv6One,
      lvsix: lvsix ?? this.lvsix,
      eighthundred: eighthundred ?? this.eighthundred,
      zipcode: zipcode ?? this.zipcode,
      threehundred: threehundred ?? this.threehundred,
      threehundred1: threehundred1 ?? this.threehundred1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    lv6One,
    lvsix,
    eighthundred,
    zipcode,
    threehundred,
    threehundred1,
    id,
  ];
}
