import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list_two_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListTwoItemModel extends Equatable {
  ListTwoItemModel({
    this.frame,
    this.frameOne,
    this.frameTwo,
    this.frameThree,
    this.senioragenti1Controller,
    this.id,
  }) {
    frame = frame ?? "lbl_0_7".tr;
    frameOne = frameOne ?? "lbl_0_2".tr;
    frameTwo = frameTwo ?? "lbl_0_1".tr;
    frameThree = frameThree ?? "lbl5".tr;
    senioragenti1Controller =
        senioragenti1Controller ?? TextEditingController();
    id = id ?? "";
  }

  String? frame;

  String? frameOne;

  String? frameTwo;

  String? frameThree;

  TextEditingController? senioragenti1Controller;

  String? id;

  ListTwoItemModel copyWith({
    String? frame,
    String? frameOne,
    String? frameTwo,
    String? frameThree,
    TextEditingController? senioragenti1Controller,
    String? id,
  }) {
    return ListTwoItemModel(
      frame: frame ?? this.frame,
      frameOne: frameOne ?? this.frameOne,
      frameTwo: frameTwo ?? this.frameTwo,
      frameThree: frameThree ?? this.frameThree,
      senioragenti1Controller:
          senioragenti1Controller ?? this.senioragenti1Controller,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    frame,
    frameOne,
    frameTwo,
    frameThree,
    senioragenti1Controller,
    id,
  ];
}
