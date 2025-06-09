import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdeposit_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdepositItemModel extends Equatable {
  ListdepositItemModel({
    this.depositBonus,
    this.depositbonus1,
    this.price,
    this.firstdeposit,
    this.thirty,
    this.seconddeposit,
    this.thirtyOne,
    this.firstdaily,
    this.thirtyTwo,
    this.fixedpayment,
    this.thirtyThree,
    this.id,
  }) {
    depositBonus = depositBonus ?? ImageConstant.imgVector24x26;
    depositbonus1 = depositbonus1 ?? "lbl_deposit_bonus".tr;
    price = price ?? "lbl_total_399_80".tr;
    firstdeposit = firstdeposit ?? "lbl_first_deposit".tr;
    thirty = thirty ?? "lbl_303".tr;
    seconddeposit = seconddeposit ?? "lbl_second_deposit".tr;
    thirtyOne = thirtyOne ?? "lbl_303".tr;
    firstdaily = firstdaily ?? "msg_first_daily_deposit".tr;
    thirtyTwo = thirtyTwo ?? "lbl_303".tr;
    fixedpayment = fixedpayment ?? "msg_fixed_payment_method".tr;
    thirtyThree = thirtyThree ?? "lbl_303".tr;
    id = id ?? "";
  }

  String? depositBonus;

  String? depositbonus1;

  String? price;

  String? firstdeposit;

  String? thirty;

  String? seconddeposit;

  String? thirtyOne;

  String? firstdaily;

  String? thirtyTwo;

  String? fixedpayment;

  String? thirtyThree;

  String? id;

  ListdepositItemModel copyWith({
    String? depositBonus,
    String? depositbonus1,
    String? price,
    String? firstdeposit,
    String? thirty,
    String? seconddeposit,
    String? thirtyOne,
    String? firstdaily,
    String? thirtyTwo,
    String? fixedpayment,
    String? thirtyThree,
    String? id,
  }) {
    return ListdepositItemModel(
      depositBonus: depositBonus ?? this.depositBonus,
      depositbonus1: depositbonus1 ?? this.depositbonus1,
      price: price ?? this.price,
      firstdeposit: firstdeposit ?? this.firstdeposit,
      thirty: thirty ?? this.thirty,
      seconddeposit: seconddeposit ?? this.seconddeposit,
      thirtyOne: thirtyOne ?? this.thirtyOne,
      firstdaily: firstdaily ?? this.firstdaily,
      thirtyTwo: thirtyTwo ?? this.thirtyTwo,
      fixedpayment: fixedpayment ?? this.fixedpayment,
      thirtyThree: thirtyThree ?? this.thirtyThree,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    depositBonus,
    depositbonus1,
    price,
    firstdeposit,
    thirty,
    seconddeposit,
    thirtyOne,
    firstdaily,
    thirtyTwo,
    fixedpayment,
    thirtyThree,
    id,
  ];
}
