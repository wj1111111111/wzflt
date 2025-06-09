import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listfour_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListfourOneItemModel extends Equatable {
  ListfourOneItemModel({this.image, this.closeOne, this.id}) {
    image = image ?? ImageConstant.img6;
    closeOne = closeOne ?? ImageConstant.imgCloseOnprimary;
    id = id ?? "";
  }

  String? image;

  String? closeOne;

  String? id;

  ListfourOneItemModel copyWith({String? image, String? closeOne, String? id}) {
    return ListfourOneItemModel(
      image: image ?? this.image,
      closeOne: closeOne ?? this.closeOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, closeOne, id];
}
