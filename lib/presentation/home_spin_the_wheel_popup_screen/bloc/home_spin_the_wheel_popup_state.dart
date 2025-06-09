part of 'home_spin_the_wheel_popup_bloc.dart';

/// Represents the state of HomeSpinTheWheelPopup in the application.

// ignore_for_file: must_be_immutable
class HomeSpinTheWheelPopupState extends Equatable {
  HomeSpinTheWheelPopupState({this.homeSpinTheWheelPopupModelObj});

  HomeSpinTheWheelPopupModel? homeSpinTheWheelPopupModelObj;

  @override
  List<Object?> get props => [homeSpinTheWheelPopupModelObj];
  HomeSpinTheWheelPopupState copyWith({
    HomeSpinTheWheelPopupModel? homeSpinTheWheelPopupModelObj,
  }) {
    return HomeSpinTheWheelPopupState(
      homeSpinTheWheelPopupModelObj:
          homeSpinTheWheelPopupModelObj ?? this.homeSpinTheWheelPopupModelObj,
    );
  }
}
