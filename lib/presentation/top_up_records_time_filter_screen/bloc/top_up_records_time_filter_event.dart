part of 'top_up_records_time_filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopUpRecordsTimeFilter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TopUpRecordsTimeFilterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TopUpRecordsTimeFilter widget is first created.
class TopUpRecordsTimeFilterInitialEvent extends TopUpRecordsTimeFilterEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends TopUpRecordsTimeFilterEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
