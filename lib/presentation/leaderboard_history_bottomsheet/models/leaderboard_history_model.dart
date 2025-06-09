import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'list103339_item_model.dart';

/// This class defines the variables used in the [leaderboard_history_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LeaderboardHistoryModel extends Equatable {
  LeaderboardHistoryModel({this.list103339ItemList = const []});

  List<List103339ItemModel> list103339ItemList;

  LeaderboardHistoryModel copyWith({
    List<List103339ItemModel>? list103339ItemList,
  }) {
    return LeaderboardHistoryModel(
      list103339ItemList: list103339ItemList ?? this.list103339ItemList,
    );
  }

  @override
  List<Object?> get props => [list103339ItemList];
}
