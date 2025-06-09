import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listlv1_one_item_model.dart';
import 'listlv4_one_item_model.dart';

/// This class defines the variables used in the [weekly_wage_claimed_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class WeeklyWageClaimedModel extends Equatable {
  WeeklyWageClaimedModel({
    this.listlv1OneItemList = const [],
    this.listlv4OneItemList = const [],
  });

  List<Listlv1OneItemModel> listlv1OneItemList;

  List<Listlv4OneItemModel> listlv4OneItemList;

  WeeklyWageClaimedModel copyWith({
    List<Listlv1OneItemModel>? listlv1OneItemList,
    List<Listlv4OneItemModel>? listlv4OneItemList,
  }) {
    return WeeklyWageClaimedModel(
      listlv1OneItemList: listlv1OneItemList ?? this.listlv1OneItemList,
      listlv4OneItemList: listlv4OneItemList ?? this.listlv4OneItemList,
    );
  }

  @override
  List<Object?> get props => [listlv1OneItemList, listlv4OneItemList];
}
