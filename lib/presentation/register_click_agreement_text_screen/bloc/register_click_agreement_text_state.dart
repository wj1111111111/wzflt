part of 'register_click_agreement_text_bloc.dart';

/// Represents the state of RegisterClickAgreementText in the application.

// ignore_for_file: must_be_immutable
class RegisterClickAgreementTextState extends Equatable {
  RegisterClickAgreementTextState({
    this.phoneNumberController,
    this.passwordoneController,
    this.passwordtwoController,
    this.selectedCountry,
    this.isShowPassword = true,
    this.lagreetotheuser = false,
    this.lagreetoreceive = false,
    this.registerClickAgreementTextModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordoneController;

  TextEditingController? passwordtwoController;

  RegisterClickAgreementTextModel? registerClickAgreementTextModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  bool lagreetotheuser;

  bool lagreetoreceive;

  @override
  List<Object?> get props => [
    phoneNumberController,
    passwordoneController,
    passwordtwoController,
    selectedCountry,
    isShowPassword,
    lagreetotheuser,
    lagreetoreceive,
    registerClickAgreementTextModelObj,
  ];
  RegisterClickAgreementTextState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordoneController,
    TextEditingController? passwordtwoController,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? lagreetotheuser,
    bool? lagreetoreceive,
    RegisterClickAgreementTextModel? registerClickAgreementTextModelObj,
  }) {
    return RegisterClickAgreementTextState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      passwordtwoController:
          passwordtwoController ?? this.passwordtwoController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      lagreetotheuser: lagreetotheuser ?? this.lagreetotheuser,
      lagreetoreceive: lagreetoreceive ?? this.lagreetoreceive,
      registerClickAgreementTextModelObj:
          registerClickAgreementTextModelObj ??
          this.registerClickAgreementTextModelObj,
    );
  }
}
