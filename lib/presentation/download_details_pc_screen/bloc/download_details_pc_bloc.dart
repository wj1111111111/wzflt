import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/download_details_pc_model.dart';
part 'download_details_pc_event.dart';
part 'download_details_pc_state.dart';

/// A bloc that manages the state of a DownloadDetailsPc according to the event that is dispatched to it.
class DownloadDetailsPcBloc
    extends Bloc<DownloadDetailsPcEvent, DownloadDetailsPcState> {
  DownloadDetailsPcBloc(DownloadDetailsPcState initialState)
    : super(initialState) {
    on<DownloadDetailsPcInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DownloadDetailsPcInitialEvent event,
    Emitter<DownloadDetailsPcState> emit,
  ) async {}
}
