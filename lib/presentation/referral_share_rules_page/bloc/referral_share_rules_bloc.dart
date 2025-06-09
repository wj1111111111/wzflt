import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/expandablelisto_item_model.dart';
import '../models/referral_share_rules_model.dart';
part 'referral_share_rules_event.dart';
part 'referral_share_rules_state.dart';

/// A bloc that manages the state of a ReferralShareRules according to the event that is dispatched to it.
class ReferralShareRulesBloc
    extends Bloc<ReferralShareRulesEvent, ReferralShareRulesState> {
  ReferralShareRulesBloc(ReferralShareRulesState initialState)
    : super(initialState) {
    on<ReferralShareRulesInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
  }

  _onInitialize(
    ReferralShareRulesInitialEvent event,
    Emitter<ReferralShareRulesState> emit,
  ) async {
    emit(
      state.copyWith(
        framefiveController: TextEditingController(),
        norequirementsController: TextEditingController(),
        norequirements1Controller: TextEditingController(),
        frameoneController: TextEditingController(),
        frametwoController: TextEditingController(),
      ),
    );
  }

  _updateExpandableList(
    UpdateExpandableListEvent event,
    Emitter<ReferralShareRulesState> emit,
  ) {
    List<ExpandablelistoItemModel> newList =
        List<ExpandablelistoItemModel>.from(
          state.referralShareRulesModelObj!.expandablelistoItemList,
        );
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        referralShareRulesModelObj: state.referralShareRulesModelObj?.copyWith(
          expandablelistoItemList: newList,
        ),
      ),
    );
  }
}
