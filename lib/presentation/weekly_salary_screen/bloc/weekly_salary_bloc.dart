import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/weekly_salary_item_model.dart';
import '../models/weekly_salary_model.dart';
part 'weekly_salary_event.dart';
part 'weekly_salary_state.dart';

/// A bloc that manages the state of a WeeklySalary according to the event that is dispatched to it.
class WeeklySalaryBloc extends Bloc<WeeklySalaryEvent, WeeklySalaryState> {
  WeeklySalaryBloc(WeeklySalaryState initialState) : super(initialState) {
    on<WeeklySalaryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WeeklySalaryInitialEvent event,
    Emitter<WeeklySalaryState> emit,
  ) async {
    emit(
      state.copyWith(
        weeklySalaryModelObj: state.weeklySalaryModelObj?.copyWith(
          weeklySalaryItemList: fillWeeklySalaryItemList(),
        ),
      ),
    );
  }

  List<WeeklySalaryItemModel> fillWeeklySalaryItemList() {
    return [
      WeeklySalaryItemModel(
        depositamount: "lbl_deposit_amount".tr,
        fivehundred: "lbl_5002".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1000".tr,
        zipcodeOne: "lbl_1200".tr,
        twohundred: "lbl_2002".tr,
      ),
      WeeklySalaryItemModel(
        depositamount: "lbl_bet_amount".tr,
        fivehundred: "lbl_3002".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1000".tr,
        zipcodeOne: "lbl_1200".tr,
        twohundred: "lbl_2002".tr,
      ),
      WeeklySalaryItemModel(
        depositamount: "lbl_upgrade_bonus".tr,
        fivehundred: "lbl_5002".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1000".tr,
        zipcodeOne: "lbl_1200".tr,
        twohundred: "lbl_2002".tr,
      ),
      WeeklySalaryItemModel(
        depositamount: "lbl_monthly_salary2".tr,
        fivehundred: "lbl_3002".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1000".tr,
        zipcodeOne: "lbl_1200".tr,
        twohundred: "lbl_2002".tr,
      ),
      WeeklySalaryItemModel(),
      WeeklySalaryItemModel(),
    ];
  }
}
