part of 'birthday_bonus_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BirthdayBonus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BirthdayBonusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BirthdayBonus widget is first created.
class BirthdayBonusInitialEvent extends BirthdayBonusEvent {
  @override
  List<Object?> get props => [];
}
