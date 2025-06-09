part of 'register_one_bloc.dart';

/// Represents the state of RegisterOne in the application.

// ignore_for_file: must_be_immutable
class RegisterOneState extends Equatable {
  RegisterOneState({
    this.phoneNumberController,
    this.passwordController,
    this.promoCodeController,
    this.selectedCountry,
    this.isShowPassword = true,
    this.lagreetotheuser = false,
    this.lagreetoreceive = false,
    this.registerOneModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  TextEditingController? promoCodeController;

  RegisterOneModel? registerOneModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  bool lagreetotheuser;

  bool lagreetoreceive;

  @override
  List<Object?> get props => [
    phoneNumberController,
    passwordController,
    promoCodeController,
    selectedCountry,
    isShowPassword,
    lagreetotheuser,
    lagreetoreceive,
    registerOneModelObj,
  ];
  RegisterOneState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    TextEditingController? promoCodeController,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? lagreetotheuser,
    bool? lagreetoreceive,
    RegisterOneModel? registerOneModelObj,
  }) {
    return RegisterOneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      promoCodeController: promoCodeController ?? this.promoCodeController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      lagreetotheuser: lagreetotheuser ?? this.lagreetotheuser,
      lagreetoreceive: lagreetoreceive ?? this.lagreetoreceive,
      registerOneModelObj: registerOneModelObj ?? this.registerOneModelObj,
    );
  }
}
