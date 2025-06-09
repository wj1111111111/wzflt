import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'home_sms_popup_item_model.dart';

/// This class defines the variables used in the [home_sms_popup_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HomeSmsPopupModel extends Equatable {
  HomeSmsPopupModel({this.homeSmsPopupItemList = const []});

  List<HomeSmsPopupItemModel> homeSmsPopupItemList;

  HomeSmsPopupModel copyWith({
    List<HomeSmsPopupItemModel>? homeSmsPopupItemList,
  }) {
    return HomeSmsPopupModel(
      homeSmsPopupItemList: homeSmsPopupItemList ?? this.homeSmsPopupItemList,
    );
  }

  @override
  List<Object?> get props => [homeSmsPopupItemList];
}
