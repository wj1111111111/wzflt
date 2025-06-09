import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [weekly_salary_item_widget] screen.

// ignore_for_file: must_be_immutable
class WeeklySalaryItemModel extends Equatable {
  WeeklySalaryItemModel({
    this.depositamount,
    this.fivehundred,
    this.eighthundred,
    this.zipcode,
    this.zipcodeOne,
    this.twohundred,
    this.id,
  }) {
    depositamount = depositamount ?? "lbl_deposit_amount".tr;
    fivehundred = fivehundred ?? "lbl_5002".tr;
    eighthundred = eighthundred ?? "lbl_800".tr;
    zipcode = zipcode ?? "lbl_1000".tr;
    zipcodeOne = zipcodeOne ?? "lbl_1200".tr;
    twohundred = twohundred ?? "lbl_2002".tr;
    id = id ?? "";
  }

  String? depositamount;

  String? fivehundred;

  String? eighthundred;

  String? zipcode;

  String? zipcodeOne;

  String? twohundred;

  String? id;

  WeeklySalaryItemModel copyWith({
    String? depositamount,
    String? fivehundred,
    String? eighthundred,
    String? zipcode,
    String? zipcodeOne,
    String? twohundred,
    String? id,
  }) {
    return WeeklySalaryItemModel(
      depositamount: depositamount ?? this.depositamount,
      fivehundred: fivehundred ?? this.fivehundred,
      eighthundred: eighthundred ?? this.eighthundred,
      zipcode: zipcode ?? this.zipcode,
      zipcodeOne: zipcodeOne ?? this.zipcodeOne,
      twohundred: twohundred ?? this.twohundred,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    depositamount,
    fivehundred,
    eighthundred,
    zipcode,
    zipcodeOne,
    twohundred,
    id,
  ];
}
