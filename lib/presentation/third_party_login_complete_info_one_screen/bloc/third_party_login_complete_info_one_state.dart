part of 'third_party_login_complete_info_one_bloc.dart';

/// Represents the state of ThirdPartyLoginCompleteInfoOne in the application.

// ignore_for_file: must_be_immutable
class ThirdPartyLoginCompleteInfoOneState extends Equatable {
  ThirdPartyLoginCompleteInfoOneState({
    this.phoneNumberController,
    this.passwordController,
    this.passwordoneController,
    this.promoCodeController,
    this.selectedCountry,
    this.isShowPassword = true,
    this.thirdPartyLoginCompleteInfoOneModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  TextEditingController? passwordoneController;

  TextEditingController? promoCodeController;

  ThirdPartyLoginCompleteInfoOneModel? thirdPartyLoginCompleteInfoOneModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  @override
  List<Object?> get props => [
    phoneNumberController,
    passwordController,
    passwordoneController,
    promoCodeController,
    selectedCountry,
    isShowPassword,
    thirdPartyLoginCompleteInfoOneModelObj,
  ];
  ThirdPartyLoginCompleteInfoOneState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    TextEditingController? passwordoneController,
    TextEditingController? promoCodeController,
    Country? selectedCountry,
    bool? isShowPassword,
    ThirdPartyLoginCompleteInfoOneModel? thirdPartyLoginCompleteInfoOneModelObj,
  }) {
    return ThirdPartyLoginCompleteInfoOneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      promoCodeController: promoCodeController ?? this.promoCodeController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      thirdPartyLoginCompleteInfoOneModelObj:
          thirdPartyLoginCompleteInfoOneModelObj ??
          this.thirdPartyLoginCompleteInfoOneModelObj,
    );
  }
}
