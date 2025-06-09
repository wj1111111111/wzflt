import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listgcash_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListgcashItemModel extends Equatable {
  ListgcashItemModel({
    this.gcash,
    this.twelve,
    this.price,
    this.credited,
    this.id,
  }) {
    gcash = gcash ?? "lbl_gcash".tr;
    twelve = twelve ?? "msg_2023_05_12_12_33_56".tr;
    price = price ?? "lbl_200_003".tr;
    credited = credited ?? "lbl_credited".tr;
    id = id ?? "";
  }

  String? gcash;

  String? twelve;

  String? price;

  String? credited;

  String? id;

  ListgcashItemModel copyWith({
    String? gcash,
    String? twelve,
    String? price,
    String? credited,
    String? id,
  }) {
    return ListgcashItemModel(
      gcash: gcash ?? this.gcash,
      twelve: twelve ?? this.twelve,
      price: price ?? this.price,
      credited: credited ?? this.credited,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [gcash, twelve, price, credited, id];
}
