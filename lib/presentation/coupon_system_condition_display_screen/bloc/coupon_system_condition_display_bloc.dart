import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/coupon_system_condition_display_model.dart';
import '../models/listhot_one_item_model.dart';
part 'coupon_system_condition_display_event.dart';
part 'coupon_system_condition_display_state.dart';

/// A bloc that manages the state of a CouponSystemConditionDisplay according to the event that is dispatched to it.
class CouponSystemConditionDisplayBloc
    extends
        Bloc<
          CouponSystemConditionDisplayEvent,
          CouponSystemConditionDisplayState
        > {
  CouponSystemConditionDisplayBloc(
    CouponSystemConditionDisplayState initialState,
  ) : super(initialState) {
    on<CouponSystemConditionDisplayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponSystemConditionDisplayInitialEvent event,
    Emitter<CouponSystemConditionDisplayState> emit,
  ) async {
    emit(
      state.copyWith(
        couponSystemConditionDisplayModelObj: state
            .couponSystemConditionDisplayModelObj
            ?.copyWith(listhotOneItemList: fillListhotOneItemList()),
      ),
    );
  }

  List<ListhotOneItemModel> fillListhotOneItemList() {
    return [
      ListhotOneItemModel(hotTwo: "lbl_hot".tr),
      ListhotOneItemModel(),
      ListhotOneItemModel(),
      ListhotOneItemModel(),
      ListhotOneItemModel(),
      ListhotOneItemModel(),
      ListhotOneItemModel(),
      ListhotOneItemModel(),
    ];
  }
}
