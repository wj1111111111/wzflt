import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listcollect_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListcollectOneItemModel extends Equatable {
  ListcollectOneItemModel({this.collectOne, this.collectTwo, this.id}) {
    collectOne = collectOne ?? ImageConstant.img12;
    collectTwo = collectTwo ?? "lbl_collect".tr;
    id = id ?? "";
  }

  String? collectOne;

  String? collectTwo;

  String? id;

  ListcollectOneItemModel copyWith({
    String? collectOne,
    String? collectTwo,
    String? id,
  }) {
    return ListcollectOneItemModel(
      collectOne: collectOne ?? this.collectOne,
      collectTwo: collectTwo ?? this.collectTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [collectOne, collectTwo, id];
}
