import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [reward_records_item_widget] screen.

// ignore_for_file: must_be_immutable
class RewardRecordsItemModel extends Equatable {
  RewardRecordsItemModel({
    this.oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight,
    this.luckyspin,
    this.price,
    this.image,
    this.group10405,
    this.id,
  }) {
    oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight =
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight ??
        "lbl_88090_3456".tr;
    luckyspin = luckyspin ?? "lbl_lucky_spin".tr;
    price = price ?? "lbl_493_70".tr;
    image = image ?? ImageConstant.img62201c3324324;
    group10405 = group10405 ?? "lbl_2_000_002".tr;
    id = id ?? "";
  }

  String?
  oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight;

  String? luckyspin;

  String? price;

  String? image;

  String? group10405;

  String? id;

  RewardRecordsItemModel copyWith({
    String?
    oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight,
    String? luckyspin,
    String? price,
    String? image,
    String? group10405,
    String? id,
  }) {
    return RewardRecordsItemModel(
      oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
          oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight ??
          this.oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight,
      luckyspin: luckyspin ?? this.luckyspin,
      price: price ?? this.price,
      image: image ?? this.image,
      group10405: group10405 ?? this.group10405,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight,
    luckyspin,
    price,
    image,
    group10405,
    id,
  ];
}
