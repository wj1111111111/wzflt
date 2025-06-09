import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listgroup1248_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listgroup1248ItemModel extends Equatable {
  Listgroup1248ItemModel({
    this.image,
    this.imageOne,
    this.imageTwo,
    this.group1248,
    this.id,
  }) {
    image = image ?? ImageConstant.img3;
    imageOne = imageOne ?? ImageConstant.img74x344;
    imageTwo = imageTwo ?? ImageConstant.imgCloseOnprimary;
    group1248 = group1248 ?? "lbl_12".tr;
    id = id ?? "";
  }

  String? image;

  String? imageOne;

  String? imageTwo;

  String? group1248;

  String? id;

  Listgroup1248ItemModel copyWith({
    String? image,
    String? imageOne,
    String? imageTwo,
    String? group1248,
    String? id,
  }) {
    return Listgroup1248ItemModel(
      image: image ?? this.image,
      imageOne: imageOne ?? this.imageOne,
      imageTwo: imageTwo ?? this.imageTwo,
      group1248: group1248 ?? this.group1248,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, imageOne, imageTwo, group1248, id];
}
