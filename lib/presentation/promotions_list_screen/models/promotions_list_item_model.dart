import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [promotions_list_item_widget] screen.

// ignore_for_file: must_be_immutable
class PromotionsListItemModel extends Equatable {
  PromotionsListItemModel({this.oneOne, this.id}) {
    oneOne = oneOne ?? ImageConstant.img1164x344;
    id = id ?? "";
  }

  String? oneOne;

  String? id;

  PromotionsListItemModel copyWith({String? oneOne, String? id}) {
    return PromotionsListItemModel(
      oneOne: oneOne ?? this.oneOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [oneOne, id];
}
