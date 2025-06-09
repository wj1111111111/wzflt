import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'bonus_details_item_model.dart';

/// This class defines the variables used in the [bonus_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class BonusDetailsModel extends Equatable {
  BonusDetailsModel({this.bonusDetailsItemList = const []});

  List<BonusDetailsItemModel> bonusDetailsItemList;

  BonusDetailsModel copyWith({
    List<BonusDetailsItemModel>? bonusDetailsItemList,
  }) {
    return BonusDetailsModel(
      bonusDetailsItemList: bonusDetailsItemList ?? this.bonusDetailsItemList,
    );
  }

  @override
  List<Object?> get props => [bonusDetailsItemList];
}
