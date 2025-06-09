import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'home_tasks_item_model.dart';

/// This class defines the variables used in the [home_tasks_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HomeTasksModel extends Equatable {
  HomeTasksModel({this.homeTasksItemList = const []});

  List<HomeTasksItemModel> homeTasksItemList;

  HomeTasksModel copyWith({List<HomeTasksItemModel>? homeTasksItemList}) {
    return HomeTasksModel(
      homeTasksItemList: homeTasksItemList ?? this.homeTasksItemList,
    );
  }

  @override
  List<Object?> get props => [homeTasksItemList];
}
