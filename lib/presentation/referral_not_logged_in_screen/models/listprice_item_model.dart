import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listprice_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListpriceItemModel extends Equatable {
  ListpriceItemModel({
    this.price,
    this.image,
    this.five,
    this.users,
    this.imageOne,
    this.id,
  }) {
    price = price ?? "lbl_88_00".tr;
    image = image ?? ImageConstant.imgImage527;
    five = five ?? "lbl_52".tr;
    users = users ?? "lbl_users".tr;
    imageOne = imageOne ?? ImageConstant.imgLockBlueGray400;
    id = id ?? "";
  }

  String? price;

  String? image;

  String? five;

  String? users;

  String? imageOne;

  String? id;

  ListpriceItemModel copyWith({
    String? price,
    String? image,
    String? five,
    String? users,
    String? imageOne,
    String? id,
  }) {
    return ListpriceItemModel(
      price: price ?? this.price,
      image: image ?? this.image,
      five: five ?? this.five,
      users: users ?? this.users,
      imageOne: imageOne ?? this.imageOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [price, image, five, users, imageOne, id];
}
