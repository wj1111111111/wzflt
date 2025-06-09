import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/betting_history_item_model.dart';
import '../models/betting_history_model.dart';
part 'betting_history_event.dart';
part 'betting_history_state.dart';

/// A bloc that manages the state of a BettingHistory according to the event that is dispatched to it.
class BettingHistoryBloc
    extends Bloc<BettingHistoryEvent, BettingHistoryState> {
  BettingHistoryBloc(BettingHistoryState initialState) : super(initialState) {
    on<BettingHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BettingHistoryInitialEvent event,
    Emitter<BettingHistoryState> emit,
  ) async {
    emit(
      state.copyWith(
        bettingHistoryModelObj: state.bettingHistoryModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          bettingHistoryItemList: fillBettingHistoryItemList(),
        ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }

  List<BettingHistoryItemModel> fillBettingHistoryItemList() {
    return [
      BettingHistoryItemModel(
        image: ImageConstant.imgThumbsUpBlueGray400,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_1_96".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgProfileBlueGray40016x16,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_0".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgUserBlueGray40016x12,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_0".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgMaximizeBlueGray400,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_0".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgThumbsUpBlueGray400,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_1_96".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgProfileBlueGray40016x16,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_0".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgUserBlueGray40016x12,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_0".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgMaximizeBlueGray400,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_0".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgMaximizeBlueGray400,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_1_96".tr,
        one: "lbl2".tr,
      ),
      BettingHistoryItemModel(
        image: ImageConstant.imgMaximizeBlueGray400,
        fortunetiger: "lbl_fortune_tiger".tr,
        twelve: "msg_2022_10_26_12_33_24".tr,
        zero: "lbl_1_003".tr,
        tf: "lbl2".tr,
        ninetysix: "lbl_1_96".tr,
        one: "lbl2".tr,
      ),
    ];
  }
}
