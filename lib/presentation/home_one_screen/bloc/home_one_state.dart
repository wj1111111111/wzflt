part of 'home_one_bloc.dart';

/// Represents the state of HomeOne in the application.

// ignore_for_file: must_be_immutable
class HomeOneState extends Equatable {
  HomeOneState({this.homeOneModelObj});

  HomeOneModel? homeOneModelObj;

  @override
  List<Object?> get props => [homeOneModelObj];
  HomeOneState copyWith({HomeOneModel? homeOneModelObj}) {
    return HomeOneState(
      homeOneModelObj: homeOneModelObj ?? this.homeOneModelObj,
    );
  }
}
