import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list20230909nin_item_widget] screen.

// ignore_for_file: must_be_immutable
class List20230909ninItemModel extends Equatable {
  List20230909ninItemModel({
    this.ninetee,
    this.price,
    this.processing,
    this.id,
  }) {
    ninetee = ninetee ?? "msg_2023_09_09_19_00_00".tr;
    price = price ?? "lbl_5003".tr;
    processing = processing ?? "lbl_processing".tr;
    id = id ?? "";
  }

  String? ninetee;

  String? price;

  String? processing;

  String? id;

  List20230909ninItemModel copyWith({
    String? ninetee,
    String? price,
    String? processing,
    String? id,
  }) {
    return List20230909ninItemModel(
      ninetee: ninetee ?? this.ninetee,
      price: price ?? this.price,
      processing: processing ?? this.processing,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [ninetee, price, processing, id];
}
