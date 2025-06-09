import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list55470397152_item_model.dart';
import '../models/listmore_one_item_model.dart';
import '../models/lottery_exit_page_retain_one_model.dart';
part 'lottery_exit_page_retain_one_event.dart';
part 'lottery_exit_page_retain_one_state.dart';

/// A bloc that manages the state of a LotteryExitPageRetainOne according to the event that is dispatched to it.
class LotteryExitPageRetainOneBloc
    extends Bloc<LotteryExitPageRetainOneEvent, LotteryExitPageRetainOneState> {
  LotteryExitPageRetainOneBloc(LotteryExitPageRetainOneState initialState)
    : super(initialState) {
    on<LotteryExitPageRetainOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LotteryExitPageRetainOneInitialEvent event,
    Emitter<LotteryExitPageRetainOneState> emit,
  ) async {
    emit(
      state.copyWith(
        lotteryExitPageRetainOneModelObj: state.lotteryExitPageRetainOneModelObj
            ?.copyWith(
              list55470397152ItemList: fillList55470397152ItemList(),
              listmoreOneItemList: fillListmoreOneItemList(),
            ),
      ),
    );
  }

  List<List55470397152ItemModel> fillList55470397152ItemList() {
    return [
      List55470397152ItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      List55470397152ItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      List55470397152ItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      List55470397152ItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      List55470397152ItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
    ];
  }

  List<ListmoreOneItemModel> fillListmoreOneItemList() {
    return [
      ListmoreOneItemModel(
        moreOne: ImageConstant.imgVectorOnprimary,
        moreTwo: "lbl_more".tr,
      ),
      ListmoreOneItemModel(moreTwo: "lbl_whatsapp".tr),
      ListmoreOneItemModel(moreTwo: "lbl_telegram".tr),
      ListmoreOneItemModel(moreTwo: "lbl_twitter".tr),
      ListmoreOneItemModel(moreTwo: "lbl_facebook".tr),
      ListmoreOneItemModel(moreTwo: "lbl_mail".tr),
    ];
  }
}
