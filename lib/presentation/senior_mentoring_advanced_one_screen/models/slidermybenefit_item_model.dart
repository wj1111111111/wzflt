import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [slidermybenefit_item_widget] screen.

// ignore_for_file: must_be_immutable
class SlidermybenefitItemModel extends Equatable {
  SlidermybenefitItemModel({this.mybenefits, this.id}) {
    mybenefits = mybenefits ?? "lbl_my_benefits".tr;
    id = id ?? "";
  }

  String? mybenefits;

  String? id;

  SlidermybenefitItemModel copyWith({String? mybenefits, String? id}) {
    return SlidermybenefitItemModel(
      mybenefits: mybenefits ?? this.mybenefits,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [mybenefits, id];
}
