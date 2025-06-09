import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listnine_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListnineItemModel extends Equatable {
  ListnineItemModel({
    this.nine,
    this.oneHundredThreeThousandThreeHundredThirtyNine,
    this.ten,
    this.price,
    this.id,
  }) {
    nine = nine ?? "lbl_92".tr;
    oneHundredThreeThousandThreeHundredThirtyNine =
        oneHundredThreeThousandThreeHundredThirtyNine ?? "lbl_103_339".tr;
    ten = ten ?? "lbl_10".tr;
    price = price ?? "lbl_1500_23".tr;
    id = id ?? "";
  }

  String? nine;

  String? oneHundredThreeThousandThreeHundredThirtyNine;

  String? ten;

  String? price;

  String? id;

  ListnineItemModel copyWith({
    String? nine,
    String? oneHundredThreeThousandThreeHundredThirtyNine,
    String? ten,
    String? price,
    String? id,
  }) {
    return ListnineItemModel(
      nine: nine ?? this.nine,
      oneHundredThreeThousandThreeHundredThirtyNine:
          oneHundredThreeThousandThreeHundredThirtyNine ??
          this.oneHundredThreeThousandThreeHundredThirtyNine,
      ten: ten ?? this.ten,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    nine,
    oneHundredThreeThousandThreeHundredThirtyNine,
    ten,
    price,
    id,
  ];
}
