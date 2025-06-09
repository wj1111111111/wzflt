part of 'home_info_popup_simplified_text_bloc.dart';

/// Represents the state of HomeInfoPopupSimplifiedText in the application.

// ignore_for_file: must_be_immutable
class HomeInfoPopupSimplifiedTextState extends Equatable {
  HomeInfoPopupSimplifiedTextState({this.homeInfoPopupSimplifiedTextModelObj});

  HomeInfoPopupSimplifiedTextModel? homeInfoPopupSimplifiedTextModelObj;

  @override
  List<Object?> get props => [homeInfoPopupSimplifiedTextModelObj];
  HomeInfoPopupSimplifiedTextState copyWith({
    HomeInfoPopupSimplifiedTextModel? homeInfoPopupSimplifiedTextModelObj,
  }) {
    return HomeInfoPopupSimplifiedTextState(
      homeInfoPopupSimplifiedTextModelObj:
          homeInfoPopupSimplifiedTextModelObj ??
          this.homeInfoPopupSimplifiedTextModelObj,
    );
  }
}
