part of 'settings_change_password_bloc.dart';

/// Represents the state of SettingsChangePassword in the application.

// ignore_for_file: must_be_immutable
class SettingsChangePasswordState extends Equatable {
  SettingsChangePasswordState({
    this.passwordController,
    this.newpasswordController,
    this.newpasswordoneController,
    this.newpasswordtwoController,
    this.newpassword1Controller,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isShowPassword2 = true,
    this.isShowPassword3 = true,
    this.isShowPassword4 = true,
    this.settingsChangePasswordModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordoneController;

  TextEditingController? newpasswordtwoController;

  TextEditingController? newpassword1Controller;

  SettingsChangePasswordModel? settingsChangePasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool isShowPassword2;

  bool isShowPassword3;

  bool isShowPassword4;

  @override
  List<Object?> get props => [
    passwordController,
    newpasswordController,
    newpasswordoneController,
    newpasswordtwoController,
    newpassword1Controller,
    isShowPassword,
    isShowPassword1,
    isShowPassword2,
    isShowPassword3,
    isShowPassword4,
    settingsChangePasswordModelObj,
  ];
  SettingsChangePasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordoneController,
    TextEditingController? newpasswordtwoController,
    TextEditingController? newpassword1Controller,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isShowPassword2,
    bool? isShowPassword3,
    bool? isShowPassword4,
    SettingsChangePasswordModel? settingsChangePasswordModelObj,
  }) {
    return SettingsChangePasswordState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordoneController:
          newpasswordoneController ?? this.newpasswordoneController,
      newpasswordtwoController:
          newpasswordtwoController ?? this.newpasswordtwoController,
      newpassword1Controller:
          newpassword1Controller ?? this.newpassword1Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isShowPassword2: isShowPassword2 ?? this.isShowPassword2,
      isShowPassword3: isShowPassword3 ?? this.isShowPassword3,
      isShowPassword4: isShowPassword4 ?? this.isShowPassword4,
      settingsChangePasswordModelObj:
          settingsChangePasswordModelObj ?? this.settingsChangePasswordModelObj,
    );
  }
}
