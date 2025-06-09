import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gridslot_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridslotOneItemModel extends Equatable {
  GridslotOneItemModel({this.slotOne, this.slotTwo, this.id}) {
    slotOne = slotOne ?? ImageConstant.img10733643587;
    slotTwo = slotTwo ?? "lbl_slot".tr;
    id = id ?? "";
  }

  String? slotOne;

  String? slotTwo;

  String? id;

  GridslotOneItemModel copyWith({
    String? slotOne,
    String? slotTwo,
    String? id,
  }) {
    return GridslotOneItemModel(
      slotOne: slotOne ?? this.slotOne,
      slotTwo: slotTwo ?? this.slotTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [slotOne, slotTwo, id];
}
