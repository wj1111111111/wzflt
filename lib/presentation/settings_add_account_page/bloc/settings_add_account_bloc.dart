import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listaccount_item_model.dart';
import '../models/settings_add_account_model.dart';
part 'settings_add_account_event.dart';
part 'settings_add_account_state.dart';

/// A bloc that manages the state of a SettingsAddAccount according to the event that is dispatched to it.
class SettingsAddAccountBloc
    extends Bloc<SettingsAddAccountEvent, SettingsAddAccountState> {
  SettingsAddAccountBloc(SettingsAddAccountState initialState)
    : super(initialState) {
    on<SettingsAddAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsAddAccountInitialEvent event,
    Emitter<SettingsAddAccountState> emit,
  ) async {
    emit(
      state.copyWith(
        settingsAddAccountModelObj: state.settingsAddAccountModelObj?.copyWith(
          listaccountItemList: fillListaccountItemList(),
        ),
      ),
    );
  }

  List<ListaccountItemModel> fillListaccountItemList() {
    return [
      ListaccountItemModel(
        account: "lbl_account".tr,
        tf: "lbl_07447461598".tr,
        type: "lbl_type".tr,
        brazilpxi: "lbl_brazilpxi".tr,
        pixtype: "lbl_pixtype".tr,
        cpf: "lbl_cpf".tr,
        name: "lbl_name".tr,
        lucasmartins: "msg_lucas_martins_nunes".tr,
        remark: "lbl_remark".tr,
      ),
      ListaccountItemModel(
        account: "lbl_account".tr,
        tf: "lbl_07447461598".tr,
        type: "lbl_type".tr,
        brazilpxi: "lbl_brazilpxi".tr,
        pixtype: "lbl_pixtype".tr,
        cpf: "lbl_cpf".tr,
        name: "lbl_name".tr,
        lucasmartins: "msg_lucas_martins_nunes".tr,
        remark: "lbl_remark".tr,
      ),
    ];
  }
}
