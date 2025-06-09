import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list20230909nin_item_model.dart';

/// This class defines the variables used in the [wheel_spin_main_my_withdrawal_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WheelSpinMainMyWithdrawalModel extends Equatable {
  WheelSpinMainMyWithdrawalModel({this.list20230909ninItemList = const []});

  List<List20230909ninItemModel> list20230909ninItemList;

  WheelSpinMainMyWithdrawalModel copyWith({
    List<List20230909ninItemModel>? list20230909ninItemList,
  }) {
    return WheelSpinMainMyWithdrawalModel(
      list20230909ninItemList:
          list20230909ninItemList ?? this.list20230909ninItemList,
    );
  }

  @override
  List<Object?> get props => [list20230909ninItemList];
}
