import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/share_page_one_item_model.dart';
import '../models/share_page_one_model.dart';
import '../models/sliderlogowj93t_item_model.dart';
part 'share_page_one_event.dart';
part 'share_page_one_state.dart';

/// A bloc that manages the state of a SharePageOne according to the event that is dispatched to it.
class SharePageOneBloc extends Bloc<SharePageOneEvent, SharePageOneState> {
  SharePageOneBloc(SharePageOneState initialState) : super(initialState) {
    on<SharePageOneInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _onInitialize(
    SharePageOneInitialEvent event,
    Emitter<SharePageOneState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(
      state.copyWith(
        sharePageOneModelObj: state.sharePageOneModelObj?.copyWith(
          sharePageOneItemList: fillSharePageOneItemList(),
          sliderlogowj93tItemList: fillSliderlogowj93tItemList(),
        ),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<SharePageOneState> emit,
  ) {
    emit(state.copyWith(sliderIndex: event.value));
  }

  List<SharePageOneItemModel> fillSharePageOneItemList() {
    return [
      SharePageOneItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      SharePageOneItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      SharePageOneItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      SharePageOneItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
      SharePageOneItemModel(
        tf: "lbl_5547039715226".tr,
        tf1: "lbl_5547039715226".tr,
        tf2: "lbl_5547039715226".tr,
      ),
    ];
  }

  List<Sliderlogowj93tItemModel> fillSliderlogowj93tItemList() {
    return [Sliderlogowj93tItemModel(tf: "lbl_98955464616".tr)];
  }
}
