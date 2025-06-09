import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/successful_invitation_notice_one_model.dart';
part 'successful_invitation_notice_one_event.dart';
part 'successful_invitation_notice_one_state.dart';

/// A bloc that manages the state of a SuccessfulInvitationNoticeOne according to the event that is dispatched to it.
class SuccessfulInvitationNoticeOneBloc
    extends
        Bloc<
          SuccessfulInvitationNoticeOneEvent,
          SuccessfulInvitationNoticeOneState
        > {
  SuccessfulInvitationNoticeOneBloc(
    SuccessfulInvitationNoticeOneState initialState,
  ) : super(initialState) {
    on<SuccessfulInvitationNoticeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuccessfulInvitationNoticeOneInitialEvent event,
    Emitter<SuccessfulInvitationNoticeOneState> emit,
  ) async {}
}
