import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listregistratio_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListregistratioItemModel extends Equatable {
  ListregistratioItemModel({
    this.registration,
    this.registration1,
    this.price,
    this.claimedCounter,
    this.id,
  }) {
    registration = registration ?? ImageConstant.imgInvitationRewards;
    registration1 = registration1 ?? "msg_registration_bonus".tr;
    price = price ?? "msg_353_598_912_00".tr;
    claimedCounter = claimedCounter ?? "lbl_276444_claimed".tr;
    id = id ?? "";
  }

  String? registration;

  String? registration1;

  String? price;

  String? claimedCounter;

  String? id;

  ListregistratioItemModel copyWith({
    String? registration,
    String? registration1,
    String? price,
    String? claimedCounter,
    String? id,
  }) {
    return ListregistratioItemModel(
      registration: registration ?? this.registration,
      registration1: registration1 ?? this.registration1,
      price: price ?? this.price,
      claimedCounter: claimedCounter ?? this.claimedCounter,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    registration,
    registration1,
    price,
    claimedCounter,
    id,
  ];
}
