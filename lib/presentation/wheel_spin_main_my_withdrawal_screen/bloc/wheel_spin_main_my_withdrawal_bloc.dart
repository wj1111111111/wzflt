import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list20230909nin_item_model.dart';
import '../models/wheel_spin_main_my_withdrawal_model.dart';
part 'wheel_spin_main_my_withdrawal_event.dart';
part 'wheel_spin_main_my_withdrawal_state.dart';

/// A bloc that manages the state of a WheelSpinMainMyWithdrawal according to the event that is dispatched to it.
class WheelSpinMainMyWithdrawalBloc
    extends
        Bloc<WheelSpinMainMyWithdrawalEvent, WheelSpinMainMyWithdrawalState> {
  WheelSpinMainMyWithdrawalBloc(WheelSpinMainMyWithdrawalState initialState)
    : super(initialState) {
    on<WheelSpinMainMyWithdrawalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelSpinMainMyWithdrawalInitialEvent event,
    Emitter<WheelSpinMainMyWithdrawalState> emit,
  ) async {
    emit(
      state.copyWith(
        wheelSpinMainMyWithdrawalModelObj: state
            .wheelSpinMainMyWithdrawalModelObj
            ?.copyWith(list20230909ninItemList: fillList20230909ninItemList()),
      ),
    );
  }

  List<List20230909ninItemModel> fillList20230909ninItemList() {
    return [
      List20230909ninItemModel(
        ninetee: "msg_2023_09_09_19_00_00".tr,
        price: "lbl_5003".tr,
        processing: "lbl_processing".tr,
      ),
      List20230909ninItemModel(
        ninetee: "msg_2023_09_09_19_00_00".tr,
        price: "lbl_5003".tr,
        processing: "lbl_success".tr,
      ),
      List20230909ninItemModel(),
      List20230909ninItemModel(),
      List20230909ninItemModel(),
    ];
  }
}
