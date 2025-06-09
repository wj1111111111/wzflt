import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_tasks_item_model.dart';
import '../models/home_tasks_model.dart';
part 'home_tasks_event.dart';
part 'home_tasks_state.dart';

/// A bloc that manages the state of a HomeTasks according to the event that is dispatched to it.
class HomeTasksBloc extends Bloc<HomeTasksEvent, HomeTasksState> {
  HomeTasksBloc(HomeTasksState initialState) : super(initialState) {
    on<HomeTasksInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeTasksInitialEvent event,
    Emitter<HomeTasksState> emit,
  ) async {
    emit(
      state.copyWith(
        homeTasksModelObj: state.homeTasksModelObj?.copyWith(
          homeTasksItemList: fillHomeTasksItemList(),
        ),
      ),
    );
  }

  List<HomeTasksItemModel> fillHomeTasksItemList() {
    return [
      HomeTasksItemModel(
        cashBackOne: ImageConstant.img9952afd552e65e6,
        cashback: "lbl_cash_back2".tr,
        detailsOne: ImageConstant.img1632x94,
        detailsTwo: "lbl_details".tr,
        one: "lbl_12".tr,
        group12444: "lbl_992".tr,
      ),
      HomeTasksItemModel(
        cashBackOne: ImageConstant.imgGroup120051,
        cashback: "lbl_exclusive".tr,
      ),
      HomeTasksItemModel(cashback: "lbl_notify".tr),
    ];
  }
}
