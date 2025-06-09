part of 'home_wheel_spin_bloc.dart';

/// Represents the state of HomeWheelSpin in the application.

// ignore_for_file: must_be_immutable
class HomeWheelSpinState extends Equatable {
  HomeWheelSpinState({this.homeWheelSpinModelObj});

  HomeWheelSpinModel? homeWheelSpinModelObj;

  @override
  List<Object?> get props => [homeWheelSpinModelObj];
  HomeWheelSpinState copyWith({HomeWheelSpinModel? homeWheelSpinModelObj}) {
    return HomeWheelSpinState(
      homeWheelSpinModelObj:
          homeWheelSpinModelObj ?? this.homeWheelSpinModelObj,
    );
  }
}
