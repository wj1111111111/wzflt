part of 'personal_center_claimed_bonus_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalCenterClaimedBonus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PersonalCenterClaimedBonusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PersonalCenterClaimedBonus widget is first created.
class PersonalCenterClaimedBonusInitialEvent
    extends PersonalCenterClaimedBonusEvent {
  @override
  List<Object?> get props => [];
}
