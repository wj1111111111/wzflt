import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'weekly_salary_item_model.dart';

/// This class defines the variables used in the [weekly_salary_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WeeklySalaryModel extends Equatable {
  WeeklySalaryModel({this.weeklySalaryItemList = const []});

  List<WeeklySalaryItemModel> weeklySalaryItemList;

  WeeklySalaryModel copyWith({
    List<WeeklySalaryItemModel>? weeklySalaryItemList,
  }) {
    return WeeklySalaryModel(
      weeklySalaryItemList: weeklySalaryItemList ?? this.weeklySalaryItemList,
    );
  }

  @override
  List<Object?> get props => [weeklySalaryItemList];
}
