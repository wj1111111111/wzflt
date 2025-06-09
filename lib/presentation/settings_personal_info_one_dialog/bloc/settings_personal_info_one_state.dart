part of 'settings_personal_info_one_bloc.dart';

/// Represents the state of SettingsPersonalInfoOne in the application.

// ignore_for_file: must_be_immutable
class SettingsPersonalInfoOneState extends Equatable {
  SettingsPersonalInfoOneState({this.settingsPersonalInfoOneModelObj});

  SettingsPersonalInfoOneModel? settingsPersonalInfoOneModelObj;

  @override
  List<Object?> get props => [settingsPersonalInfoOneModelObj];
  SettingsPersonalInfoOneState copyWith({
    SettingsPersonalInfoOneModel? settingsPersonalInfoOneModelObj,
  }) {
    return SettingsPersonalInfoOneState(
      settingsPersonalInfoOneModelObj:
          settingsPersonalInfoOneModelObj ??
          this.settingsPersonalInfoOneModelObj,
    );
  }
}
