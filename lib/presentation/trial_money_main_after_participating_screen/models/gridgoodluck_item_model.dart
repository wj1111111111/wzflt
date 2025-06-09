import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gridgoodluck_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridgoodluckItemModel extends Equatable {
  GridgoodluckItemModel({this.goodluckOne, this.goodluckTwo, this.id}) {
    goodluckOne = goodluckOne ?? ImageConstant.imgImage1277;
    goodluckTwo = goodluckTwo ?? "lbl_goodluck".tr;
    id = id ?? "";
  }

  String? goodluckOne;

  String? goodluckTwo;

  String? id;

  GridgoodluckItemModel copyWith({
    String? goodluckOne,
    String? goodluckTwo,
    String? id,
  }) {
    return GridgoodluckItemModel(
      goodluckOne: goodluckOne ?? this.goodluckOne,
      goodluckTwo: goodluckTwo ?? this.goodluckTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [goodluckOne, goodluckTwo, id];
}
