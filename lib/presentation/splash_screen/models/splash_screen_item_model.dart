import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [splash_screen_item_widget] screen.

// ignore_for_file: must_be_immutable
class SplashScreenItemModel extends Equatable {
  SplashScreenItemModel({this.depositrebate, this.five, this.id}) {
    depositrebate = depositrebate ?? "lbl_deposit_rebate".tr;
    five = five ?? "lbl_59".tr;
    id = id ?? "";
  }

  String? depositrebate;

  String? five;

  String? id;

  SplashScreenItemModel copyWith({
    String? depositrebate,
    String? five,
    String? id,
  }) {
    return SplashScreenItemModel(
      depositrebate: depositrebate ?? this.depositrebate,
      five: five ?? this.five,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [depositrebate, five, id];
}
