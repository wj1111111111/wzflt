import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listwithdrawal_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListwithdrawalItemModel extends Equatable {
  ListwithdrawalItemModel({this.withdrawalTwo, this.id}) {
    withdrawalTwo = withdrawalTwo ?? "lbl_withdrawal".tr;
    id = id ?? "";
  }

  String? withdrawalTwo;

  String? id;

  ListwithdrawalItemModel copyWith({String? withdrawalTwo, String? id}) {
    return ListwithdrawalItemModel(
      withdrawalTwo: withdrawalTwo ?? this.withdrawalTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [withdrawalTwo, id];
}
