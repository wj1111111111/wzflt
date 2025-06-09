import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listyour_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListyourOneItemModel extends Equatable {
  ListyourOneItemModel({
    this.yourTwo,
    this.eleven,
    this.oneHundredThreeThousandThreeHundredThirtyNine,
    this.ten,
    this.price,
    this.id,
  }) {
    yourTwo = yourTwo ?? "lbl_your".tr;
    eleven = eleven ?? "lbl_112".tr;
    oneHundredThreeThousandThreeHundredThirtyNine =
        oneHundredThreeThousandThreeHundredThirtyNine ?? "lbl_103_339".tr;
    ten = ten ?? "lbl_10".tr;
    price = price ?? "lbl_1500_23".tr;
    id = id ?? "";
  }

  String? yourTwo;

  String? eleven;

  String? oneHundredThreeThousandThreeHundredThirtyNine;

  String? ten;

  String? price;

  String? id;

  ListyourOneItemModel copyWith({
    String? yourTwo,
    String? eleven,
    String? oneHundredThreeThousandThreeHundredThirtyNine,
    String? ten,
    String? price,
    String? id,
  }) {
    return ListyourOneItemModel(
      yourTwo: yourTwo ?? this.yourTwo,
      eleven: eleven ?? this.eleven,
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
    yourTwo,
    eleven,
    oneHundredThreeThousandThreeHundredThirtyNine,
    ten,
    price,
    id,
  ];
}
