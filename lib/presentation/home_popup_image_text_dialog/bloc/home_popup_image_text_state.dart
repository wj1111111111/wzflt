part of 'home_popup_image_text_bloc.dart';

/// Represents the state of HomePopupImageText in the application.

// ignore_for_file: must_be_immutable
class HomePopupImageTextState extends Equatable {
  HomePopupImageTextState({this.homePopupImageTextModelObj});

  HomePopupImageTextModel? homePopupImageTextModelObj;

  @override
  List<Object?> get props => [homePopupImageTextModelObj];
  HomePopupImageTextState copyWith({
    HomePopupImageTextModel? homePopupImageTextModelObj,
  }) {
    return HomePopupImageTextState(
      homePopupImageTextModelObj:
          homePopupImageTextModelObj ?? this.homePopupImageTextModelObj,
    );
  }
}
