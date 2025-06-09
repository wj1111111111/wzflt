import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [home_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class HomeOneItemModel extends Equatable {
  HomeOneItemModel({
    this.fortuneOx,
    this.televisionOne,
    this.fortuneox1,
    this.id,
  }) {
    fortuneOx = fortuneOx ?? ImageConstant.img231000;
    televisionOne = televisionOne ?? ImageConstant.imgTelevisionYellowA70003;
    fortuneox1 = fortuneox1 ?? "msg_fortune_ox_fortune".tr;
    id = id ?? "";
  }

  String? fortuneOx;

  String? televisionOne;

  String? fortuneox1;

  String? id;

  HomeOneItemModel copyWith({
    String? fortuneOx,
    String? televisionOne,
    String? fortuneox1,
    String? id,
  }) {
    return HomeOneItemModel(
      fortuneOx: fortuneOx ?? this.fortuneOx,
      televisionOne: televisionOne ?? this.televisionOne,
      fortuneox1: fortuneox1 ?? this.fortuneox1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [fortuneOx, televisionOne, fortuneox1, id];
}
