import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listcheckmark_item_model.dart';

/// This class defines the variables used in the [ph_home_dialog],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class PhHomeModel extends Equatable {
  PhHomeModel({this.listcheckmarkItemList = const []});

  List<ListcheckmarkItemModel> listcheckmarkItemList;

  PhHomeModel copyWith({List<ListcheckmarkItemModel>? listcheckmarkItemList}) {
    return PhHomeModel(
      listcheckmarkItemList:
          listcheckmarkItemList ?? this.listcheckmarkItemList,
    );
  }

  @override
  List<Object?> get props => [listcheckmarkItemList];
}
