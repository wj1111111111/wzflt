part of 'wallet_top_up_records_time_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletTopUpRecordsTime widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletTopUpRecordsTimeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletTopUpRecordsTime widget is first created.
class WalletTopUpRecordsTimeInitialEvent extends WalletTopUpRecordsTimeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends WalletTopUpRecordsTimeEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
