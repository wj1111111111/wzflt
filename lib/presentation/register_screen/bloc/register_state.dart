part of 'register_bloc.dart';

/// Represents the state of Register in the application.

// ignore_for_file: must_be_immutable
class RegisterState extends Equatable {
  RegisterState({
    this.phoneNumberController,
    this.passwordController,
    this.selectedDropDownValue,
    this.selectedCountry,
    this.isShowPassword = true,
    this.lagreetotheuser = false,
    this.lagreetoreceive = false,
    this.registerModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  SelectionPopupModel? selectedDropDownValue;

  RegisterModel? registerModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  bool lagreetotheuser;

  bool lagreetoreceive;

  @override
  List<Object?> get props => [
    phoneNumberController,
    passwordController,
    selectedDropDownValue,
    selectedCountry,
    isShowPassword,
    lagreetotheuser,
    lagreetoreceive,
    registerModelObj,
  ];
  RegisterState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? lagreetotheuser,
    bool? lagreetoreceive,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      lagreetotheuser: lagreetotheuser ?? this.lagreetotheuser,
      lagreetoreceive: lagreetoreceive ?? this.lagreetoreceive,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
