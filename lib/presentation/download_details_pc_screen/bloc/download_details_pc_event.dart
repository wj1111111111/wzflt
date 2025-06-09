part of 'download_details_pc_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DownloadDetailsPc widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class DownloadDetailsPcEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DownloadDetailsPc widget is first created.
class DownloadDetailsPcInitialEvent extends DownloadDetailsPcEvent {
  @override
  List<Object?> get props => [];
}
