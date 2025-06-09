part of 'forgot_password_mobile_payment_bloc.dart';

/// Represents the state of ForgotPasswordMobilePayment in the application.

// ignore_for_file: must_be_immutable
class ForgotPasswordMobilePaymentState extends Equatable {
  ForgotPasswordMobilePaymentState({
    this.phoneNumberController,
    this.oneoneController,
    this.passwordController,
    this.confirmpasswordController,
    this.selectedCountry,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.forgotPasswordMobilePaymentModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? oneoneController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  ForgotPasswordMobilePaymentModel? forgotPasswordMobilePaymentModelObj;

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
    forgotPasswordMobilePaymentModelObj,
  ];
  ForgotPasswordMobilePaymentState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? oneoneController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? isShowPassword1,
    ForgotPasswordMobilePaymentModel? forgotPasswordMobilePaymentModelObj,
  }) {
    return ForgotPasswordMobilePaymentState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      oneoneController: oneoneController ?? this.oneoneController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      forgotPasswordMobilePaymentModelObj:
          forgotPasswordMobilePaymentModelObj ??
          this.forgotPasswordMobilePaymentModelObj,
    );
  }
}
