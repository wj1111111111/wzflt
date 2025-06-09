import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdate_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdateItemModel extends Equatable {
  ListdateItemModel({
    this.date,
    this.group10344,
    this.group10343,
    this.group10342,
    this.group10341,
    this.id,
  }) {
    date = date ?? "lbl_date".tr;
    group10344 = group10344 ?? "msg_2023_09_09_19_00".tr;
    group10343 = group10343 ?? "msg_2023_09_09_19_00".tr;
    group10342 = group10342 ?? "msg_2023_09_09_19_00".tr;
    group10341 = group10341 ?? "msg_2023_09_09_19_00".tr;
    id = id ?? "";
  }

  String? date;

  String? group10344;

  String? group10343;

  String? group10342;

  String? group10341;

  String? id;

  ListdateItemModel copyWith({
    String? date,
    String? group10344,
    String? group10343,
    String? group10342,
    String? group10341,
    String? id,
  }) {
    return ListdateItemModel(
      date: date ?? this.date,
      group10344: group10344 ?? this.group10344,
      group10343: group10343 ?? this.group10343,
      group10342: group10342 ?? this.group10342,
      group10341: group10341 ?? this.group10341,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    date,
    group10344,
    group10343,
    group10342,
    group10341,
    id,
  ];
}
