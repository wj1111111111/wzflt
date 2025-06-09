part of 'redemption_code_expired_bloc.dart';

/// Represents the state of RedemptionCodeExpired in the application.

// ignore_for_file: must_be_immutable
class RedemptionCodeExpiredState extends Equatable {
  RedemptionCodeExpiredState({
    this.phoneNumberController,
    this.passwordoneController,
    this.selectedCountry,
    this.redemptionCodeExpiredModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordoneController;

  RedemptionCodeExpiredModel? redemptionCodeExpiredModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
    phoneNumberController,
    passwordoneController,
    selectedCountry,
    redemptionCodeExpiredModelObj,
  ];
  RedemptionCodeExpiredState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordoneController,
    Country? selectedCountry,
    RedemptionCodeExpiredModel? redemptionCodeExpiredModelObj,
  }) {
    return RedemptionCodeExpiredState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      redemptionCodeExpiredModelObj:
          redemptionCodeExpiredModelObj ?? this.redemptionCodeExpiredModelObj,
    );
  }
}
