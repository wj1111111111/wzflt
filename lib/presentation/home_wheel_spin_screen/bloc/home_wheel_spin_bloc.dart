import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_wheel_spin_model.dart';
import '../models/listpassword_item_model.dart';
part 'home_wheel_spin_event.dart';
part 'home_wheel_spin_state.dart';

/// A bloc that manages the state of a HomeWheelSpin according to the event that is dispatched to it.
class HomeWheelSpinBloc extends Bloc<HomeWheelSpinEvent, HomeWheelSpinState> {
  HomeWheelSpinBloc(HomeWheelSpinState initialState) : super(initialState) {
    on<HomeWheelSpinInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeWheelSpinInitialEvent event,
    Emitter<HomeWheelSpinState> emit,
  ) async {
    emit(
      state.copyWith(
        homeWheelSpinModelObj: state.homeWheelSpinModelObj?.copyWith(
          listpasswordItemList: fillListpasswordItemList(),
        ),
      ),
    );
  }

  List<ListpasswordItemModel> fillListpasswordItemList() {
    return [
      ListpasswordItemModel(
        password: "lbl_ai_6".tr,
        justreceived: "msg_just_received_it".tr,
        price: "lbl_1003".tr,
      ),
      ListpasswordItemModel(
        password: "lbl_md_6".tr,
        justreceived: "msg_just_received_it".tr,
        price: "lbl_1003".tr,
      ),
      ListpasswordItemModel(
        password: "lbl_su_0".tr,
        justreceived: "msg_just_received_it".tr,
        price: "lbl_1003".tr,
      ),
    ];
  }
}
