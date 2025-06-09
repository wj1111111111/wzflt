import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listgcash_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListgcashItemModel extends Equatable {
  ListgcashItemModel({
    this.gcash,
    this.price,
    this.twelve,
    this.inprogress,
    this.id,
  }) {
    gcash = gcash ?? "lbl_gcash".tr;
    price = price ?? "lbl_300_002".tr;
    twelve = twelve ?? "msg_2023_05_12_12_33_56".tr;
    inprogress = inprogress ?? "lbl_in_progress".tr;
    id = id ?? "";
  }

  String? gcash;

  String? price;

  String? twelve;

  String? inprogress;

  String? id;

  ListgcashItemModel copyWith({
    String? gcash,
    String? price,
    String? twelve,
    String? inprogress,
    String? id,
  }) {
    return ListgcashItemModel(
      gcash: gcash ?? this.gcash,
      price: price ?? this.price,
      twelve: twelve ?? this.twelve,
      inprogress: inprogress ?? this.inprogress,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [gcash, price, twelve, inprogress, id];
}
