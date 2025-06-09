import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listred_package_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListredPackageItemModel extends Equatable {
  ListredPackageItemModel({
    this.redPackageOne,
    this.redPackage,
    this.firstdeposit,
    this.completeyour,
    this.firstdeposit1,
    this.firstdeposit2,
    this.firstdeposit3,
    this.firstdeposit4,
    this.time,
    this.id,
  }) {
    redPackageOne = redPackageOne ?? ImageConstant.imgGroup14397;
    redPackage = redPackage ?? ImageConstant.imgSettings44x44;
    firstdeposit = firstdeposit ?? "lbl_red_package2".tr;
    completeyour = completeyour ?? "lbl_2024_06_30".tr;
    firstdeposit1 = firstdeposit1 ?? "lbl_reward".tr;
    firstdeposit2 = firstdeposit2 ?? "lbl_due_date".tr;
    firstdeposit3 = firstdeposit3 ?? "lbl_0".tr;
    firstdeposit4 = firstdeposit4 ?? "lbl_day".tr;
    time = time ?? "lbl_23_36_58".tr;
    id = id ?? "";
  }

  String? redPackageOne;

  String? redPackage;

  String? firstdeposit;

  String? completeyour;

  String? firstdeposit1;

  String? firstdeposit2;

  String? firstdeposit3;

  String? firstdeposit4;

  String? time;

  String? id;

  ListredPackageItemModel copyWith({
    String? redPackageOne,
    String? redPackage,
    String? firstdeposit,
    String? completeyour,
    String? firstdeposit1,
    String? firstdeposit2,
    String? firstdeposit3,
    String? firstdeposit4,
    String? time,
    String? id,
  }) {
    return ListredPackageItemModel(
      redPackageOne: redPackageOne ?? this.redPackageOne,
      redPackage: redPackage ?? this.redPackage,
      firstdeposit: firstdeposit ?? this.firstdeposit,
      completeyour: completeyour ?? this.completeyour,
      firstdeposit1: firstdeposit1 ?? this.firstdeposit1,
      firstdeposit2: firstdeposit2 ?? this.firstdeposit2,
      firstdeposit3: firstdeposit3 ?? this.firstdeposit3,
      firstdeposit4: firstdeposit4 ?? this.firstdeposit4,
      time: time ?? this.time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    redPackageOne,
    redPackage,
    firstdeposit,
    completeyour,
    firstdeposit1,
    firstdeposit2,
    firstdeposit3,
    firstdeposit4,
    time,
    id,
  ];
}
