part of 'network_error_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NetworkError widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NetworkErrorEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NetworkError widget is first created.
class NetworkErrorInitialEvent extends NetworkErrorEvent {
  @override
  List<Object?> get props => [];
}
