part of 'my_personal_center_zero_bloc.dart';

/// Represents the state of MyPersonalCenterZero in the application.

// ignore_for_file: must_be_immutable
class MyPersonalCenterZeroState extends Equatable {
  MyPersonalCenterZeroState({
    this.enterthegiftController,
    this.xxxController,
    this.myPersonalCenterZeroModelObj,
  });

  TextEditingController? enterthegiftController;

  TextEditingController? xxxController;

  MyPersonalCenterZeroModel? myPersonalCenterZeroModelObj;

  @override
  List<Object?> get props => [
    enterthegiftController,
    xxxController,
    myPersonalCenterZeroModelObj,
  ];
  MyPersonalCenterZeroState copyWith({
    TextEditingController? enterthegiftController,
    TextEditingController? xxxController,
    MyPersonalCenterZeroModel? myPersonalCenterZeroModelObj,
  }) {
    return MyPersonalCenterZeroState(
      enterthegiftController:
          enterthegiftController ?? this.enterthegiftController,
      xxxController: xxxController ?? this.xxxController,
      myPersonalCenterZeroModelObj:
          myPersonalCenterZeroModelObj ?? this.myPersonalCenterZeroModelObj,
    );
  }
}
