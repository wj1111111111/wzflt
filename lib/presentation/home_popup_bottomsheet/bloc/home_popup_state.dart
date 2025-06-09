part of 'home_popup_bloc.dart';

/// Represents the state of HomePopup in the application.

// ignore_for_file: must_be_immutable
class HomePopupState extends Equatable {
  HomePopupState({this.homePopupModelObj});

  HomePopupModel? homePopupModelObj;

  @override
  List<Object?> get props => [homePopupModelObj];
  HomePopupState copyWith({HomePopupModel? homePopupModelObj}) {
    return HomePopupState(
      homePopupModelObj: homePopupModelObj ?? this.homePopupModelObj,
    );
  }
}
