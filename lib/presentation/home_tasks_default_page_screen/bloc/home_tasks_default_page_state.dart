part of 'home_tasks_default_page_bloc.dart';

/// Represents the state of HomeTasksDefaultPage in the application.

// ignore_for_file: must_be_immutable
class HomeTasksDefaultPageState extends Equatable {
  HomeTasksDefaultPageState({this.homeTasksDefaultPageModelObj});

  HomeTasksDefaultPageModel? homeTasksDefaultPageModelObj;

  @override
  List<Object?> get props => [homeTasksDefaultPageModelObj];
  HomeTasksDefaultPageState copyWith({
    HomeTasksDefaultPageModel? homeTasksDefaultPageModelObj,
  }) {
    return HomeTasksDefaultPageState(
      homeTasksDefaultPageModelObj:
          homeTasksDefaultPageModelObj ?? this.homeTasksDefaultPageModelObj,
    );
  }
}
