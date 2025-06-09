import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/successful_invitation_notice_model.dart';
part 'successful_invitation_notice_event.dart';
part 'successful_invitation_notice_state.dart';

/// A bloc that manages the state of a SuccessfulInvitationNotice according to the event that is dispatched to it.
class SuccessfulInvitationNoticeBloc
    extends
        Bloc<SuccessfulInvitationNoticeEvent, SuccessfulInvitationNoticeState> {
  SuccessfulInvitationNoticeBloc(SuccessfulInvitationNoticeState initialState)
    : super(initialState) {
    on<SuccessfulInvitationNoticeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuccessfulInvitationNoticeInitialEvent event,
    Emitter<SuccessfulInvitationNoticeState> emit,
  ) async {}
}
