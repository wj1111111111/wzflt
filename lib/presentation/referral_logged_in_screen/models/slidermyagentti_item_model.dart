import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [slidermyagentti_item_widget] screen.

// ignore_for_file: must_be_immutable
class SlidermyagenttiItemModel extends Equatable {
  SlidermyagenttiItemModel({
    this.myagenttier,
    this.juniorAgentI,
    this.teamcount,
    this.ten,
    this.teambetting,
    this.tf,
    this.mybenefits,
    this.id,
  }) {
    myagenttier = myagenttier ?? "lbl_my_agent_tier".tr;
    juniorAgentI = juniorAgentI ?? "lbl_junior_agent_i".tr;
    teamcount = teamcount ?? "lbl_team_count".tr;
    ten = ten ?? "lbl_5_10".tr;
    teambetting = teambetting ?? "lbl_team_betting".tr;
    tf = tf ?? "lbl_550_00_10000".tr;
    mybenefits = mybenefits ?? "lbl_my_benefits".tr;
    id = id ?? "";
  }

  String? myagenttier;

  String? juniorAgentI;

  String? teamcount;

  String? ten;

  String? teambetting;

  String? tf;

  String? mybenefits;

  String? id;

  SlidermyagenttiItemModel copyWith({
    String? myagenttier,
    String? juniorAgentI,
    String? teamcount,
    String? ten,
    String? teambetting,
    String? tf,
    String? mybenefits,
    String? id,
  }) {
    return SlidermyagenttiItemModel(
      myagenttier: myagenttier ?? this.myagenttier,
      juniorAgentI: juniorAgentI ?? this.juniorAgentI,
      teamcount: teamcount ?? this.teamcount,
      ten: ten ?? this.ten,
      teambetting: teambetting ?? this.teambetting,
      tf: tf ?? this.tf,
      mybenefits: mybenefits ?? this.mybenefits,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    myagenttier,
    juniorAgentI,
    teamcount,
    ten,
    teambetting,
    tf,
    mybenefits,
    id,
  ];
}
