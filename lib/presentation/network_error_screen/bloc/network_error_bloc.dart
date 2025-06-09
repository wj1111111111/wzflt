import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/network_error_model.dart';
part 'network_error_event.dart';
part 'network_error_state.dart';

/// A bloc that manages the state of a NetworkError according to the event that is dispatched to it.
class NetworkErrorBloc extends Bloc<NetworkErrorEvent, NetworkErrorState> {
  NetworkErrorBloc(NetworkErrorState initialState) : super(initialState) {
    on<NetworkErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NetworkErrorInitialEvent event,
    Emitter<NetworkErrorState> emit,
  ) async {}
}
