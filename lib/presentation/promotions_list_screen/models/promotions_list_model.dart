import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'promotions_list_item_model.dart';

/// This class defines the variables used in the [promotions_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class PromotionsListModel extends Equatable {
  PromotionsListModel({this.promotionsListItemList = const []});

  List<PromotionsListItemModel> promotionsListItemList;

  PromotionsListModel copyWith({
    List<PromotionsListItemModel>? promotionsListItemList,
  }) {
    return PromotionsListModel(
      promotionsListItemList:
          promotionsListItemList ?? this.promotionsListItemList,
    );
  }

  @override
  List<Object?> get props => [promotionsListItemList];
}
