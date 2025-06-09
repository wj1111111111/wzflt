import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gridgcash_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridgcashOneItemModel extends Equatable {
  GridgcashOneItemModel({this.gcashOne, this.gcashTwo, this.id}) {
    gcashOne = gcashOne ?? ImageConstant.img1336x36;
    gcashTwo = gcashTwo ?? "lbl_gcash".tr;
    id = id ?? "";
  }

  String? gcashOne;

  String? gcashTwo;

  String? id;

  GridgcashOneItemModel copyWith({
    String? gcashOne,
    String? gcashTwo,
    String? id,
  }) {
    return GridgcashOneItemModel(
      gcashOne: gcashOne ?? this.gcashOne,
      gcashTwo: gcashTwo ?? this.gcashTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [gcashOne, gcashTwo, id];
}
