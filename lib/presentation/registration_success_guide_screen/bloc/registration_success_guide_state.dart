part of 'registration_success_guide_bloc.dart';

/// Represents the state of RegistrationSuccessGuide in the application.

// ignore_for_file: must_be_immutable
class RegistrationSuccessGuideState extends Equatable {
  RegistrationSuccessGuideState({this.registrationSuccessGuideModelObj});

  RegistrationSuccessGuideModel? registrationSuccessGuideModelObj;

  @override
  List<Object?> get props => [registrationSuccessGuideModelObj];
  RegistrationSuccessGuideState copyWith({
    RegistrationSuccessGuideModel? registrationSuccessGuideModelObj,
  }) {
    return RegistrationSuccessGuideState(
      registrationSuccessGuideModelObj:
          registrationSuccessGuideModelObj ??
          this.registrationSuccessGuideModelObj,
    );
  }
}
