import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listpassword_item_model.dart';

/// This class defines the variables used in the [home_wheel_spin_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HomeWheelSpinModel extends Equatable {
  HomeWheelSpinModel({this.listpasswordItemList = const []});

  List<ListpasswordItemModel> listpasswordItemList;

  HomeWheelSpinModel copyWith({
    List<ListpasswordItemModel>? listpasswordItemList,
  }) {
    return HomeWheelSpinModel(
      listpasswordItemList: listpasswordItemList ?? this.listpasswordItemList,
    );
  }

  @override
  List<Object?> get props => [listpasswordItemList];
}
