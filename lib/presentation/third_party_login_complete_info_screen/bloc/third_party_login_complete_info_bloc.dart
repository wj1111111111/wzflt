import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/third_party_login_complete_info_model.dart';
part 'third_party_login_complete_info_event.dart';
part 'third_party_login_complete_info_state.dart';

/// A bloc that manages the state of a ThirdPartyLoginCompleteInfo according to the event that is dispatched to it.
class ThirdPartyLoginCompleteInfoBloc
    extends
        Bloc<
          ThirdPartyLoginCompleteInfoEvent,
          ThirdPartyLoginCompleteInfoState
        > {
  ThirdPartyLoginCompleteInfoBloc(ThirdPartyLoginCompleteInfoState initialState)
    : super(initialState) {
    on<ThirdPartyLoginCompleteInfoInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _onInitialize(
    ThirdPartyLoginCompleteInfoInitialEvent event,
    Emitter<ThirdPartyLoginCompleteInfoState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        mobileNumberController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        thirdPartyLoginCompleteInfoModelObj: state
            .thirdPartyLoginCompleteInfoModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList()),
      ),
    );
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ThirdPartyLoginCompleteInfoState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }
}
