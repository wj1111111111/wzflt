part of 'treasure_box_confirm_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TreasureBoxConfirm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TreasureBoxConfirmEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TreasureBoxConfirm widget is first created.
class TreasureBoxConfirmInitialEvent extends TreasureBoxConfirmEvent {
  @override
  List<Object?> get props => [];
}
