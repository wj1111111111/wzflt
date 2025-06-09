import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [slidervector_item_widget] screen.

// ignore_for_file: must_be_immutable
class SlidervectorItemModel extends Equatable {
  SlidervectorItemModel({
    this.pixmobile,
    this.eightthousandni,
    this.three,
    this.id,
  }) {
    pixmobile = pixmobile ?? "lbl_pix_mobile".tr;
    eightthousandni = eightthousandni ?? "lbl_8927".tr;
    three = three ?? "lbl_2023_05_03".tr;
    id = id ?? "";
  }

  String? pixmobile;

  String? eightthousandni;

  String? three;

  String? id;

  SlidervectorItemModel copyWith({
    String? pixmobile,
    String? eightthousandni,
    String? three,
    String? id,
  }) {
    return SlidervectorItemModel(
      pixmobile: pixmobile ?? this.pixmobile,
      eightthousandni: eightthousandni ?? this.eightthousandni,
      three: three ?? this.three,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [pixmobile, eightthousandni, three, id];
}
