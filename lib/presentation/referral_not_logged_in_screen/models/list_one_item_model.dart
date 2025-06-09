import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListOneItemModel extends Equatable {
  ListOneItemModel({
    this.teamslevel,
    this.agenttier,
    this.levelCounter,
    this.leveltwo,
    this.levelthree,
    this.levelfour,
    this.id,
  }) {
    teamslevel = teamslevel ?? "lbl_teams_level".tr;
    agenttier = agenttier ?? "lbl_agent_tier".tr;
    levelCounter = levelCounter ?? "lbl_level_1".tr;
    leveltwo = leveltwo ?? "lbl_level_2".tr;
    levelthree = levelthree ?? "lbl_level_3".tr;
    levelfour = levelfour ?? "lbl_level_4".tr;
    id = id ?? "";
  }

  String? teamslevel;

  String? agenttier;

  String? levelCounter;

  String? leveltwo;

  String? levelthree;

  String? levelfour;

  String? id;

  ListOneItemModel copyWith({
    String? teamslevel,
    String? agenttier,
    String? levelCounter,
    String? leveltwo,
    String? levelthree,
    String? levelfour,
    String? id,
  }) {
    return ListOneItemModel(
      teamslevel: teamslevel ?? this.teamslevel,
      agenttier: agenttier ?? this.agenttier,
      levelCounter: levelCounter ?? this.levelCounter,
      leveltwo: leveltwo ?? this.leveltwo,
      levelthree: levelthree ?? this.levelthree,
      levelfour: levelfour ?? this.levelfour,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    teamslevel,
    agenttier,
    levelCounter,
    leveltwo,
    levelthree,
    levelfour,
    id,
  ];
}
