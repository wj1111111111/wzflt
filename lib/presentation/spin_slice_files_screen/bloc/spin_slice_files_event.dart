part of 'spin_slice_files_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SpinSliceFiles widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SpinSliceFilesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SpinSliceFiles widget is first created.
class SpinSliceFilesInitialEvent extends SpinSliceFilesEvent {
  @override
  List<Object?> get props => [];
}
