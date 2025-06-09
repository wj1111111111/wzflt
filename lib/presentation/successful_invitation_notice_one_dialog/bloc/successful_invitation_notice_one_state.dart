part of 'successful_invitation_notice_one_bloc.dart';

/// Represents the state of SuccessfulInvitationNoticeOne in the application.

// ignore_for_file: must_be_immutable
class SuccessfulInvitationNoticeOneState extends Equatable {
  SuccessfulInvitationNoticeOneState({
    this.successfulInvitationNoticeOneModelObj,
  });

  SuccessfulInvitationNoticeOneModel? successfulInvitationNoticeOneModelObj;

  @override
  List<Object?> get props => [successfulInvitationNoticeOneModelObj];
  SuccessfulInvitationNoticeOneState copyWith({
    SuccessfulInvitationNoticeOneModel? successfulInvitationNoticeOneModelObj,
  }) {
    return SuccessfulInvitationNoticeOneState(
      successfulInvitationNoticeOneModelObj:
          successfulInvitationNoticeOneModelObj ??
          this.successfulInvitationNoticeOneModelObj,
    );
  }
}
