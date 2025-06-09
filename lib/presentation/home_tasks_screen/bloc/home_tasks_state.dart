part of 'home_tasks_bloc.dart';

/// Represents the state of HomeTasks in the application.

// ignore_for_file: must_be_immutable
class HomeTasksState extends Equatable {
  HomeTasksState({this.homeTasksModelObj});

  HomeTasksModel? homeTasksModelObj;

  @override
  List<Object?> get props => [homeTasksModelObj];
  HomeTasksState copyWith({HomeTasksModel? homeTasksModelObj}) {
    return HomeTasksState(
      homeTasksModelObj: homeTasksModelObj ?? this.homeTasksModelObj,
    );
  }
}
