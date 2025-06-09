import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/deposit_info_3rd_party_success_one_model.dart';
import '../models/listdepositmeth_item_model.dart';
part 'deposit_info_3rd_party_success_one_event.dart';
part 'deposit_info_3rd_party_success_one_state.dart';

/// A bloc that manages the state of a DepositInfo3rdPartySuccessOne according to the event that is dispatched to it.
class DepositInfo3rdPartySuccessOneBloc
    extends
        Bloc<
          DepositInfo3rdPartySuccessOneEvent,
          DepositInfo3rdPartySuccessOneState
        > {
  DepositInfo3rdPartySuccessOneBloc(
    DepositInfo3rdPartySuccessOneState initialState,
  ) : super(initialState) {
    on<DepositInfo3rdPartySuccessOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DepositInfo3rdPartySuccessOneInitialEvent event,
    Emitter<DepositInfo3rdPartySuccessOneState> emit,
  ) async {
    emit(
      state.copyWith(
        depositInfo3rdPartySuccessOneModelObj: state
            .depositInfo3rdPartySuccessOneModelObj
            ?.copyWith(listdepositmethItemList: fillListdepositmethItemList()),
      ),
    );
  }

  List<ListdepositmethItemModel> fillListdepositmethItemList() {
    return [
      ListdepositmethItemModel(
        depositmethod: "lbl_deposit_method".tr,
        h709394: "lbl_h709394".tr,
      ),
      ListdepositmethItemModel(
        depositmethod: "msg_payee_account_name".tr,
        h709394: "lbl_tony".tr,
      ),
      ListdepositmethItemModel(
        depositmethod: "msg_payee_account_name2".tr,
        h709394: "lbl_tony".tr,
      ),
      ListdepositmethItemModel(
        depositmethod: "lbl_card_number".tr,
        h709394: "lbl_109323578177".tr,
      ),
      ListdepositmethItemModel(
        depositmethod: "lbl_deposit_amount3".tr,
        h709394: "lbl_5_000".tr,
      ),
      ListdepositmethItemModel(
        depositmethod: "lbl_order_number".tr,
        h709394: "lbl_000000".tr,
      ),
      ListdepositmethItemModel(),
    ];
  }
}
