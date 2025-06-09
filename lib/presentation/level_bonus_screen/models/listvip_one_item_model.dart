import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listvip_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListvipOneItemModel extends Equatable {
  ListvipOneItemModel({
    this.vipOne,
    this.vipTwo,
    this.three,
    this.upgradebonus,
    this.price,
    this.vipFour,
    this.vipFive,
    this.four,
    this.upgradebonus1,
    this.priceOne,
    this.id,
  }) {
    vipOne = vipOne ?? ImageConstant.imgIconVip3;
    vipTwo = vipTwo ?? "lbl_vip2".tr;
    three = three ?? "lbl_3".tr;
    upgradebonus = upgradebonus ?? "lbl_upgrade_bonus2".tr;
    price = price ?? "lbl_182".tr;
    vipFour = vipFour ?? ImageConstant.imgIconVip4;
    vipFive = vipFive ?? "lbl_vip2".tr;
    four = four ?? "lbl_4".tr;
    upgradebonus1 = upgradebonus1 ?? "lbl_upgrade_bonus2".tr;
    priceOne = priceOne ?? "lbl_18888".tr;
    id = id ?? "";
  }

  String? vipOne;

  String? vipTwo;

  String? three;

  String? upgradebonus;

  String? price;

  String? vipFour;

  String? vipFive;

  String? four;

  String? upgradebonus1;

  String? priceOne;

  String? id;

  ListvipOneItemModel copyWith({
    String? vipOne,
    String? vipTwo,
    String? three,
    String? upgradebonus,
    String? price,
    String? vipFour,
    String? vipFive,
    String? four,
    String? upgradebonus1,
    String? priceOne,
    String? id,
  }) {
    return ListvipOneItemModel(
      vipOne: vipOne ?? this.vipOne,
      vipTwo: vipTwo ?? this.vipTwo,
      three: three ?? this.three,
      upgradebonus: upgradebonus ?? this.upgradebonus,
      price: price ?? this.price,
      vipFour: vipFour ?? this.vipFour,
      vipFive: vipFive ?? this.vipFive,
      four: four ?? this.four,
      upgradebonus1: upgradebonus1 ?? this.upgradebonus1,
      priceOne: priceOne ?? this.priceOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    vipOne,
    vipTwo,
    three,
    upgradebonus,
    price,
    vipFour,
    vipFive,
    four,
    upgradebonus1,
    priceOne,
    id,
  ];
}
