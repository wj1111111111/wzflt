import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listcheckmark_item_model.dart';
import '../models/ph_home_model.dart';
part 'ph_home_event.dart';
part 'ph_home_state.dart';

/// A bloc that manages the state of a PhHome according to the event that is dispatched to it.
class PhHomeBloc extends Bloc<PhHomeEvent, PhHomeState> {
  PhHomeBloc(PhHomeState initialState) : super(initialState) {
    on<PhHomeInitialEvent>(_onInitialize);
    on<ListcheckmarkItemEvent>(_listcheckmarkItem);
  }

  _onInitialize(PhHomeInitialEvent event, Emitter<PhHomeState> emit) async {
    emit(
      state.copyWith(
        phHomeModelObj: state.phHomeModelObj?.copyWith(
          listcheckmarkItemList: fillListcheckmarkItemList(),
        ),
      ),
    );
  }

  _listcheckmarkItem(ListcheckmarkItemEvent event, Emitter<PhHomeState> emit) {
    List<ListcheckmarkItemModel> newList = List<ListcheckmarkItemModel>.from(
      state.phHomeModelObj!.listcheckmarkItemList,
    );
    newList[event.index] = newList[event.index].copyWith(
      radioGroup: event.radioGroup,
    );
    emit(
      state.copyWith(
        phHomeModelObj: state.phHomeModelObj?.copyWith(
          listcheckmarkItemList: newList,
        ),
      ),
    );
  }

  List<ListcheckmarkItemModel> fillListcheckmarkItemList() {
    return [
      ListcheckmarkItemModel(phone: "msg_phone_verification4".tr),
      ListcheckmarkItemModel(phone: "msg_deposit_any_amount3".tr),
    ];
  }
}
