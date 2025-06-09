import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listpassword_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListpasswordItemModel extends Equatable {
  ListpasswordItemModel({
    this.password,
    this.justreceived,
    this.price,
    this.id,
  }) {
    password = password ?? "lbl_ai_6".tr;
    justreceived = justreceived ?? "msg_just_received_it".tr;
    price = price ?? "lbl_1003".tr;
    id = id ?? "";
  }

  String? password;

  String? justreceived;

  String? price;

  String? id;

  ListpasswordItemModel copyWith({
    String? password,
    String? justreceived,
    String? price,
    String? id,
  }) {
    return ListpasswordItemModel(
      password: password ?? this.password,
      justreceived: justreceived ?? this.justreceived,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [password, justreceived, price, id];
}
