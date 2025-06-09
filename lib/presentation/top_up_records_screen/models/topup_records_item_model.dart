import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [topup_records_item_widget] screen.

// ignore_for_file: must_be_immutable
class TopupRecordsItemModel extends Equatable {
  TopupRecordsItemModel({
    this.gcash,
    this.twelve,
    this.price,
    this.success,
    this.id,
  }) {
    gcash = gcash ?? "lbl_gcash".tr;
    twelve = twelve ?? "msg_2023_05_12_12_33_56".tr;
    price = price ?? "lbl_200_002".tr;
    success = success ?? "lbl_success".tr;
    id = id ?? "";
  }

  String? gcash;

  String? twelve;

  String? price;

  String? success;

  String? id;

  TopupRecordsItemModel copyWith({
    String? gcash,
    String? twelve,
    String? price,
    String? success,
    String? id,
  }) {
    return TopupRecordsItemModel(
      gcash: gcash ?? this.gcash,
      twelve: twelve ?? this.twelve,
      price: price ?? this.price,
      success: success ?? this.success,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [gcash, twelve, price, success, id];
}
