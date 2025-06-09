import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listluckwheel_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListluckwheelItemModel extends Equatable {
  ListluckwheelItemModel({this.luckwheel, this.luckWheelOne, this.id}) {
    luckwheel = luckwheel ?? "lbl_luck_wheel".tr;
    luckWheelOne = luckWheelOne ?? ImageConstant.imgLunpp152x52;
    id = id ?? "";
  }

  String? luckwheel;

  String? luckWheelOne;

  String? id;

  ListluckwheelItemModel copyWith({
    String? luckwheel,
    String? luckWheelOne,
    String? id,
  }) {
    return ListluckwheelItemModel(
      luckwheel: luckwheel ?? this.luckwheel,
      luckWheelOne: luckWheelOne ?? this.luckWheelOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [luckwheel, luckWheelOne, id];
}
