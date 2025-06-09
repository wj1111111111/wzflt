part of 'log_in_bloc.dart';

/// Represents the state of LogIn in the application.

// ignore_for_file: must_be_immutable
class LogInState extends Equatable {
  LogInState({
    this.phoneNumberController,
    this.passwordoneController,
    this.passwordtwoController,
    this.selectedCountry,
    this.isShowPassword = true,
    this.reteamspassword = false,
    this.logInModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordoneController;

  TextEditingController? passwordtwoController;

  LogInModel? logInModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  bool reteamspassword;

  @override
  List<Object?> get props => [
    phoneNumberController,
    passwordoneController,
    passwordtwoController,
    selectedCountry,
    isShowPassword,
    reteamspassword,
    logInModelObj,
  ];
  LogInState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordoneController,
    TextEditingController? passwordtwoController,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? reteamspassword,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      passwordtwoController:
          passwordtwoController ?? this.passwordtwoController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      reteamspassword: reteamspassword ?? this.reteamspassword,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
