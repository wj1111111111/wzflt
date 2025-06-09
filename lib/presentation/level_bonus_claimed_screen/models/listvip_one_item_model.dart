import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listvip_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListvipOneItemModel extends Equatable {
  ListvipOneItemModel({
    this.vipTwo,
    this.four,
    this.upgradebonus,
    this.price,
    this.id,
  }) {
    vipTwo = vipTwo ?? "lbl_vip2".tr;
    four = four ?? "lbl_4".tr;
    upgradebonus = upgradebonus ?? "lbl_upgrade_bonus2".tr;
    price = price ?? "lbl_18888".tr;
    id = id ?? "";
  }

  String? vipTwo;

  String? four;

  String? upgradebonus;

  String? price;

  String? id;

  ListvipOneItemModel copyWith({
    String? vipTwo,
    String? four,
    String? upgradebonus,
    String? price,
    String? id,
  }) {
    return ListvipOneItemModel(
      vipTwo: vipTwo ?? this.vipTwo,
      four: four ?? this.four,
      upgradebonus: upgradebonus ?? this.upgradebonus,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [vipTwo, four, upgradebonus, price, id];
}
