import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listlv1_one_item_model.dart';
import '../models/listlv4_one_item_model.dart';
import '../models/listthree_one_item_model.dart';
import '../models/monthly_salary_model.dart';
part 'monthly_salary_event.dart';
part 'monthly_salary_state.dart';

/// A bloc that manages the state of a MonthlySalary according to the event that is dispatched to it.
class MonthlySalaryBloc extends Bloc<MonthlySalaryEvent, MonthlySalaryState> {
  MonthlySalaryBloc(MonthlySalaryState initialState) : super(initialState) {
    on<MonthlySalaryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MonthlySalaryInitialEvent event,
    Emitter<MonthlySalaryState> emit,
  ) async {
    emit(
      state.copyWith(
        monthlySalaryModelObj: state.monthlySalaryModelObj?.copyWith(
          listlv4OneItemList: fillListlv4OneItemList(),
          listlv1OneItemList: fillListlv1OneItemList(),
          listthreeOneItemList: fillListthreeOneItemList(),
        ),
      ),
    );
  }

  List<Listlv4OneItemModel> fillListlv4OneItemList() {
    return [
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip4,
        lvfour: "lbl_lv_42".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip5,
        lvfour: "lbl_lv_5".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip6,
        lvfour: "lbl_lv_6".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip7,
        lvfour: "lbl_lv_7".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip8,
        lvfour: "lbl_lv_8".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip9,
        lvfour: "lbl_lv_9".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
      Listlv4OneItemModel(
        lv4One: ImageConstant.imgIconVip10,
        lvfour: "lbl_lv_10".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        threehundred: "lbl_3002".tr,
        threehundred1: "lbl_3002".tr,
      ),
    ];
  }

  List<Listlv1OneItemModel> fillListlv1OneItemList() {
    return [
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip1,
        lvone: "lbl_lv_12".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_5002".tr,
        fivehundredOne: "lbl_5002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip2,
        lvone: "lbl_lv_22".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_3002".tr,
        fivehundredOne: "lbl_3002".tr,
      ),
      Listlv1OneItemModel(
        lv1One: ImageConstant.imgIconVip3,
        lvone: "lbl_lv_32".tr,
        eighthundred: "lbl_800".tr,
        zipcode: "lbl_1200".tr,
        fivehundred: "lbl_5002".tr,
        fivehundredOne: "lbl_5002".tr,
      ),
    ];
  }

  List<ListthreeOneItemModel> fillListthreeOneItemList() {
    return [
      ListthreeOneItemModel(
        threeOne: ImageConstant.img3,
        image: ImageConstant.img74x344,
      ),
      ListthreeOneItemModel(
        threeOne: ImageConstant.img4,
        image: ImageConstant.img6,
      ),
      ListthreeOneItemModel(
        threeOne: ImageConstant.img4,
        image: ImageConstant.img7,
      ),
    ];
  }
}
