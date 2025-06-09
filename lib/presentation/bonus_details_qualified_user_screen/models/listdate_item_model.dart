import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdate_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdateItemModel extends Equatable {
  ListdateItemModel({
    this.date,
    this.group10423,
    this.group10422,
    this.group10421,
    this.group10420,
    this.id,
  }) {
    date = date ?? "lbl_date".tr;
    group10423 = group10423 ?? "msg_2023_09_09_19_00".tr;
    group10422 = group10422 ?? "msg_2023_09_09_19_00".tr;
    group10421 = group10421 ?? "msg_2023_09_09_19_00".tr;
    group10420 = group10420 ?? "msg_2023_09_09_19_00".tr;
    id = id ?? "";
  }

  String? date;

  String? group10423;

  String? group10422;

  String? group10421;

  String? group10420;

  String? id;

  ListdateItemModel copyWith({
    String? date,
    String? group10423,
    String? group10422,
    String? group10421,
    String? group10420,
    String? id,
  }) {
    return ListdateItemModel(
      date: date ?? this.date,
      group10423: group10423 ?? this.group10423,
      group10422: group10422 ?? this.group10422,
      group10421: group10421 ?? this.group10421,
      group10420: group10420 ?? this.group10420,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    date,
    group10423,
    group10422,
    group10421,
    group10420,
    id,
  ];
}
