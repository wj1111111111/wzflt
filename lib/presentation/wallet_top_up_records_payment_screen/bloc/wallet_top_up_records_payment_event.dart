part of 'wallet_top_up_records_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletTopUpRecordsPayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletTopUpRecordsPaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletTopUpRecordsPayment widget is first created.
class WalletTopUpRecordsPaymentInitialEvent
    extends WalletTopUpRecordsPaymentEvent {
  @override
  List<Object?> get props => [];
}
