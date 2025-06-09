part of 'treasure_box_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TreasureBoxPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TreasureBoxPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TreasureBoxPopup widget is first created.
class TreasureBoxPopupInitialEvent extends TreasureBoxPopupEvent {
  @override
  List<Object?> get props => [];
}
