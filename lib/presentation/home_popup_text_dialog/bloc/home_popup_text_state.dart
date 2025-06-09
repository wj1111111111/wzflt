part of 'home_popup_text_bloc.dart';

/// Represents the state of HomePopupText in the application.

// ignore_for_file: must_be_immutable
class HomePopupTextState extends Equatable {
  HomePopupTextState({this.homePopupTextModelObj});

  HomePopupTextModel? homePopupTextModelObj;

  @override
  List<Object?> get props => [homePopupTextModelObj];
  HomePopupTextState copyWith({HomePopupTextModel? homePopupTextModelObj}) {
    return HomePopupTextState(
      homePopupTextModelObj:
          homePopupTextModelObj ?? this.homePopupTextModelObj,
    );
  }
}
