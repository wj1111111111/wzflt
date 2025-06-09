import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listspacer_item_model.dart';
import '../models/wheel_spin_main_hidden_levels_model.dart';
import '../models/wheelspinmain_tab_model.dart';
part 'wheel_spin_main_hidden_levels_event.dart';
part 'wheel_spin_main_hidden_levels_state.dart';

/// A bloc that manages the state of a WheelSpinMainHiddenLevels according to the event that is dispatched to it.
class WheelSpinMainHiddenLevelsBloc
    extends
        Bloc<WheelSpinMainHiddenLevelsEvent, WheelSpinMainHiddenLevelsState> {
  WheelSpinMainHiddenLevelsBloc(WheelSpinMainHiddenLevelsState initialState)
    : super(initialState) {
    on<WheelSpinMainHiddenLevelsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelSpinMainHiddenLevelsInitialEvent event,
    Emitter<WheelSpinMainHiddenLevelsState> emit,
  ) async {
    emit(
      state.copyWith(
        wheelSpinMainHiddenLevelsModelObj: state
            .wheelSpinMainHiddenLevelsModelObj
            ?.copyWith(listspacerItemList: fillListspacerItemList()),
      ),
    );
  }

  List<ListspacerItemModel> fillListspacerItemList() {
    return [
      ListspacerItemModel(
        oneHundredFortyThousandNinety: "lbl_140_090".tr,
        freespin: "lbl_1_free_spin".tr,
        getVar: "lbl_get3".tr,
        price: "lbl_493_70".tr,
        ninetee: "msg_2023_09_09_19_00_00".tr,
      ),
      ListspacerItemModel(),
      ListspacerItemModel(),
    ];
  }
}
