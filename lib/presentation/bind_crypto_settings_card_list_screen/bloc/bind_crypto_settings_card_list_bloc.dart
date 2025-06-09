import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bind_crypto_settings_card_list_model.dart';
import '../models/bindcrypto_tab_model.dart';
import '../models/listusdttrc20on_item_model.dart';
part 'bind_crypto_settings_card_list_event.dart';
part 'bind_crypto_settings_card_list_state.dart';

/// A bloc that manages the state of a BindCryptoSettingsCardList according to the event that is dispatched to it.
class BindCryptoSettingsCardListBloc
    extends
        Bloc<BindCryptoSettingsCardListEvent, BindCryptoSettingsCardListState> {
  BindCryptoSettingsCardListBloc(BindCryptoSettingsCardListState initialState)
    : super(initialState) {
    on<BindCryptoSettingsCardListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BindCryptoSettingsCardListInitialEvent event,
    Emitter<BindCryptoSettingsCardListState> emit,
  ) async {
    emit(
      state.copyWith(
        bindcryptoTabModelObj: state.bindcryptoTabModelObj?.copyWith(
          listusdttrc20onItemList: fillListusdttrc20onItemList(),
        ),
      ),
    );
  }

  List<Listusdttrc20onItemModel> fillListusdttrc20onItemList() {
    return [
      Listusdttrc20onItemModel(
        usdttrc20one: ImageConstant.imgGroup2131329901,
        usdttrctwenty: "lbl_usdt_trc20".tr,
        tplfxh: "lbl_tp_lfxh".tr,
        date: "lbl_2025_01_03".tr,
        usdttrc20three: ImageConstant.img5fd78a7083dbb13,
      ),
      Listusdttrc20onItemModel(
        usdttrc20one: ImageConstant.imgVectorAmberA400,
        usdttrctwenty: "lbl_pix_mobile".tr,
        date: "lbl_2025_01_03".tr,
      ),
      Listusdttrc20onItemModel(
        usdttrc20one: ImageConstant.imgVectorAmberA400,
        usdttrctwenty: "lbl_pay_maya2".tr,
        date: "lbl_2025_01_03".tr,
      ),
      Listusdttrc20onItemModel(
        usdttrc20three: ImageConstant.img5fd78a7083dbb13,
      ),
      Listusdttrc20onItemModel(
        usdttrc20three: ImageConstant.img5fd78a7083dbb13,
      ),
    ];
  }
}
