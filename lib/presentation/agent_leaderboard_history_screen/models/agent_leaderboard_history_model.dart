import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listnine_item_model.dart';

/// This class defines the variables used in the [agent_leaderboard_history_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class AgentLeaderboardHistoryModel extends Equatable {
  AgentLeaderboardHistoryModel({this.listnineItemList = const []});

  List<ListnineItemModel> listnineItemList;

  AgentLeaderboardHistoryModel copyWith({
    List<ListnineItemModel>? listnineItemList,
  }) {
    return AgentLeaderboardHistoryModel(
      listnineItemList: listnineItemList ?? this.listnineItemList,
    );
  }

  @override
  List<Object?> get props => [listnineItemList];
}
