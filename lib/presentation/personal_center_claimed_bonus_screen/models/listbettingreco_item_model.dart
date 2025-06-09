import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listbettingreco_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListbettingrecoItemModel extends Equatable {
  ListbettingrecoItemModel({this.bettingrecord, this.bettingrecord1, this.id}) {
    bettingrecord = bettingrecord ?? ImageConstant.imgVector26x26;
    bettingrecord1 = bettingrecord1 ?? "lbl_betting_record".tr;
    id = id ?? "";
  }

  String? bettingrecord;

  String? bettingrecord1;

  String? id;

  ListbettingrecoItemModel copyWith({
    String? bettingrecord,
    String? bettingrecord1,
    String? id,
  }) {
    return ListbettingrecoItemModel(
      bettingrecord: bettingrecord ?? this.bettingrecord,
      bettingrecord1: bettingrecord1 ?? this.bettingrecord1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [bettingrecord, bettingrecord1, id];
}
