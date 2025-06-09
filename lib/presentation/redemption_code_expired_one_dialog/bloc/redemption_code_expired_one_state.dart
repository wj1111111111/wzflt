part of 'redemption_code_expired_one_bloc.dart';

/// Represents the state of RedemptionCodeExpiredOne in the application.

// ignore_for_file: must_be_immutable
class RedemptionCodeExpiredOneState extends Equatable {
  RedemptionCodeExpiredOneState({
    this.phoneNumberController,
    this.checkmarkoneController,
    this.passwordoneController,
    this.selectedCountry,
    this.redemptionCodeExpiredOneModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? checkmarkoneController;

  TextEditingController? passwordoneController;

  RedemptionCodeExpiredOneModel? redemptionCodeExpiredOneModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
    phoneNumberController,
    checkmarkoneController,
    passwordoneController,
    selectedCountry,
    redemptionCodeExpiredOneModelObj,
  ];
  RedemptionCodeExpiredOneState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? checkmarkoneController,
    TextEditingController? passwordoneController,
    Country? selectedCountry,
    RedemptionCodeExpiredOneModel? redemptionCodeExpiredOneModelObj,
  }) {
    return RedemptionCodeExpiredOneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      checkmarkoneController:
          checkmarkoneController ?? this.checkmarkoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      redemptionCodeExpiredOneModelObj:
          redemptionCodeExpiredOneModelObj ??
          this.redemptionCodeExpiredOneModelObj,
    );
  }
}
