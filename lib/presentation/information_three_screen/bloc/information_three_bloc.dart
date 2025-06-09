import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/information_item_model.dart';
import '../models/information_three_model.dart';
part 'information_three_event.dart';
part 'information_three_state.dart';

/// A bloc that manages the state of a InformationThree according to the event that is dispatched to it.
class InformationThreeBloc
    extends Bloc<InformationThreeEvent, InformationThreeState> {
  InformationThreeBloc(InformationThreeState initialState)
    : super(initialState) {
    on<InformationThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InformationThreeInitialEvent event,
    Emitter<InformationThreeState> emit,
  ) async {
    emit(
      state.copyWith(
        informationThreeModelObj: state.informationThreeModelObj?.copyWith(
          informationItemList: fillInformationItemList(),
        ),
      ),
    );
  }

  List<InformationItemModel> fillInformationItemList() {
    return [
      InformationItemModel(
        one: "msg_2024_01_27_01_00_00".tr,
        duration: "msg_automatically_delete2".tr,
        withdrawal: "msg_withdrawal_issues".tr,
        r: "lbl_new_reply".tr,
        sixteen: "msg_2024_04_15_16_59_59".tr,
      ),
      InformationItemModel(),
      InformationItemModel(),
    ];
  }
}
