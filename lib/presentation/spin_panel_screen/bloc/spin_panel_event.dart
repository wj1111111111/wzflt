part of 'spin_panel_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SpinPanel widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SpinPanelEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SpinPanel widget is first created.
class SpinPanelInitialEvent extends SpinPanelEvent {
  @override
  List<Object?> get props => [];
}
