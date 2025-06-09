part of 'disclaimer_agreement_bloc.dart';

/// Represents the state of DisclaimerAgreement in the application.

// ignore_for_file: must_be_immutable
class DisclaimerAgreementState extends Equatable {
  DisclaimerAgreementState({this.disclaimerAgreementModelObj});

  DisclaimerAgreementModel? disclaimerAgreementModelObj;

  @override
  List<Object?> get props => [disclaimerAgreementModelObj];
  DisclaimerAgreementState copyWith({
    DisclaimerAgreementModel? disclaimerAgreementModelObj,
  }) {
    return DisclaimerAgreementState(
      disclaimerAgreementModelObj:
          disclaimerAgreementModelObj ?? this.disclaimerAgreementModelObj,
    );
  }
}
