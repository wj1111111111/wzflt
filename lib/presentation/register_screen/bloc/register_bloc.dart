import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/register_model.dart';
part 'register_event.dart';
part 'register_state.dart';

/// A bloc that manages the state of a Register according to the event that is dispatched to it.
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(RegisterState initialState) : super(initialState) {
    on<RegisterInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _onInitialize(RegisterInitialEvent event, Emitter<RegisterState> emit) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true,
        lagreetotheuser: false,
        lagreetoreceive: false,
      ),
    );
    emit(
      state.copyWith(
        registerModelObj: state.registerModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
        ),
      ),
    );
  }

  _changeCountry(ChangeCountryEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(ChangeCheckBoxEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(lagreetotheuser: event.value));
  }

  _changeCheckBox1(ChangeCheckBox1Event event, Emitter<RegisterState> emit) {
    emit(state.copyWith(lagreetoreceive: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }
}
