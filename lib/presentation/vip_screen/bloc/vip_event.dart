part of 'vip_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Vip widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VipEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Vip widget is first created.
class VipInitialEvent extends VipEvent {
  @override
  List<Object?> get props => [];
}
