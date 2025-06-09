part of 'settings_personal_info_bloc.dart';

/// Represents the state of SettingsPersonalInfo in the application.

// ignore_for_file: must_be_immutable
class SettingsPersonalInfoState extends Equatable {
  SettingsPersonalInfoState({
    this.phoneNumberController,
    this.emailController,
    this.emailoneController,
    this.settingsTabModelObj,
    this.selectedCountry,
    this.isShowPassword = true,
    this.settingsPersonalInfoModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? emailController;

  TextEditingController? emailoneController;

  SettingsPersonalInfoModel? settingsPersonalInfoModelObj;

  SettingsTabModel? settingsTabModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  @override
  List<Object?> get props => [
    phoneNumberController,
    emailController,
    emailoneController,
    settingsTabModelObj,
    selectedCountry,
    isShowPassword,
    settingsPersonalInfoModelObj,
  ];
  SettingsPersonalInfoState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? emailController,
    TextEditingController? emailoneController,
    SettingsTabModel? settingsTabModelObj,
    Country? selectedCountry,
    bool? isShowPassword,
    SettingsPersonalInfoModel? settingsPersonalInfoModelObj,
  }) {
    return SettingsPersonalInfoState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      emailController: emailController ?? this.emailController,
      emailoneController: emailoneController ?? this.emailoneController,
      settingsTabModelObj: settingsTabModelObj ?? this.settingsTabModelObj,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      settingsPersonalInfoModelObj:
          settingsPersonalInfoModelObj ?? this.settingsPersonalInfoModelObj,
    );
  }
}
