import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/information_model.dart';
import '../models/information_one_item_model.dart';
part 'information_event.dart';
part 'information_state.dart';

/// A bloc that manages the state of a Information according to the event that is dispatched to it.
class InformationBloc extends Bloc<InformationEvent, InformationState> {
  InformationBloc(InformationState initialState) : super(initialState) {
    on<InformationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InformationInitialEvent event,
    Emitter<InformationState> emit,
  ) async {
    emit(
      state.copyWith(
        informationModelObj: state.informationModelObj?.copyWith(
          informationOneItemList: fillInformationOneItemList(),
        ),
      ),
    );
  }

  List<InformationOneItemModel> fillInformationOneItemList() {
    return [
      InformationOneItemModel(
        one: "msg_2024_01_27_01_00_00".tr,
        duration: "msg_automatically_delete".tr,
        invitation: "msg_invitation_bonus2".tr,
      ),
      InformationOneItemModel(
        one: "msg_2024_01_27_01_00_00".tr,
        duration: "msg_automatically_delete".tr,
        invitation: "msg_invitation_bonus2".tr,
      ),
    ];
  }
}
