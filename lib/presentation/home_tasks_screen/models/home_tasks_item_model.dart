import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [home_tasks_item_widget] screen.

// ignore_for_file: must_be_immutable
class HomeTasksItemModel extends Equatable {
  HomeTasksItemModel({
    this.cashBackOne,
    this.cashback,
    this.detailsOne,
    this.detailsTwo,
    this.one,
    this.group12444,
    this.id,
  }) {
    cashBackOne = cashBackOne ?? ImageConstant.img9952afd552e65e6;
    cashback = cashback ?? "lbl_cash_back2".tr;
    detailsOne = detailsOne ?? ImageConstant.img1632x94;
    detailsTwo = detailsTwo ?? "lbl_details".tr;
    one = one ?? "lbl_12".tr;
    group12444 = group12444 ?? "lbl_992".tr;
    id = id ?? "";
  }

  String? cashBackOne;

  String? cashback;

  String? detailsOne;

  String? detailsTwo;

  String? one;

  String? group12444;

  String? id;

  HomeTasksItemModel copyWith({
    String? cashBackOne,
    String? cashback,
    String? detailsOne,
    String? detailsTwo,
    String? one,
    String? group12444,
    String? id,
  }) {
    return HomeTasksItemModel(
      cashBackOne: cashBackOne ?? this.cashBackOne,
      cashback: cashback ?? this.cashback,
      detailsOne: detailsOne ?? this.detailsOne,
      detailsTwo: detailsTwo ?? this.detailsTwo,
      one: one ?? this.one,
      group12444: group12444 ?? this.group12444,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    cashBackOne,
    cashback,
    detailsOne,
    detailsTwo,
    one,
    group12444,
    id,
  ];
}
