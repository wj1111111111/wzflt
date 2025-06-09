part of 'home_popup_image_bloc.dart';

/// Represents the state of HomePopupImage in the application.

// ignore_for_file: must_be_immutable
class HomePopupImageState extends Equatable {
  HomePopupImageState({this.homePopupImageModelObj});

  HomePopupImageModel? homePopupImageModelObj;

  @override
  List<Object?> get props => [homePopupImageModelObj];
  HomePopupImageState copyWith({HomePopupImageModel? homePopupImageModelObj}) {
    return HomePopupImageState(
      homePopupImageModelObj:
          homePopupImageModelObj ?? this.homePopupImageModelObj,
    );
  }
}
