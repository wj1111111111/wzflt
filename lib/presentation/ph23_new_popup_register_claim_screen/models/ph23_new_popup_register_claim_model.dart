import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listcumulative_item_model.dart';

/// This class defines the variables used in the [ph23_new_popup_register_claim_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class Ph23NewPopupRegisterClaimModel extends Equatable {
  Ph23NewPopupRegisterClaimModel({this.listcumulativeItemList = const []});

  List<ListcumulativeItemModel> listcumulativeItemList;

  Ph23NewPopupRegisterClaimModel copyWith({
    List<ListcumulativeItemModel>? listcumulativeItemList,
  }) {
    return Ph23NewPopupRegisterClaimModel(
      listcumulativeItemList:
          listcumulativeItemList ?? this.listcumulativeItemList,
    );
  }

  @override
  List<Object?> get props => [listcumulativeItemList];
}
