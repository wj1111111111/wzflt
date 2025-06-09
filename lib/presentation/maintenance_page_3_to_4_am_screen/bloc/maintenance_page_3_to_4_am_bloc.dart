import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/maintenance_page_3_to_4_am_model.dart';
part 'maintenance_page_3_to_4_am_event.dart';
part 'maintenance_page_3_to_4_am_state.dart';

/// A bloc that manages the state of a MaintenancePage3To4Am according to the event that is dispatched to it.
class MaintenancePage3To4AmBloc
    extends Bloc<MaintenancePage3To4AmEvent, MaintenancePage3To4AmState> {
  MaintenancePage3To4AmBloc(MaintenancePage3To4AmState initialState)
    : super(initialState) {
    on<MaintenancePage3To4AmInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MaintenancePage3To4AmInitialEvent event,
    Emitter<MaintenancePage3To4AmState> emit,
  ) async {}
}
