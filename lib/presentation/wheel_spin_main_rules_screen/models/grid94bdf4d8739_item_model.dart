import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [grid94bdf4d8739_item_widget] screen.

// ignore_for_file: must_be_immutable
class Grid94bdf4d8739ItemModel extends Equatable {
  Grid94bdf4d8739ItemModel({this.imageOne, this.id}) {
    imageOne = imageOne ?? ImageConstant.imgImage276x140;
    id = id ?? "";
  }

  String? imageOne;

  String? id;

  Grid94bdf4d8739ItemModel copyWith({String? imageOne, String? id}) {
    return Grid94bdf4d8739ItemModel(
      imageOne: imageOne ?? this.imageOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [imageOne, id];
}
