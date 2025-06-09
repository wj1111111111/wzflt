part of 'bonus_details_qualified_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BonusDetailsQualifiedUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BonusDetailsQualifiedUserEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BonusDetailsQualifiedUser widget is first created.
class BonusDetailsQualifiedUserInitialEvent
    extends BonusDetailsQualifiedUserEvent {
  @override
  List<Object?> get props => [];
}
