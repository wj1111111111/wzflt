import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/expandablelistm_item_model.dart';
import '../models/information_two_model.dart';
part 'information_two_event.dart';
part 'information_two_state.dart';

/// A bloc that manages the state of a InformationTwo according to the event that is dispatched to it.
class InformationTwoBloc
    extends Bloc<InformationTwoEvent, InformationTwoState> {
  InformationTwoBloc(InformationTwoState initialState) : super(initialState) {
    on<InformationTwoInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
  }

  _onInitialize(
    InformationTwoInitialEvent event,
    Emitter<InformationTwoState> emit,
  ) async {}
  _updateExpandableList(
    UpdateExpandableListEvent event,
    Emitter<InformationTwoState> emit,
  ) {
    List<ExpandablelistmItemModel> newList =
        List<ExpandablelistmItemModel>.from(
          state.informationTwoModelObj!.expandablelistmItemList,
        );
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        informationTwoModelObj: state.informationTwoModelObj?.copyWith(
          expandablelistmItemList: newList,
        ),
      ),
    );
  }
}
