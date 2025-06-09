part of 'referral_share_rules_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferralShareRules widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReferralShareRulesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReferralShareRules widget is first created.
class ReferralShareRulesInitialEvent extends ReferralShareRulesEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ExpandableList selection

// ignore_for_file: must_be_immutable
class UpdateExpandableListEvent extends ReferralShareRulesEvent {
  UpdateExpandableListEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
