import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/reward_records_item_model.dart';
import '../models/reward_records_model.dart';
part 'reward_records_event.dart';
part 'reward_records_state.dart';

/// A bloc that manages the state of a RewardRecords according to the event that is dispatched to it.
class RewardRecordsBloc extends Bloc<RewardRecordsEvent, RewardRecordsState> {
  RewardRecordsBloc(RewardRecordsState initialState) : super(initialState) {
    on<RewardRecordsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RewardRecordsInitialEvent event,
    Emitter<RewardRecordsState> emit,
  ) async {
    emit(
      state.copyWith(
        rewardRecordsModelObj: state.rewardRecordsModelObj?.copyWith(
          rewardRecordsItemList: fillRewardRecordsItemList(),
        ),
      ),
    );
  }

  List<RewardRecordsItemModel> fillRewardRecordsItemList() {
    return [
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
        image: ImageConstant.img62201c3324324,
        group10405: "lbl_2_000_002".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
        image: ImageConstant.img62201c3324324,
        group10405: "lbl_2_000_002".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
        image: ImageConstant.img62201c3324324,
        group10405: "lbl_2_000_002".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
      RewardRecordsItemModel(
        oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight:
            "lbl_88090_3456".tr,
        luckyspin: "lbl_lucky_spin".tr,
        price: "lbl_493_70".tr,
      ),
    ];
  }
}
