import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listpixmobile_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListpixmobileItemModel extends Equatable {
  ListpixmobileItemModel({
    this.pixmobileOne,
    this.pixmobile,
    this.password,
    this.date,
    this.id,
  }) {
    pixmobileOne = pixmobileOne ?? ImageConstant.imgVectorAmberA400;
    pixmobile = pixmobile ?? "lbl_pix_mobile".tr;
    password = password ?? "lbl_8927".tr;
    date = date ?? "lbl_2023_05_03".tr;
    id = id ?? "";
  }

  String? pixmobileOne;

  String? pixmobile;

  String? password;

  String? date;

  String? id;

  ListpixmobileItemModel copyWith({
    String? pixmobileOne,
    String? pixmobile,
    String? password,
    String? date,
    String? id,
  }) {
    return ListpixmobileItemModel(
      pixmobileOne: pixmobileOne ?? this.pixmobileOne,
      pixmobile: pixmobile ?? this.pixmobile,
      password: password ?? this.password,
      date: date ?? this.date,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [pixmobileOne, pixmobile, password, date, id];
}
