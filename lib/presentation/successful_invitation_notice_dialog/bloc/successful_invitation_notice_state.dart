part of 'successful_invitation_notice_bloc.dart';

/// Represents the state of SuccessfulInvitationNotice in the application.

// ignore_for_file: must_be_immutable
class SuccessfulInvitationNoticeState extends Equatable {
  SuccessfulInvitationNoticeState({this.successfulInvitationNoticeModelObj});

  SuccessfulInvitationNoticeModel? successfulInvitationNoticeModelObj;

  @override
  List<Object?> get props => [successfulInvitationNoticeModelObj];
  SuccessfulInvitationNoticeState copyWith({
    SuccessfulInvitationNoticeModel? successfulInvitationNoticeModelObj,
  }) {
    return SuccessfulInvitationNoticeState(
      successfulInvitationNoticeModelObj:
          successfulInvitationNoticeModelObj ??
          this.successfulInvitationNoticeModelObj,
    );
  }
}
