import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listaccount_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListaccountItemModel extends Equatable {
  ListaccountItemModel({
    this.account,
    this.tf,
    this.type,
    this.brazilpxi,
    this.pixtype,
    this.cpf,
    this.name,
    this.lucasmartins,
    this.remark,
    this.id,
  }) {
    account = account ?? "lbl_account".tr;
    tf = tf ?? "lbl_07447461598".tr;
    type = type ?? "lbl_type".tr;
    brazilpxi = brazilpxi ?? "lbl_brazilpxi".tr;
    pixtype = pixtype ?? "lbl_pixtype".tr;
    cpf = cpf ?? "lbl_cpf".tr;
    name = name ?? "lbl_name".tr;
    lucasmartins = lucasmartins ?? "msg_lucas_martins_nunes".tr;
    remark = remark ?? "lbl_remark".tr;
    id = id ?? "";
  }

  String? account;

  String? tf;

  String? type;

  String? brazilpxi;

  String? pixtype;

  String? cpf;

  String? name;

  String? lucasmartins;

  String? remark;

  String? id;

  ListaccountItemModel copyWith({
    String? account,
    String? tf,
    String? type,
    String? brazilpxi,
    String? pixtype,
    String? cpf,
    String? name,
    String? lucasmartins,
    String? remark,
    String? id,
  }) {
    return ListaccountItemModel(
      account: account ?? this.account,
      tf: tf ?? this.tf,
      type: type ?? this.type,
      brazilpxi: brazilpxi ?? this.brazilpxi,
      pixtype: pixtype ?? this.pixtype,
      cpf: cpf ?? this.cpf,
      name: name ?? this.name,
      lucasmartins: lucasmartins ?? this.lucasmartins,
      remark: remark ?? this.remark,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    account,
    tf,
    type,
    brazilpxi,
    pixtype,
    cpf,
    name,
    lucasmartins,
    remark,
    id,
  ];
}
