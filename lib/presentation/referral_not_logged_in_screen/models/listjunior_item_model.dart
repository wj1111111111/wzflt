import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listjunior_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListjuniorItemModel extends Equatable {
  ListjuniorItemModel({
    this.frame,
    this.frameOne,
    this.frameTwo,
    this.frameThree,
    this.senioragentiController,
    this.id,
  }) {
    frame = frame ?? "lbl_0_7".tr;
    frameOne = frameOne ?? "lbl_0_2".tr;
    frameTwo = frameTwo ?? "lbl_0_1".tr;
    frameThree = frameThree ?? "lbl5".tr;
    senioragentiController = senioragentiController ?? TextEditingController();
    id = id ?? "";
  }

  String? frame;

  String? frameOne;

  String? frameTwo;

  String? frameThree;

  TextEditingController? senioragentiController;

  String? id;

  ListjuniorItemModel copyWith({
    String? frame,
    String? frameOne,
    String? frameTwo,
    String? frameThree,
    TextEditingController? senioragentiController,
    String? id,
  }) {
    return ListjuniorItemModel(
      frame: frame ?? this.frame,
      frameOne: frameOne ?? this.frameOne,
      frameTwo: frameTwo ?? this.frameTwo,
      frameThree: frameThree ?? this.frameThree,
      senioragentiController:
          senioragentiController ?? this.senioragentiController,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    frame,
    frameOne,
    frameTwo,
    frameThree,
    senioragentiController,
    id,
  ];
}
