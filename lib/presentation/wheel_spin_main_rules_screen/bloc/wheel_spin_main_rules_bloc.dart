import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/grid94bdf4d8739_item_model.dart';
import '../models/list94bdf4d8739_item_model.dart';
import '../models/wheel_spin_main_rules_model.dart';
part 'wheel_spin_main_rules_event.dart';
part 'wheel_spin_main_rules_state.dart';

/// A bloc that manages the state of a WheelSpinMainRules according to the event that is dispatched to it.
class WheelSpinMainRulesBloc
    extends Bloc<WheelSpinMainRulesEvent, WheelSpinMainRulesState> {
  WheelSpinMainRulesBloc(WheelSpinMainRulesState initialState)
    : super(initialState) {
    on<WheelSpinMainRulesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelSpinMainRulesInitialEvent event,
    Emitter<WheelSpinMainRulesState> emit,
  ) async {
    emit(
      state.copyWith(
        wheelSpinMainRulesModelObj: state.wheelSpinMainRulesModelObj?.copyWith(
          list94bdf4d8739ItemList: fillList94bdf4d8739ItemList(),
          grid94bdf4d8739ItemList: fillGrid94bdf4d8739ItemList(),
        ),
      ),
    );
  }

  List<List94bdf4d8739ItemModel> fillList94bdf4d8739ItemList() {
    return List.generate(2, (index) => List94bdf4d8739ItemModel());
  }

  List<Grid94bdf4d8739ItemModel> fillGrid94bdf4d8739ItemList() {
    return [
      Grid94bdf4d8739ItemModel(imageOne: ImageConstant.imgImage276x140),
      Grid94bdf4d8739ItemModel(imageOne: ImageConstant.imgImage24),
      Grid94bdf4d8739ItemModel(),
      Grid94bdf4d8739ItemModel(),
    ];
  }
}
