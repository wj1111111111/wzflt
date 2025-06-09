import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [timelinecheckma_item_widget] screen.

// ignore_for_file: must_be_immutable
class TimelinecheckmaItemModel extends Equatable {
  TimelinecheckmaItemModel({this.checkmarkOne, this.paymentrequest, this.id}) {
    checkmarkOne = checkmarkOne ?? ImageConstant.imgCheckmark20x20;
    paymentrequest = paymentrequest ?? "msg_payment_request".tr;
    id = id ?? "";
  }

  String? checkmarkOne;

  String? paymentrequest;

  String? id;

  TimelinecheckmaItemModel copyWith({
    String? checkmarkOne,
    String? paymentrequest,
    String? id,
  }) {
    return TimelinecheckmaItemModel(
      checkmarkOne: checkmarkOne ?? this.checkmarkOne,
      paymentrequest: paymentrequest ?? this.paymentrequest,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [checkmarkOne, paymentrequest, id];
}
