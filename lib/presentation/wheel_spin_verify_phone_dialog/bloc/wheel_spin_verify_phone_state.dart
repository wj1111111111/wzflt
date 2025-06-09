part of 'wheel_spin_verify_phone_bloc.dart';

/// Represents the state of WheelSpinVerifyPhone in the application.

// ignore_for_file: must_be_immutable
class WheelSpinVerifyPhoneState extends Equatable {
  WheelSpinVerifyPhoneState({
    this.phoneNumberController,
    this.checkmarkoneController,
    this.selectedCountry,
    this.wheelSpinVerifyPhoneModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? checkmarkoneController;

  WheelSpinVerifyPhoneModel? wheelSpinVerifyPhoneModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
    phoneNumberController,
    checkmarkoneController,
    selectedCountry,
    wheelSpinVerifyPhoneModelObj,
  ];
  WheelSpinVerifyPhoneState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? checkmarkoneController,
    Country? selectedCountry,
    WheelSpinVerifyPhoneModel? wheelSpinVerifyPhoneModelObj,
  }) {
    return WheelSpinVerifyPhoneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      checkmarkoneController:
          checkmarkoneController ?? this.checkmarkoneController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      wheelSpinVerifyPhoneModelObj:
          wheelSpinVerifyPhoneModelObj ?? this.wheelSpinVerifyPhoneModelObj,
    );
  }
}
