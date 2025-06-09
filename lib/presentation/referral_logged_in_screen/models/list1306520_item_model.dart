import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list1306520_item_widget] screen.

// ignore_for_file: must_be_immutable
class List1306520ItemModel extends Equatable {
  List1306520ItemModel({
    this.oneMillionThreeHundredSixThousandFiveHundredTwenty,
    this.getan,
    this.price,
    this.id,
  }) {
    oneMillionThreeHundredSixThousandFiveHundredTwenty =
        oneMillionThreeHundredSixThousandFiveHundredTwenty ?? "lbl_130_6520".tr;
    getan = getan ?? "msg_get_an_regisiration_bonus".tr;
    price = price ?? "lbl_188_002".tr;
    id = id ?? "";
  }

  String? oneMillionThreeHundredSixThousandFiveHundredTwenty;

  String? getan;

  String? price;

  String? id;

  List1306520ItemModel copyWith({
    String? oneMillionThreeHundredSixThousandFiveHundredTwenty,
    String? getan,
    String? price,
    String? id,
  }) {
    return List1306520ItemModel(
      oneMillionThreeHundredSixThousandFiveHundredTwenty:
          oneMillionThreeHundredSixThousandFiveHundredTwenty ??
          this.oneMillionThreeHundredSixThousandFiveHundredTwenty,
      getan: getan ?? this.getan,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    oneMillionThreeHundredSixThousandFiveHundredTwenty,
    getan,
    price,
    id,
  ];
}
