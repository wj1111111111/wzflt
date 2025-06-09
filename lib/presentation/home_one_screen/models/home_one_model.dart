import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'home_one_item_model.dart';

/// This class defines the variables used in the [home_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HomeOneModel extends Equatable {
  HomeOneModel({this.homeOneItemList = const []});

  List<HomeOneItemModel> homeOneItemList;

  HomeOneModel copyWith({List<HomeOneItemModel>? homeOneItemList}) {
    return HomeOneModel(
      homeOneItemList: homeOneItemList ?? this.homeOneItemList,
    );
  }

  @override
  List<Object?> get props => [homeOneItemList];
}
