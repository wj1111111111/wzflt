part of 'personal_center_bloc.dart';

/// Represents the state of PersonalCenter in the application.

// ignore_for_file: must_be_immutable
class PersonalCenterState extends Equatable {
  PersonalCenterState({
    this.enterthegiftController,
    this.personalCenterModelObj,
  });

  TextEditingController? enterthegiftController;

  PersonalCenterModel? personalCenterModelObj;

  @override
  List<Object?> get props => [enterthegiftController, personalCenterModelObj];
  PersonalCenterState copyWith({
    TextEditingController? enterthegiftController,
    PersonalCenterModel? personalCenterModelObj,
  }) {
    return PersonalCenterState(
      enterthegiftController:
          enterthegiftController ?? this.enterthegiftController,
      personalCenterModelObj:
          personalCenterModelObj ?? this.personalCenterModelObj,
    );
  }
}
