import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listcheckmark_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListcheckmarkItemModel extends Equatable {
  ListcheckmarkItemModel({this.phone, this.radioGroup, this.id}) {
    phone = phone ?? "msg_phone_verification4".tr;
    radioGroup = radioGroup ?? "";
    id = id ?? "";
  }

  String? phone;

  String? radioGroup;

  String? id;

  ListcheckmarkItemModel copyWith({
    String? phone,
    String? radioGroup,
    String? id,
  }) {
    return ListcheckmarkItemModel(
      phone: phone ?? this.phone,
      radioGroup: radioGroup ?? this.radioGroup,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [phone, radioGroup, id];
}
