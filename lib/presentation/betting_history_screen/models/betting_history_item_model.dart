import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [betting_history_item_widget] screen.

// ignore_for_file: must_be_immutable
class BettingHistoryItemModel extends Equatable {
  BettingHistoryItemModel({
    this.image,
    this.fortunetiger,
    this.twelve,
    this.zero,
    this.tf,
    this.ninetysix,
    this.one,
    this.id,
  }) {
    image = image ?? ImageConstant.imgThumbsUpBlueGray400;
    fortunetiger = fortunetiger ?? "lbl_fortune_tiger".tr;
    twelve = twelve ?? "msg_2022_10_26_12_33_24".tr;
    zero = zero ?? "lbl_1_003".tr;
    tf = tf ?? "lbl2".tr;
    ninetysix = ninetysix ?? "lbl_1_96".tr;
    one = one ?? "lbl2".tr;
    id = id ?? "";
  }

  String? image;

  String? fortunetiger;

  String? twelve;

  String? zero;

  String? tf;

  String? ninetysix;

  String? one;

  String? id;

  BettingHistoryItemModel copyWith({
    String? image,
    String? fortunetiger,
    String? twelve,
    String? zero,
    String? tf,
    String? ninetysix,
    String? one,
    String? id,
  }) {
    return BettingHistoryItemModel(
      image: image ?? this.image,
      fortunetiger: fortunetiger ?? this.fortunetiger,
      twelve: twelve ?? this.twelve,
      zero: zero ?? this.zero,
      tf: tf ?? this.tf,
      ninetysix: ninetysix ?? this.ninetysix,
      one: one ?? this.one,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    image,
    fortunetiger,
    twelve,
    zero,
    tf,
    ninetysix,
    one,
    id,
  ];
}
