import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_spin_the_wheel_popup_model.dart';
part 'home_spin_the_wheel_popup_event.dart';
part 'home_spin_the_wheel_popup_state.dart';

/// A bloc that manages the state of a HomeSpinTheWheelPopup according to the event that is dispatched to it.
class HomeSpinTheWheelPopupBloc
    extends Bloc<HomeSpinTheWheelPopupEvent, HomeSpinTheWheelPopupState> {
  HomeSpinTheWheelPopupBloc(HomeSpinTheWheelPopupState initialState)
    : super(initialState) {
    on<HomeSpinTheWheelPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeSpinTheWheelPopupInitialEvent event,
    Emitter<HomeSpinTheWheelPopupState> emit,
  ) async {}
}
