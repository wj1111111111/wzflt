import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [bonus_details_item_widget] screen.

// ignore_for_file: must_be_immutable
class BonusDetailsItemModel extends Equatable {
  BonusDetailsItemModel({
    this.inviteBonus,
    this.invitebonus1,
    this.price,
    this.priceOne,
    this.invite,
    this.priceTwo,
    this.invitedeposit,
    this.priceThree,
    this.invitation,
    this.priceFour,
    this.bettingrebate,
    this.priceFive,
    this.inviteesbonus,
    this.id,
  }) {
    inviteBonus = inviteBonus ?? ImageConstant.imgInvite132x32;
    invitebonus1 = invitebonus1 ?? "lbl_invite_bonus".tr;
    price = price ?? "msg_total_19999_80".tr;
    priceOne = priceOne ?? "lbl_99".tr;
    invite = invite ?? "msg_invite_registration".tr;
    priceTwo = priceTwo ?? "lbl_102".tr;
    invitedeposit = invitedeposit ?? "lbl_invite_deposit".tr;
    priceThree = priceThree ?? "lbl_102".tr;
    invitation = invitation ?? "msg_invitation_qualified".tr;
    priceFour = priceFour ?? "lbl_4900_70".tr;
    bettingrebate = bettingrebate ?? "lbl_betting_rebate".tr;
    priceFive = priceFive ?? "lbl_304".tr;
    inviteesbonus = inviteesbonus ?? "lbl_invitees_bonus".tr;
    id = id ?? "";
  }

  String? inviteBonus;

  String? invitebonus1;

  String? price;

  String? priceOne;

  String? invite;

  String? priceTwo;

  String? invitedeposit;

  String? priceThree;

  String? invitation;

  String? priceFour;

  String? bettingrebate;

  String? priceFive;

  String? inviteesbonus;

  String? id;

  BonusDetailsItemModel copyWith({
    String? inviteBonus,
    String? invitebonus1,
    String? price,
    String? priceOne,
    String? invite,
    String? priceTwo,
    String? invitedeposit,
    String? priceThree,
    String? invitation,
    String? priceFour,
    String? bettingrebate,
    String? priceFive,
    String? inviteesbonus,
    String? id,
  }) {
    return BonusDetailsItemModel(
      inviteBonus: inviteBonus ?? this.inviteBonus,
      invitebonus1: invitebonus1 ?? this.invitebonus1,
      price: price ?? this.price,
      priceOne: priceOne ?? this.priceOne,
      invite: invite ?? this.invite,
      priceTwo: priceTwo ?? this.priceTwo,
      invitedeposit: invitedeposit ?? this.invitedeposit,
      priceThree: priceThree ?? this.priceThree,
      invitation: invitation ?? this.invitation,
      priceFour: priceFour ?? this.priceFour,
      bettingrebate: bettingrebate ?? this.bettingrebate,
      priceFive: priceFive ?? this.priceFive,
      inviteesbonus: inviteesbonus ?? this.inviteesbonus,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    inviteBonus,
    invitebonus1,
    price,
    priceOne,
    invite,
    priceTwo,
    invitedeposit,
    priceThree,
    invitation,
    priceFour,
    bettingrebate,
    priceFive,
    inviteesbonus,
    id,
  ];
}
