import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listluck_wheel_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListluckWheelItemModel extends Equatable {
  ListluckWheelItemModel({this.luckWheelOne, this.luckwheel, this.id}) {
    luckWheelOne = luckWheelOne ?? ImageConstant.imgLunpp1;
    luckwheel = luckwheel ?? "lbl_luck_wheel".tr;
    id = id ?? "";
  }

  String? luckWheelOne;

  String? luckwheel;

  String? id;

  ListluckWheelItemModel copyWith({
    String? luckWheelOne,
    String? luckwheel,
    String? id,
  }) {
    return ListluckWheelItemModel(
      luckWheelOne: luckWheelOne ?? this.luckWheelOne,
      luckwheel: luckwheel ?? this.luckwheel,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [luckWheelOne, luckwheel, id];
}
