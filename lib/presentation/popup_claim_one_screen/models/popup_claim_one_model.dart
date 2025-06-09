import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'popup_claim_one_item_model.dart';

/// This class defines the variables used in the [popup_claim_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class PopupClaimOneModel extends Equatable {
  PopupClaimOneModel({this.popupClaimOneItemList = const []});

  List<PopupClaimOneItemModel> popupClaimOneItemList;

  PopupClaimOneModel copyWith({
    List<PopupClaimOneItemModel>? popupClaimOneItemList,
  }) {
    return PopupClaimOneModel(
      popupClaimOneItemList:
          popupClaimOneItemList ?? this.popupClaimOneItemList,
    );
  }

  @override
  List<Object?> get props => [popupClaimOneItemList];
}
