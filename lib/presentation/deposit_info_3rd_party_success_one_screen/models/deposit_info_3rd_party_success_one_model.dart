import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listdepositmeth_item_model.dart';

/// This class defines the variables used in the [deposit_info_3rd_party_success_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class DepositInfo3rdPartySuccessOneModel extends Equatable {
  DepositInfo3rdPartySuccessOneModel({this.listdepositmethItemList = const []});

  List<ListdepositmethItemModel> listdepositmethItemList;

  DepositInfo3rdPartySuccessOneModel copyWith({
    List<ListdepositmethItemModel>? listdepositmethItemList,
  }) {
    return DepositInfo3rdPartySuccessOneModel(
      listdepositmethItemList:
          listdepositmethItemList ?? this.listdepositmethItemList,
    );
  }

  @override
  List<Object?> get props => [listdepositmethItemList];
}
