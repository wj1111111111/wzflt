import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list103339_item_widget] screen.

// ignore_for_file: must_be_immutable
class List103339ItemModel extends Equatable {
  List103339ItemModel({
    this.image,
    this.oneHundredThreeThousandThreeHundredThirtyNine,
    this.ten,
    this.price,
    this.id,
  }) {
    image = image ?? ImageConstant.img36x36;
    oneHundredThreeThousandThreeHundredThirtyNine =
        oneHundredThreeThousandThreeHundredThirtyNine ?? "lbl_103_339".tr;
    ten = ten ?? "lbl_10".tr;
    price = price ?? "lbl_1500_23".tr;
    id = id ?? "";
  }

  String? image;

  String? oneHundredThreeThousandThreeHundredThirtyNine;

  String? ten;

  String? price;

  String? id;

  List103339ItemModel copyWith({
    String? image,
    String? oneHundredThreeThousandThreeHundredThirtyNine,
    String? ten,
    String? price,
    String? id,
  }) {
    return List103339ItemModel(
      image: image ?? this.image,
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
    image,
    oneHundredThreeThousandThreeHundredThirtyNine,
    ten,
    price,
    id,
  ];
}
