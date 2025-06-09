import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/bind_crypto_never_set_transaction_model.dart';
part 'bind_crypto_never_set_transaction_event.dart';
part 'bind_crypto_never_set_transaction_state.dart';

/// A bloc that manages the state of a BindCryptoNeverSetTransaction according to the event that is dispatched to it.
class BindCryptoNeverSetTransactionBloc
    extends
        Bloc<
          BindCryptoNeverSetTransactionEvent,
          BindCryptoNeverSetTransactionState
        > {
  BindCryptoNeverSetTransactionBloc(
    BindCryptoNeverSetTransactionState initialState,
  ) : super(initialState) {
    on<BindCryptoNeverSetTransactionInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _onInitialize(
    BindCryptoNeverSetTransactionInitialEvent event,
    Emitter<BindCryptoNeverSetTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        addressController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true,
      ),
    );
    emit(
      state.copyWith(
        bindCryptoNeverSetTransactionModelObj: state
            .bindCryptoNeverSetTransactionModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList()),
      ),
    );
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<BindCryptoNeverSetTransactionState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<BindCryptoNeverSetTransactionState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }
}
