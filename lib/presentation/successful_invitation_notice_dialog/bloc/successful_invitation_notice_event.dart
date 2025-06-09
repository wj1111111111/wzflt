part of 'successful_invitation_notice_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuccessfulInvitationNotice widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SuccessfulInvitationNoticeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SuccessfulInvitationNotice widget is first created.
class SuccessfulInvitationNoticeInitialEvent
    extends SuccessfulInvitationNoticeEvent {
  @override
  List<Object?> get props => [];
}
