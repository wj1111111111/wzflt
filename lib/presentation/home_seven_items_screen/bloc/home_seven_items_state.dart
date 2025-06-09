part of 'home_seven_items_bloc.dart';

/// Represents the state of HomeSevenItems in the application.

// ignore_for_file: must_be_immutable
class HomeSevenItemsState extends Equatable {
  HomeSevenItemsState({this.homeSevenItemsModelObj});

  HomeSevenItemsModel? homeSevenItemsModelObj;

  @override
  List<Object?> get props => [homeSevenItemsModelObj];
  HomeSevenItemsState copyWith({HomeSevenItemsModel? homeSevenItemsModelObj}) {
    return HomeSevenItemsState(
      homeSevenItemsModelObj:
          homeSevenItemsModelObj ?? this.homeSevenItemsModelObj,
    );
  }
}
