import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listgcash_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListgcashItemModel extends Equatable {
  ListgcashItemModel({
    this.gcash,
    this.twelve,
    this.price,
    this.inprogress,
    this.id,
  }) {
    gcash = gcash ?? "lbl_gcash".tr;
    twelve = twelve ?? "msg_2023_05_12_12_33_56".tr;
    price = price ?? "lbl_300_002".tr;
    inprogress = inprogress ?? "lbl_in_progress".tr;
    id = id ?? "";
  }

  String? gcash;

  String? twelve;

  String? price;

  String? inprogress;

  String? id;

  ListgcashItemModel copyWith({
    String? gcash,
    String? twelve,
    String? price,
    String? inprogress,
    String? id,
  }) {
    return ListgcashItemModel(
      gcash: gcash ?? this.gcash,
      twelve: twelve ?? this.twelve,
      price: price ?? this.price,
      inprogress: inprogress ?? this.inprogress,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [gcash, twelve, price, inprogress, id];
}
