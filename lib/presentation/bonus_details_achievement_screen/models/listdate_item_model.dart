import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdate_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdateItemModel extends Equatable {
  ListdateItemModel({
    this.date,
    this.group10572,
    this.group10571,
    this.group10569,
    this.group10567,
    this.id,
  }) {
    date = date ?? "lbl_date".tr;
    group10572 = group10572 ?? "msg_2023_09_09_19_00".tr;
    group10571 = group10571 ?? "msg_2023_09_09_19_00".tr;
    group10569 = group10569 ?? "msg_2023_09_09_19_00".tr;
    group10567 = group10567 ?? "msg_2023_09_09_19_00".tr;
    id = id ?? "";
  }

  String? date;

  String? group10572;

  String? group10571;

  String? group10569;

  String? group10567;

  String? id;

  ListdateItemModel copyWith({
    String? date,
    String? group10572,
    String? group10571,
    String? group10569,
    String? group10567,
    String? id,
  }) {
    return ListdateItemModel(
      date: date ?? this.date,
      group10572: group10572 ?? this.group10572,
      group10571: group10571 ?? this.group10571,
      group10569: group10569 ?? this.group10569,
      group10567: group10567 ?? this.group10567,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    date,
    group10572,
    group10571,
    group10569,
    group10567,
    id,
  ];
}
