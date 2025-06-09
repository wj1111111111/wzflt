import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listone_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListoneOneItemModel extends Equatable {
  ListoneOneItemModel({this.oneOne, this.id}) {
    oneOne = oneOne ?? "lbl_12".tr;
    id = id ?? "";
  }

  String? oneOne;

  String? id;

  ListoneOneItemModel copyWith({String? oneOne, String? id}) {
    return ListoneOneItemModel(
      oneOne: oneOne ?? this.oneOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [oneOne, id];
}
