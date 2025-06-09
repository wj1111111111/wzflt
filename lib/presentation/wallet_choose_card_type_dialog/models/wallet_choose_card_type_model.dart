import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listelectronic_item_model.dart';

/// This class defines the variables used in the [wallet_choose_card_type_dialog],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WalletChooseCardTypeModel extends Equatable {
  WalletChooseCardTypeModel({this.listelectronicItemList = const []});

  List<ListelectronicItemModel> listelectronicItemList;

  WalletChooseCardTypeModel copyWith({
    List<ListelectronicItemModel>? listelectronicItemList,
  }) {
    return WalletChooseCardTypeModel(
      listelectronicItemList:
          listelectronicItemList ?? this.listelectronicItemList,
    );
  }

  @override
  List<Object?> get props => [listelectronicItemList];
}
