import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [information_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class InformationOneItemModel extends Equatable {
  InformationOneItemModel({this.one, this.duration, this.invitation, this.id}) {
    one = one ?? "msg_2024_01_27_01_00_00".tr;
    duration = duration ?? "msg_automatically_delete".tr;
    invitation = invitation ?? "msg_invitation_bonus2".tr;
    id = id ?? "";
  }

  String? one;

  String? duration;

  String? invitation;

  String? id;

  InformationOneItemModel copyWith({
    String? one,
    String? duration,
    String? invitation,
    String? id,
  }) {
    return InformationOneItemModel(
      one: one ?? this.one,
      duration: duration ?? this.duration,
      invitation: invitation ?? this.invitation,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [one, duration, invitation, id];
}
