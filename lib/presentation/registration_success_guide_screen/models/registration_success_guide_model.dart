import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listone_item_model.dart';

/// This class defines the variables used in the [registration_success_guide_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class RegistrationSuccessGuideModel extends Equatable {
  RegistrationSuccessGuideModel({this.listoneItemList = const []});

  List<ListoneItemModel> listoneItemList;

  RegistrationSuccessGuideModel copyWith({
    List<ListoneItemModel>? listoneItemList,
  }) {
    return RegistrationSuccessGuideModel(
      listoneItemList: listoneItemList ?? this.listoneItemList,
    );
  }

  @override
  List<Object?> get props => [listoneItemList];
}
