part of 'message_empty_bloc.dart';

/// Represents the state of MessageEmpty in the application.

// ignore_for_file: must_be_immutable
class MessageEmptyState extends Equatable {
  MessageEmptyState({this.messageEmptyModelObj});

  MessageEmptyModel? messageEmptyModelObj;

  @override
  List<Object?> get props => [messageEmptyModelObj];
  MessageEmptyState copyWith({MessageEmptyModel? messageEmptyModelObj}) {
    return MessageEmptyState(
      messageEmptyModelObj: messageEmptyModelObj ?? this.messageEmptyModelObj,
    );
  }
}
