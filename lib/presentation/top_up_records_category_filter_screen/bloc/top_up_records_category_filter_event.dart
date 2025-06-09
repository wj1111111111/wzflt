part of 'top_up_records_category_filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopUpRecordsCategoryFilter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TopUpRecordsCategoryFilterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TopUpRecordsCategoryFilter widget is first created.
class TopUpRecordsCategoryFilterInitialEvent
    extends TopUpRecordsCategoryFilterEvent {
  @override
  List<Object?> get props => [];
}
