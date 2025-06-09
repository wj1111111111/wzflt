import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listthree_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListthreeOneItemModel extends Equatable {
  ListthreeOneItemModel({this.threeOne, this.image, this.id}) {
    threeOne = threeOne ?? ImageConstant.img3;
    image = image ?? ImageConstant.img74x344;
    id = id ?? "";
  }

  String? threeOne;

  String? image;

  String? id;

  ListthreeOneItemModel copyWith({
    String? threeOne,
    String? image,
    String? id,
  }) {
    return ListthreeOneItemModel(
      threeOne: threeOne ?? this.threeOne,
      image: image ?? this.image,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [threeOne, image, id];
}
