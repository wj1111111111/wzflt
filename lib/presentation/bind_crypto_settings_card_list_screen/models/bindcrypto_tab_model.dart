import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listusdttrc20on_item_model.dart';

/// This class is used in the [bindcrypto_tab_page] screen.

// ignore_for_file: must_be_immutable
class BindcryptoTabModel extends Equatable {
  BindcryptoTabModel({this.listusdttrc20onItemList = const []});

  List<Listusdttrc20onItemModel> listusdttrc20onItemList;

  BindcryptoTabModel copyWith({
    List<Listusdttrc20onItemModel>? listusdttrc20onItemList,
  }) {
    return BindcryptoTabModel(
      listusdttrc20onItemList:
          listusdttrc20onItemList ?? this.listusdttrc20onItemList,
    );
  }

  @override
  List<Object?> get props => [listusdttrc20onItemList];
}
