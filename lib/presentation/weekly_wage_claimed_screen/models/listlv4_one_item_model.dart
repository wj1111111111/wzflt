import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listlv4_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listlv4OneItemModel extends Equatable {
  Listlv4OneItemModel({
    this.lv4One,
    this.lvfour,
    this.eighthundred,
    this.zipcode,
    this.threehundred,
    this.threehundred1,
    this.id,
  }) {
    lv4One = lv4One ?? ImageConstant.imgIconVip4;
    lvfour = lvfour ?? "lbl_lv_42".tr;
    eighthundred = eighthundred ?? "lbl_800".tr;
    zipcode = zipcode ?? "lbl_1200".tr;
    threehundred = threehundred ?? "lbl_3002".tr;
    threehundred1 = threehundred1 ?? "lbl_3002".tr;
    id = id ?? "";
  }

  String? lv4One;

  String? lvfour;

  String? eighthundred;

  String? zipcode;

  String? threehundred;

  String? threehundred1;

  String? id;

  Listlv4OneItemModel copyWith({
    String? lv4One,
    String? lvfour,
    String? eighthundred,
    String? zipcode,
    String? threehundred,
    String? threehundred1,
    String? id,
  }) {
    return Listlv4OneItemModel(
      lv4One: lv4One ?? this.lv4One,
      lvfour: lvfour ?? this.lvfour,
      eighthundred: eighthundred ?? this.eighthundred,
      zipcode: zipcode ?? this.zipcode,
      threehundred: threehundred ?? this.threehundred,
      threehundred1: threehundred1 ?? this.threehundred1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    lv4One,
    lvfour,
    eighthundred,
    zipcode,
    threehundred,
    threehundred1,
    id,
  ];
}
