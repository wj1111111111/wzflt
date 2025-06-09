part of 'spin_slice_files_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SpinSliceFilesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SpinSliceFilesOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SpinSliceFilesOne widget is first created.
class SpinSliceFilesOneInitialEvent extends SpinSliceFilesOneEvent {
  @override
  List<Object?> get props => [];
}
