import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listyour_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListyourItemModel extends Equatable {
  ListyourItemModel({this.date202303nine, this.no1, this.id}) {
    date202303nine = date202303nine ?? "lbl_date_2023_03_09".tr;
    no1 = no1 ?? "lbl_no_1".tr;
    id = id ?? "";
  }

  String? date202303nine;

  String? no1;

  String? id;

  ListyourItemModel copyWith({
    String? date202303nine,
    String? no1,
    String? id,
  }) {
    return ListyourItemModel(
      date202303nine: date202303nine ?? this.date202303nine,
      no1: no1 ?? this.no1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [date202303nine, no1, id];
}
