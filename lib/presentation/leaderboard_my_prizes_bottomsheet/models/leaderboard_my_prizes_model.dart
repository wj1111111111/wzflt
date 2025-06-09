import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listyour_item_model.dart';

/// This class defines the variables used in the [leaderboard_my_prizes_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LeaderboardMyPrizesModel extends Equatable {
  LeaderboardMyPrizesModel({this.listyourItemList = const []});

  List<ListyourItemModel> listyourItemList;

  LeaderboardMyPrizesModel copyWith({
    List<ListyourItemModel>? listyourItemList,
  }) {
    return LeaderboardMyPrizesModel(
      listyourItemList: listyourItemList ?? this.listyourItemList,
    );
  }

  @override
  List<Object?> get props => [listyourItemList];
}
