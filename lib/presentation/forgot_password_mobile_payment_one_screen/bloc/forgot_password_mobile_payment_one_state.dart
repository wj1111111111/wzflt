part of 'forgot_password_mobile_payment_one_bloc.dart';

/// Represents the state of ForgotPasswordMobilePaymentOne in the application.

// ignore_for_file: must_be_immutable
class ForgotPasswordMobilePaymentOneState extends Equatable {
  ForgotPasswordMobilePaymentOneState({
    this.phoneNumberController,
    this.oneoneController,
    this.passwordController,
    this.confirmpasswordController,
    this.selectedCountry,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.forgotPasswordMobilePaymentOneModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? oneoneController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  ForgotPasswordMobilePaymentOneModel? forgotPasswordMobilePaymentOneModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
    phoneNumberController,
    oneoneController,
    passwordController,
    confirmpasswordController,
    selectedCountry,
    isShowPassword,
    isShowPassword1,
    forgotPasswordMobilePaymentOneModelObj,
  ];
  ForgotPasswordMobilePaymentOneState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? oneoneController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? isShowPassword1,
    ForgotPasswordMobilePaymentOneModel? forgotPasswordMobilePaymentOneModelObj,
  }) {
    return ForgotPasswordMobilePaymentOneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      oneoneController: oneoneController ?? this.oneoneController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      forgotPasswordMobilePaymentOneModelObj:
          forgotPasswordMobilePaymentOneModelObj ??
          this.forgotPasswordMobilePaymentOneModelObj,
    );
  }
}
