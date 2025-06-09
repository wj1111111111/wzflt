import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listlv0_one_item_model.dart';
import '../models/monthly_salary_one_model.dart';
part 'monthly_salary_one_event.dart';
part 'monthly_salary_one_state.dart';

/// A bloc that manages the state of a MonthlySalaryOne according to the event that is dispatched to it.
class MonthlySalaryOneBloc
    extends Bloc<MonthlySalaryOneEvent, MonthlySalaryOneState> {
  MonthlySalaryOneBloc(MonthlySalaryOneState initialState)
    : super(initialState) {
    on<MonthlySalaryOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MonthlySalaryOneInitialEvent event,
    Emitter<MonthlySalaryOneState> emit,
  ) async {
    emit(
      state.copyWith(
        monthlySalaryOneModelObj: state.monthlySalaryOneModelObj?.copyWith(
          listlv0OneItemList: fillListlv0OneItemList(),
        ),
      ),
    );
  }

  List<Listlv0OneItemModel> fillListlv0OneItemList() {
    return [
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip140x40,
        lvzero: "lbl_lv_0".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl9".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip1,
        lvzero: "lbl_lv_12".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl9".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip2,
        lvzero: "lbl_lv_22".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip3,
        lvzero: "lbl_lv_32".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip2,
        lvzero: "lbl_lv_42".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip5,
        lvzero: "lbl_lv_5".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip6,
        lvzero: "lbl_lv_6".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip7,
        lvzero: "lbl_lv_7".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip8,
        lvzero: "lbl_lv_8".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
      Listlv0OneItemModel(
        lv0One: ImageConstant.imgIconVip9,
        lvzero: "lbl_lv_9".tr,
        zero: "lbl_99_00".tr,
        zeroOne: "lbl_99_00".tr,
        tf: "lbl_69".tr,
      ),
    ];
  }
}
