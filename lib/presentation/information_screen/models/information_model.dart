import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'information_one_item_model.dart';

/// This class defines the variables used in the [information_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class InformationModel extends Equatable {
  InformationModel({this.informationOneItemList = const []});

  List<InformationOneItemModel> informationOneItemList;

  InformationModel copyWith({
    List<InformationOneItemModel>? informationOneItemList,
  }) {
    return InformationModel(
      informationOneItemList:
          informationOneItemList ?? this.informationOneItemList,
    );
  }

  @override
  List<Object?> get props => [informationOneItemList];
}
