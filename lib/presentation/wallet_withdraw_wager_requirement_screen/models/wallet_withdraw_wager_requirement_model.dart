import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'slidervector_item_model.dart';

/// This class defines the variables used in the [wallet_withdraw_wager_requirement_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawWagerRequirementModel extends Equatable {
  WalletWithdrawWagerRequirementModel({this.slidervectorItemList = const []});

  List<SlidervectorItemModel> slidervectorItemList;

  WalletWithdrawWagerRequirementModel copyWith({
    List<SlidervectorItemModel>? slidervectorItemList,
  }) {
    return WalletWithdrawWagerRequirementModel(
      slidervectorItemList: slidervectorItemList ?? this.slidervectorItemList,
    );
  }

  @override
  List<Object?> get props => [slidervectorItemList];
}
