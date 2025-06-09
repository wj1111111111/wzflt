import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelisto_item_model.dart';

/// This class defines the variables used in the [referral_share_rules_page],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ReferralShareRulesModel extends Equatable {
  ReferralShareRulesModel({this.expandablelistoItemList = const []});

  List<ExpandablelistoItemModel> expandablelistoItemList;

  ReferralShareRulesModel copyWith({
    List<ExpandablelistoItemModel>? expandablelistoItemList,
  }) {
    return ReferralShareRulesModel(
      expandablelistoItemList:
          expandablelistoItemList ?? this.expandablelistoItemList,
    );
  }

  @override
  List<Object?> get props => [expandablelistoItemList];
}
