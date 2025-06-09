import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listtoday_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListtodayItemModel extends Equatable {
  ListtodayItemModel({this.today, this.thirtytwo, this.id}) {
    today = today ?? "lbl_today".tr;
    thirtytwo = thirtytwo ?? "lbl_322".tr;
    id = id ?? "";
  }

  String? today;

  String? thirtytwo;

  String? id;

  ListtodayItemModel copyWith({String? today, String? thirtytwo, String? id}) {
    return ListtodayItemModel(
      today: today ?? this.today,
      thirtytwo: thirtytwo ?? this.thirtytwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [today, thirtytwo, id];
}
