import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listregistratio_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListregistratioItemModel extends Equatable {
  ListregistratioItemModel({
    this.registration,
    this.price,
    this.priceOne,
    this.depositbonus,
    this.id,
  }) {
    registration = registration ?? "msg_registration_bonus".tr;
    price = price ?? "lbl_7_550_00".tr;
    priceOne = priceOne ?? "lbl_1_000_000_00".tr;
    depositbonus = depositbonus ?? "lbl_deposit_bonus".tr;
    id = id ?? "";
  }

  String? registration;

  String? price;

  String? priceOne;

  String? depositbonus;

  String? id;

  ListregistratioItemModel copyWith({
    String? registration,
    String? price,
    String? priceOne,
    String? depositbonus,
    String? id,
  }) {
    return ListregistratioItemModel(
      registration: registration ?? this.registration,
      price: price ?? this.price,
      priceOne: priceOne ?? this.priceOne,
      depositbonus: depositbonus ?? this.depositbonus,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [registration, price, priceOne, depositbonus, id];
}
