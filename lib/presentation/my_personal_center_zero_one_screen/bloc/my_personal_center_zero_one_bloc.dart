import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_personal_center_zero_one_model.dart';
part 'my_personal_center_zero_one_event.dart';
part 'my_personal_center_zero_one_state.dart';

/// A bloc that manages the state of a MyPersonalCenterZeroOne according to the event that is dispatched to it.
class MyPersonalCenterZeroOneBloc
    extends Bloc<MyPersonalCenterZeroOneEvent, MyPersonalCenterZeroOneState> {
  MyPersonalCenterZeroOneBloc(MyPersonalCenterZeroOneState initialState)
    : super(initialState) {
    on<MyPersonalCenterZeroOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyPersonalCenterZeroOneInitialEvent event,
    Emitter<MyPersonalCenterZeroOneState> emit,
  ) async {}
}
