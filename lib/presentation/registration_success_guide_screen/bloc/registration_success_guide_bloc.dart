import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listone_item_model.dart';
import '../models/registration_success_guide_model.dart';
part 'registration_success_guide_event.dart';
part 'registration_success_guide_state.dart';

/// A bloc that manages the state of a RegistrationSuccessGuide according to the event that is dispatched to it.
class RegistrationSuccessGuideBloc
    extends Bloc<RegistrationSuccessGuideEvent, RegistrationSuccessGuideState> {
  RegistrationSuccessGuideBloc(RegistrationSuccessGuideState initialState)
    : super(initialState) {
    on<RegistrationSuccessGuideInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistrationSuccessGuideInitialEvent event,
    Emitter<RegistrationSuccessGuideState> emit,
  ) async {
    emit(
      state.copyWith(
        registrationSuccessGuideModelObj: state.registrationSuccessGuideModelObj
            ?.copyWith(listoneItemList: fillListoneItemList()),
      ),
    );
  }

  List<ListoneItemModel> fillListoneItemList() {
    return [
      ListoneItemModel(
        one: "lbl_15".tr,
        group10390: "lbl_013".tr,
        tf: "lbl7".tr,
        group11878: "lbl_562".tr,
        one1: "lbl7".tr,
        hrs: "lbl_hrs".tr,
        mins: "lbl_min_s".tr,
        group11879: "lbl_32_48".tr,
        secs: "lbl_sec_s".tr,
      ),
      ListoneItemModel(),
      ListoneItemModel(),
    ];
  }
}
