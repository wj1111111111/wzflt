part of 'egg_smash_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EggSmashPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class EggSmashPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the EggSmashPopup widget is first created.
class EggSmashPopupInitialEvent extends EggSmashPopupEvent {
  @override
  List<Object?> get props => [];
}
