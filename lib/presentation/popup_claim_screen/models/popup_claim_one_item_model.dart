import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [popup_claim_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class PopupClaimOneItemModel extends Equatable {
  PopupClaimOneItemModel({this.registration, this.yourbonus, this.id}) {
    registration = registration ?? "msg_registration_bonus".tr;
    yourbonus = yourbonus ?? "lbl_your_bonus".tr;
    id = id ?? "";
  }

  String? registration;

  String? yourbonus;

  String? id;

  PopupClaimOneItemModel copyWith({
    String? registration,
    String? yourbonus,
    String? id,
  }) {
    return PopupClaimOneItemModel(
      registration: registration ?? this.registration,
      yourbonus: yourbonus ?? this.yourbonus,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [registration, yourbonus, id];
}
