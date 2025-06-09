import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listone_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListoneItemModel extends Equatable {
  ListoneItemModel({
    this.one,
    this.group10390,
    this.tf,
    this.group11878,
    this.one1,
    this.hrs,
    this.mins,
    this.group11879,
    this.secs,
    this.id,
  }) {
    one = one ?? "lbl_15".tr;
    group10390 = group10390 ?? "lbl_013".tr;
    tf = tf ?? "lbl7".tr;
    group11878 = group11878 ?? "lbl_562".tr;
    one1 = one1 ?? "lbl7".tr;
    hrs = hrs ?? "lbl_hrs".tr;
    mins = mins ?? "lbl_min_s".tr;
    group11879 = group11879 ?? "lbl_32_48".tr;
    secs = secs ?? "lbl_sec_s".tr;
    id = id ?? "";
  }

  String? one;

  String? group10390;

  String? tf;

  String? group11878;

  String? one1;

  String? hrs;

  String? mins;

  String? group11879;

  String? secs;

  String? id;

  ListoneItemModel copyWith({
    String? one,
    String? group10390,
    String? tf,
    String? group11878,
    String? one1,
    String? hrs,
    String? mins,
    String? group11879,
    String? secs,
    String? id,
  }) {
    return ListoneItemModel(
      one: one ?? this.one,
      group10390: group10390 ?? this.group10390,
      tf: tf ?? this.tf,
      group11878: group11878 ?? this.group11878,
      one1: one1 ?? this.one1,
      hrs: hrs ?? this.hrs,
      mins: mins ?? this.mins,
      group11879: group11879 ?? this.group11879,
      secs: secs ?? this.secs,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    one,
    group10390,
    tf,
    group11878,
    one1,
    hrs,
    mins,
    group11879,
    secs,
    id,
  ];
}
