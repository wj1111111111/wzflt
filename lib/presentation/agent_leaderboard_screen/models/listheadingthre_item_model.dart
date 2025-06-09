import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listheadingthre_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListheadingthreItemModel extends Equatable {
  ListheadingthreItemModel({
    this.headingthree,
    this.headingthree1,
    this.headingthree2,
    this.headingthree3,
    this.headingthree4,
    this.headingthree5,
    this.headingthree6,
    this.headingthree7,
    this.headingthree8,
    this.id,
  }) {
    headingthree = headingthree ?? "lbl_time_remaining".tr;
    headingthree1 = headingthree1 ?? "lbl_062".tr;
    headingthree2 = headingthree2 ?? "lbl_day".tr;
    headingthree3 = headingthree3 ?? "lbl_112".tr;
    headingthree4 = headingthree4 ?? "lbl_hour".tr;
    headingthree5 = headingthree5 ?? "lbl_382".tr;
    headingthree6 = headingthree6 ?? "lbl_minute".tr;
    headingthree7 = headingthree7 ?? "lbl_47".tr;
    headingthree8 = headingthree8 ?? "lbl_second".tr;
    id = id ?? "";
  }

  String? headingthree;

  String? headingthree1;

  String? headingthree2;

  String? headingthree3;

  String? headingthree4;

  String? headingthree5;

  String? headingthree6;

  String? headingthree7;

  String? headingthree8;

  String? id;

  ListheadingthreItemModel copyWith({
    String? headingthree,
    String? headingthree1,
    String? headingthree2,
    String? headingthree3,
    String? headingthree4,
    String? headingthree5,
    String? headingthree6,
    String? headingthree7,
    String? headingthree8,
    String? id,
  }) {
    return ListheadingthreItemModel(
      headingthree: headingthree ?? this.headingthree,
      headingthree1: headingthree1 ?? this.headingthree1,
      headingthree2: headingthree2 ?? this.headingthree2,
      headingthree3: headingthree3 ?? this.headingthree3,
      headingthree4: headingthree4 ?? this.headingthree4,
      headingthree5: headingthree5 ?? this.headingthree5,
      headingthree6: headingthree6 ?? this.headingthree6,
      headingthree7: headingthree7 ?? this.headingthree7,
      headingthree8: headingthree8 ?? this.headingthree8,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    headingthree,
    headingthree1,
    headingthree2,
    headingthree3,
    headingthree4,
    headingthree5,
    headingthree6,
    headingthree7,
    headingthree8,
    id,
  ];
}
