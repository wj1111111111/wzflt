import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listmore_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListmoreOneItemModel extends Equatable {
  ListmoreOneItemModel({this.moreOne, this.moreTwo, this.id}) {
    moreOne = moreOne ?? ImageConstant.imgVectorOnprimary;
    moreTwo = moreTwo ?? "lbl_more".tr;
    id = id ?? "";
  }

  String? moreOne;

  String? moreTwo;

  String? id;

  ListmoreOneItemModel copyWith({
    String? moreOne,
    String? moreTwo,
    String? id,
  }) {
    return ListmoreOneItemModel(
      moreOne: moreOne ?? this.moreOne,
      moreTwo: moreTwo ?? this.moreTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [moreOne, moreTwo, id];
}
