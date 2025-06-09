import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listcumulative_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListcumulativeItemModel extends Equatable {
  ListcumulativeItemModel({
    this.cumulative,
    this.yourbonus,
    this.price,
    this.id,
  }) {
    cumulative = cumulative ?? "msg_cumulative_deposit2".tr;
    yourbonus = yourbonus ?? "lbl_your_bonus".tr;
    price = price ?? "lbl_300_00".tr;
    id = id ?? "";
  }

  String? cumulative;

  String? yourbonus;

  String? price;

  String? id;

  ListcumulativeItemModel copyWith({
    String? cumulative,
    String? yourbonus,
    String? price,
    String? id,
  }) {
    return ListcumulativeItemModel(
      cumulative: cumulative ?? this.cumulative,
      yourbonus: yourbonus ?? this.yourbonus,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [cumulative, yourbonus, price, id];
}
