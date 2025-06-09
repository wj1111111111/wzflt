import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [sliderlogowj93t_item_widget] screen.

// ignore_for_file: must_be_immutable
class Sliderlogowj93tItemModel extends Equatable {
  Sliderlogowj93tItemModel({this.tf, this.id}) {
    tf = tf ?? "lbl_98955464616".tr;
    id = id ?? "";
  }

  String? tf;

  String? id;

  Sliderlogowj93tItemModel copyWith({String? tf, String? id}) {
    return Sliderlogowj93tItemModel(tf: tf ?? this.tf, id: id ?? this.id);
  }

  @override
  List<Object?> get props => [tf, id];
}
