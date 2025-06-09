import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listinvite_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListinviteOneItemModel extends Equatable {
  ListinviteOneItemModel({this.inviteTwo, this.id}) {
    inviteTwo = inviteTwo ?? "lbl_invite3".tr;
    id = id ?? "";
  }

  String? inviteTwo;

  String? id;

  ListinviteOneItemModel copyWith({String? inviteTwo, String? id}) {
    return ListinviteOneItemModel(
      inviteTwo: inviteTwo ?? this.inviteTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [inviteTwo, id];
}
