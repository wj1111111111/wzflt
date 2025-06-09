import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [staggerediconvi_item_widget] screen.

// ignore_for_file: must_be_immutable
class StaggerediconviItemModel extends Equatable {
  StaggerediconviItemModel({
    this.image245One,
    this.iconviponeOne,
    this.vipZero,
    this.price,
    this.max,
    this.cumulative,
    this.getVar,
    this.priceOne,
    this.priceTwo,
    this.priceThree,
    this.priceFour,
    this.priceFive,
    this.priceSix,
    this.id,
  }) {
    image245One = image245One ?? ImageConstant.imgImage244;
    iconviponeOne = iconviponeOne ?? ImageConstant.imgV10124x124;
    vipZero = vipZero ?? "lbl_vip0".tr;
    price = price ?? "lbl_10_002".tr;
    max = max ?? "lbl_max".tr;
    cumulative = cumulative ?? "msg_cumulative_deposit3".tr;
    getVar = getVar ?? "lbl_get2".tr;
    priceOne = priceOne ?? "lbl_150".tr;
    priceTwo = priceTwo ?? "lbl_2_002".tr;
    priceThree = priceThree ?? "lbl_250".tr;
    priceFour = priceFour ?? "lbl_4_002".tr;
    priceFive = priceFive ?? "lbl_5003".tr;
    priceSix = priceSix ?? "lbl_6_00".tr;
    id = id ?? "";
  }

  String? image245One;

  String? iconviponeOne;

  String? vipZero;

  String? price;

  String? max;

  String? cumulative;

  String? getVar;

  String? priceOne;

  String? priceTwo;

  String? priceThree;

  String? priceFour;

  String? priceFive;

  String? priceSix;

  String? id;

  StaggerediconviItemModel copyWith({
    String? image245One,
    String? iconviponeOne,
    String? vipZero,
    String? price,
    String? max,
    String? cumulative,
    String? getVar,
    String? priceOne,
    String? priceTwo,
    String? priceThree,
    String? priceFour,
    String? priceFive,
    String? priceSix,
    String? id,
  }) {
    return StaggerediconviItemModel(
      image245One: image245One ?? this.image245One,
      iconviponeOne: iconviponeOne ?? this.iconviponeOne,
      vipZero: vipZero ?? this.vipZero,
      price: price ?? this.price,
      max: max ?? this.max,
      cumulative: cumulative ?? this.cumulative,
      getVar: getVar ?? this.getVar,
      priceOne: priceOne ?? this.priceOne,
      priceTwo: priceTwo ?? this.priceTwo,
      priceThree: priceThree ?? this.priceThree,
      priceFour: priceFour ?? this.priceFour,
      priceFive: priceFive ?? this.priceFive,
      priceSix: priceSix ?? this.priceSix,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    image245One,
    iconviponeOne,
    vipZero,
    price,
    max,
    cumulative,
    getVar,
    priceOne,
    priceTwo,
    priceThree,
    priceFour,
    priceFive,
    priceSix,
    id,
  ];
}
