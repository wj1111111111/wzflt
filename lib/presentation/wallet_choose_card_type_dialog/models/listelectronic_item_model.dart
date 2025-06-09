import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listelectronic_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListelectronicItemModel extends Equatable {
  ListelectronicItemModel({this.electronic, this.electronic1, this.id}) {
    electronic = electronic ?? ImageConstant.imgSearchOnprimary;
    electronic1 = electronic1 ?? "msg_electronic_wallet2".tr;
    id = id ?? "";
  }

  String? electronic;

  String? electronic1;

  String? id;

  ListelectronicItemModel copyWith({
    String? electronic,
    String? electronic1,
    String? id,
  }) {
    return ListelectronicItemModel(
      electronic: electronic ?? this.electronic,
      electronic1: electronic1 ?? this.electronic1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [electronic, electronic1, id];
}
