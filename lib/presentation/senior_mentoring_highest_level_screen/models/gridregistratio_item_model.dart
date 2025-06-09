import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gridregistratio_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridregistratioItemModel extends Equatable {
  GridregistratioItemModel({this.registration, this.price, this.id}) {
    registration = registration ?? "msg_registration_bonus".tr;
    price = price ?? "lbl_7_550_00".tr;
    id = id ?? "";
  }

  String? registration;

  String? price;

  String? id;

  GridregistratioItemModel copyWith({
    String? registration,
    String? price,
    String? id,
  }) {
    return GridregistratioItemModel(
      registration: registration ?? this.registration,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [registration, price, id];
}
