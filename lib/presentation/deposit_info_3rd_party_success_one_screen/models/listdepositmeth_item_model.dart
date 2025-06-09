import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdepositmeth_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdepositmethItemModel extends Equatable {
  ListdepositmethItemModel({this.depositmethod, this.h709394, this.id}) {
    depositmethod = depositmethod ?? "lbl_deposit_method".tr;
    h709394 = h709394 ?? "lbl_h709394".tr;
    id = id ?? "";
  }

  String? depositmethod;

  String? h709394;

  String? id;

  ListdepositmethItemModel copyWith({
    String? depositmethod,
    String? h709394,
    String? id,
  }) {
    return ListdepositmethItemModel(
      depositmethod: depositmethod ?? this.depositmethod,
      h709394: h709394 ?? this.h709394,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [depositmethod, h709394, id];
}
