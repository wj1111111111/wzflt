import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/message_empty_model.dart';
part 'message_empty_event.dart';
part 'message_empty_state.dart';

/// A bloc that manages the state of a MessageEmpty according to the event that is dispatched to it.
class MessageEmptyBloc extends Bloc<MessageEmptyEvent, MessageEmptyState> {
  MessageEmptyBloc(MessageEmptyState initialState) : super(initialState) {
    on<MessageEmptyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageEmptyInitialEvent event,
    Emitter<MessageEmptyState> emit,
  ) async {}
}
