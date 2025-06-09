import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'popup_claim_one_item_model.dart';

/// This class defines the variables used in the [popup_claim_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class PopupClaimModel extends Equatable {
  PopupClaimModel({this.popupClaimOneItemList = const []});

  List<PopupClaimOneItemModel> popupClaimOneItemList;

  PopupClaimModel copyWith({
    List<PopupClaimOneItemModel>? popupClaimOneItemList,
  }) {
    return PopupClaimModel(
      popupClaimOneItemList:
          popupClaimOneItemList ?? this.popupClaimOneItemList,
    );
  }

  @override
  List<Object?> get props => [popupClaimOneItemList];
}
