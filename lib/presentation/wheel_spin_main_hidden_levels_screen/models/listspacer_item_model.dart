import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listspacer_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListspacerItemModel extends Equatable {
  ListspacerItemModel({
    this.oneHundredFortyThousandNinety,
    this.freespin,
    this.getVar,
    this.price,
    this.ninetee,
    this.id,
  }) {
    oneHundredFortyThousandNinety =
        oneHundredFortyThousandNinety ?? "lbl_140_090".tr;
    freespin = freespin ?? "lbl_1_free_spin".tr;
    getVar = getVar ?? "lbl_get3".tr;
    price = price ?? "lbl_493_70".tr;
    ninetee = ninetee ?? "msg_2023_09_09_19_00_00".tr;
    id = id ?? "";
  }

  String? oneHundredFortyThousandNinety;

  String? freespin;

  String? getVar;

  String? price;

  String? ninetee;

  String? id;

  ListspacerItemModel copyWith({
    String? oneHundredFortyThousandNinety,
    String? freespin,
    String? getVar,
    String? price,
    String? ninetee,
    String? id,
  }) {
    return ListspacerItemModel(
      oneHundredFortyThousandNinety:
          oneHundredFortyThousandNinety ?? this.oneHundredFortyThousandNinety,
      freespin: freespin ?? this.freespin,
      getVar: getVar ?? this.getVar,
      price: price ?? this.price,
      ninetee: ninetee ?? this.ninetee,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    oneHundredFortyThousandNinety,
    freespin,
    getVar,
    price,
    ninetee,
    id,
  ];
}
