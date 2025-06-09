import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'information_item_model.dart';

/// This class defines the variables used in the [information_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class InformationThreeModel extends Equatable {
  InformationThreeModel({this.informationItemList = const []});

  List<InformationItemModel> informationItemList;

  InformationThreeModel copyWith({
    List<InformationItemModel>? informationItemList,
  }) {
    return InformationThreeModel(
      informationItemList: informationItemList ?? this.informationItemList,
    );
  }

  @override
  List<Object?> get props => [informationItemList];
}
