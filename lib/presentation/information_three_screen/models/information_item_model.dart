import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [information_item_widget] screen.

// ignore_for_file: must_be_immutable
class InformationItemModel extends Equatable {
  InformationItemModel({
    this.one,
    this.duration,
    this.withdrawal,
    this.r,
    this.sixteen,
    this.id,
  }) {
    one = one ?? "msg_2024_01_27_01_00_00".tr;
    duration = duration ?? "msg_automatically_delete2".tr;
    withdrawal = withdrawal ?? "msg_withdrawal_issues".tr;
    r = r ?? "lbl_new_reply".tr;
    sixteen = sixteen ?? "msg_2024_04_15_16_59_59".tr;
    id = id ?? "";
  }

  String? one;

  String? duration;

  String? withdrawal;

  String? r;

  String? sixteen;

  String? id;

  InformationItemModel copyWith({
    String? one,
    String? duration,
    String? withdrawal,
    String? r,
    String? sixteen,
    String? id,
  }) {
    return InformationItemModel(
      one: one ?? this.one,
      duration: duration ?? this.duration,
      withdrawal: withdrawal ?? this.withdrawal,
      r: r ?? this.r,
      sixteen: sixteen ?? this.sixteen,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [one, duration, withdrawal, r, sixteen, id];
}
