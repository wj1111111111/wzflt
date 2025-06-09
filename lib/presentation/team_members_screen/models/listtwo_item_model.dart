import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipview898333_item_model.dart';

/// This class is used in the [listtwo_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListtwoItemModel extends Equatable {
  ListtwoItemModel({
    this.two,
    this.eightHundredNinetyEightThousandThreeHundredThirtyThree,
    this.registers,
    this.depositors,
    this.qualifedUser,
    this.registration,
    this.ninetee,
    this.depositamount,
    this.threeMillionFortyNineThousandNineHundredNine,
    this.validbet,
    this.one,
    this.withdrawal,
    this.two1,
    this.phone,
    this.verified,
    this.chipview898333ItemList,
    this.id,
  }) {
    two = two ?? "lbl_new".tr;
    eightHundredNinetyEightThousandThreeHundredThirtyThree =
        eightHundredNinetyEightThousandThreeHundredThirtyThree ??
        "lbl_898_333".tr;
    registers = registers ?? "lbl_registers".tr;
    depositors = depositors ?? "lbl_depositors".tr;
    qualifedUser = qualifedUser ?? "lbl_qualifed_user".tr;
    registration = registration ?? "msg_registration_date".tr;
    ninetee = ninetee ?? "msg_2023_09_02_19_00_00".tr;
    depositamount = depositamount ?? "lbl_deposit_amount2".tr;
    threeMillionFortyNineThousandNineHundredNine =
        threeMillionFortyNineThousandNineHundredNine ?? "lbl_3_049_909".tr;
    validbet = validbet ?? "lbl_valid_bet".tr;
    one = one ?? "lbl_3_049_909".tr;
    withdrawal = withdrawal ?? "msg_withdrawal_amount".tr;
    two1 = two1 ?? "lbl_3_049_909".tr;
    phone = phone ?? "msg_phone_verification2".tr;
    verified = verified ?? "lbl_verified".tr;
    chipview898333ItemList =
        chipview898333ItemList ??
        [
          Chipview898333ItemModel(
            eightHundredNinetyEightThousandThreeHundredThirtyThree:
                "lbl_898_333".tr,
          ),
          Chipview898333ItemModel(
            eightHundredNinetyEightThousandThreeHundredThirtyThree:
                "lbl_registers".tr,
          ),
          Chipview898333ItemModel(
            eightHundredNinetyEightThousandThreeHundredThirtyThree:
                "lbl_depositors".tr,
          ),
          Chipview898333ItemModel(
            eightHundredNinetyEightThousandThreeHundredThirtyThree:
                "lbl_qualifed_user".tr,
          ),
        ];
    id = id ?? "";
  }

  String? two;

  String? eightHundredNinetyEightThousandThreeHundredThirtyThree;

  String? registers;

  String? depositors;

  String? qualifedUser;

  String? registration;

  String? ninetee;

  String? depositamount;

  String? threeMillionFortyNineThousandNineHundredNine;

  String? validbet;

  String? one;

  String? withdrawal;

  String? two1;

  String? phone;

  String? verified;

  List<Chipview898333ItemModel>? chipview898333ItemList;

  String? id;

  ListtwoItemModel copyWith({
    String? two,
    String? eightHundredNinetyEightThousandThreeHundredThirtyThree,
    String? registers,
    String? depositors,
    String? qualifedUser,
    String? registration,
    String? ninetee,
    String? depositamount,
    String? threeMillionFortyNineThousandNineHundredNine,
    String? validbet,
    String? one,
    String? withdrawal,
    String? two1,
    String? phone,
    String? verified,
    List<Chipview898333ItemModel>? chipview898333ItemList,
    String? id,
  }) {
    return ListtwoItemModel(
      two: two ?? this.two,
      eightHundredNinetyEightThousandThreeHundredThirtyThree:
          eightHundredNinetyEightThousandThreeHundredThirtyThree ??
          this.eightHundredNinetyEightThousandThreeHundredThirtyThree,
      registers: registers ?? this.registers,
      depositors: depositors ?? this.depositors,
      qualifedUser: qualifedUser ?? this.qualifedUser,
      registration: registration ?? this.registration,
      ninetee: ninetee ?? this.ninetee,
      depositamount: depositamount ?? this.depositamount,
      threeMillionFortyNineThousandNineHundredNine:
          threeMillionFortyNineThousandNineHundredNine ??
          this.threeMillionFortyNineThousandNineHundredNine,
      validbet: validbet ?? this.validbet,
      one: one ?? this.one,
      withdrawal: withdrawal ?? this.withdrawal,
      two1: two1 ?? this.two1,
      phone: phone ?? this.phone,
      verified: verified ?? this.verified,
      chipview898333ItemList:
          chipview898333ItemList ?? this.chipview898333ItemList,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    two,
    eightHundredNinetyEightThousandThreeHundredThirtyThree,
    registers,
    depositors,
    qualifedUser,
    registration,
    ninetee,
    depositamount,
    threeMillionFortyNineThousandNineHundredNine,
    validbet,
    one,
    withdrawal,
    two1,
    phone,
    verified,
    chipview898333ItemList,
    id,
  ];
}
