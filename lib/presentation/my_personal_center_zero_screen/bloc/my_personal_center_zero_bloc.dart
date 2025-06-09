import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_personal_center_zero_model.dart';
part 'my_personal_center_zero_event.dart';
part 'my_personal_center_zero_state.dart';

/// A bloc that manages the state of a MyPersonalCenterZero according to the event that is dispatched to it.
class MyPersonalCenterZeroBloc
    extends Bloc<MyPersonalCenterZeroEvent, MyPersonalCenterZeroState> {
  MyPersonalCenterZeroBloc(MyPersonalCenterZeroState initialState)
    : super(initialState) {
    on<MyPersonalCenterZeroInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyPersonalCenterZeroInitialEvent event,
    Emitter<MyPersonalCenterZeroState> emit,
  ) async {
    emit(
      state.copyWith(
        enterthegiftController: TextEditingController(),
        xxxController: TextEditingController(),
      ),
    );
  }
}
