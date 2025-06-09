part of 'redemption_code_expired_no_random_bloc.dart';

/// Represents the state of RedemptionCodeExpiredNoRandom in the application.

// ignore_for_file: must_be_immutable
class RedemptionCodeExpiredNoRandomState extends Equatable {
  RedemptionCodeExpiredNoRandomState({
    this.phoneNumberController,
    this.checkmarkoneController,
    this.selectedCountry,
    this.redemptionCodeExpiredNoRandomModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? checkmarkoneController;

  RedemptionCodeExpiredNoRandomModel? redemptionCodeExpiredNoRandomModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
    phoneNumberController,
    checkmarkoneController,
    selectedCountry,
    redemptionCodeExpiredNoRandomModelObj,
  ];
  RedemptionCodeExpiredNoRandomState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? checkmarkoneController,
    Country? selectedCountry,
    RedemptionCodeExpiredNoRandomModel? redemptionCodeExpiredNoRandomModelObj,
  }) {
    return RedemptionCodeExpiredNoRandomState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      checkmarkoneController:
          checkmarkoneController ?? this.checkmarkoneController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      redemptionCodeExpiredNoRandomModelObj:
          redemptionCodeExpiredNoRandomModelObj ??
          this.redemptionCodeExpiredNoRandomModelObj,
    );
  }
}
