part of 'settings_add_account_bloc.dart';

/// Represents the state of SettingsAddAccount in the application.

// ignore_for_file: must_be_immutable
class SettingsAddAccountState extends Equatable {
  SettingsAddAccountState({this.settingsAddAccountModelObj});

  SettingsAddAccountModel? settingsAddAccountModelObj;

  @override
  List<Object?> get props => [settingsAddAccountModelObj];
  SettingsAddAccountState copyWith({
    SettingsAddAccountModel? settingsAddAccountModelObj,
  }) {
    return SettingsAddAccountState(
      settingsAddAccountModelObj:
          settingsAddAccountModelObj ?? this.settingsAddAccountModelObj,
    );
  }
}
