import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [popup_claim_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class PopupClaimOneItemModel extends Equatable {
  PopupClaimOneItemModel({
    this.experience,
    this.experience1,
    this.yourbonus,
    this.tf,
    this.id,
  }) {
    experience = experience ?? "lbl_experience".tr;
    experience1 = experience1 ?? "msg_experience_bonus2".tr;
    yourbonus = yourbonus ?? "lbl_your_bonus".tr;
    tf = tf ?? "lbl22".tr;
    id = id ?? "";
  }

  String? experience;

  String? experience1;

  String? yourbonus;

  String? tf;

  String? id;

  PopupClaimOneItemModel copyWith({
    String? experience,
    String? experience1,
    String? yourbonus,
    String? tf,
    String? id,
  }) {
    return PopupClaimOneItemModel(
      experience: experience ?? this.experience,
      experience1: experience1 ?? this.experience1,
      yourbonus: yourbonus ?? this.yourbonus,
      tf: tf ?? this.tf,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [experience, experience1, yourbonus, tf, id];
}
