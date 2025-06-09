import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listinvite_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListinviteOneItemModel extends Equatable {
  ListinviteOneItemModel({this.inviteOne, this.inviteTwo, this.id}) {
    inviteOne = inviteOne ?? ImageConstant.imgSubtract;
    inviteTwo = inviteTwo ?? "lbl_invite".tr;
    id = id ?? "";
  }

  String? inviteOne;

  String? inviteTwo;

  String? id;

  ListinviteOneItemModel copyWith({
    String? inviteOne,
    String? inviteTwo,
    String? id,
  }) {
    return ListinviteOneItemModel(
      inviteOne: inviteOne ?? this.inviteOne,
      inviteTwo: inviteTwo ?? this.inviteTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [inviteOne, inviteTwo, id];
}
