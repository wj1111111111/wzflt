import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listfirst_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListfirstItemModel extends Equatable {
  ListfirstItemModel({this.firstDeposit, this.firstdeposit1, this.id}) {
    firstDeposit = firstDeposit ?? ImageConstant.imgFrame14092;
    firstdeposit1 = firstdeposit1 ?? "lbl_first_deposit".tr;
    id = id ?? "";
  }

  String? firstDeposit;

  String? firstdeposit1;

  String? id;

  ListfirstItemModel copyWith({
    String? firstDeposit,
    String? firstdeposit1,
    String? id,
  }) {
    return ListfirstItemModel(
      firstDeposit: firstDeposit ?? this.firstDeposit,
      firstdeposit1: firstdeposit1 ?? this.firstdeposit1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [firstDeposit, firstdeposit1, id];
}
