import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listyour_one_item_model.dart';

/// This class defines the variables used in the [agent_leaderboard_detail_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class AgentLeaderboardDetailViewModel extends Equatable {
  AgentLeaderboardDetailViewModel({this.listyourOneItemList = const []});

  List<ListyourOneItemModel> listyourOneItemList;

  AgentLeaderboardDetailViewModel copyWith({
    List<ListyourOneItemModel>? listyourOneItemList,
  }) {
    return AgentLeaderboardDetailViewModel(
      listyourOneItemList: listyourOneItemList ?? this.listyourOneItemList,
    );
  }

  @override
  List<Object?> get props => [listyourOneItemList];
}
