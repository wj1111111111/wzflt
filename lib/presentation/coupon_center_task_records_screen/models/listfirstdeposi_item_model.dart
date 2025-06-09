import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listfirstdeposi_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListfirstdeposiItemModel extends Equatable {
  ListfirstdeposiItemModel({this.firstdeposit, this.completeyour, this.id}) {
    firstdeposit = firstdeposit ?? "msg_free_spins_a_chance3".tr;
    completeyour = completeyour ?? "msg_time_2023_12_22".tr;
    id = id ?? "";
  }

  String? firstdeposit;

  String? completeyour;

  String? id;

  ListfirstdeposiItemModel copyWith({
    String? firstdeposit,
    String? completeyour,
    String? id,
  }) {
    return ListfirstdeposiItemModel(
      firstdeposit: firstdeposit ?? this.firstdeposit,
      completeyour: completeyour ?? this.completeyour,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [firstdeposit, completeyour, id];
}
