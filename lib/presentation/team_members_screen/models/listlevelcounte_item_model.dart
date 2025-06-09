import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listlevelcounte_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListlevelcounteItemModel extends Equatable {
  ListlevelcounteItemModel({this.levelCounter, this.twenty, this.id}) {
    levelCounter = levelCounter ?? "lbl_level_22".tr;
    twenty = twenty ?? "lbl_20".tr;
    id = id ?? "";
  }

  String? levelCounter;

  String? twenty;

  String? id;

  ListlevelcounteItemModel copyWith({
    String? levelCounter,
    String? twenty,
    String? id,
  }) {
    return ListlevelcounteItemModel(
      levelCounter: levelCounter ?? this.levelCounter,
      twenty: twenty ?? this.twenty,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [levelCounter, twenty, id];
}
