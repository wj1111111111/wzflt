import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list123123_item_widget] screen.

// ignore_for_file: must_be_immutable
class List123123ItemModel extends Equatable {
  List123123ItemModel({
    this.image,
    this.oneHundredTwentyThreeThousandOneHundredTwentyThree,
    this.receiveda,
    this.twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo,
    this.id,
  }) {
    image = image ?? ImageConstant.imgEllipse539;
    oneHundredTwentyThreeThousandOneHundredTwentyThree =
        oneHundredTwentyThreeThousandOneHundredTwentyThree ?? "lbl_123_123".tr;
    receiveda = receiveda ?? "msg_received_a_bonus".tr;
    twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo =
        twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo ??
        "msg_1_000_000_000_00".tr;
    id = id ?? "";
  }

  String? image;

  String? oneHundredTwentyThreeThousandOneHundredTwentyThree;

  String? receiveda;

  String? twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo;

  String? id;

  List123123ItemModel copyWith({
    String? image,
    String? oneHundredTwentyThreeThousandOneHundredTwentyThree,
    String? receiveda,
    String? twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo,
    String? id,
  }) {
    return List123123ItemModel(
      image: image ?? this.image,
      oneHundredTwentyThreeThousandOneHundredTwentyThree:
          oneHundredTwentyThreeThousandOneHundredTwentyThree ??
          this.oneHundredTwentyThreeThousandOneHundredTwentyThree,
      receiveda: receiveda ?? this.receiveda,
      twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo:
          twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo ??
          this.twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    image,
    oneHundredTwentyThreeThousandOneHundredTwentyThree,
    receiveda,
    twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo,
    id,
  ];
}
