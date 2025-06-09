part of 'my_personal_center_zero_one_bloc.dart';

/// Represents the state of MyPersonalCenterZeroOne in the application.

// ignore_for_file: must_be_immutable
class MyPersonalCenterZeroOneState extends Equatable {
  MyPersonalCenterZeroOneState({this.myPersonalCenterZeroOneModelObj});

  MyPersonalCenterZeroOneModel? myPersonalCenterZeroOneModelObj;

  @override
  List<Object?> get props => [myPersonalCenterZeroOneModelObj];
  MyPersonalCenterZeroOneState copyWith({
    MyPersonalCenterZeroOneModel? myPersonalCenterZeroOneModelObj,
  }) {
    return MyPersonalCenterZeroOneState(
      myPersonalCenterZeroOneModelObj:
          myPersonalCenterZeroOneModelObj ??
          this.myPersonalCenterZeroOneModelObj,
    );
  }
}
