part of 'bind_crypto_never_set_transaction_bloc.dart';

/// Represents the state of BindCryptoNeverSetTransaction in the application.

// ignore_for_file: must_be_immutable
class BindCryptoNeverSetTransactionState extends Equatable {
  BindCryptoNeverSetTransactionState({
    this.addressController,
    this.passwordController,
    this.confirmpasswordController,
    this.selectedDropDownValue,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.bindCryptoNeverSetTransactionModelObj,
  });

  TextEditingController? addressController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SelectionPopupModel? selectedDropDownValue;

  BindCryptoNeverSetTransactionModel? bindCryptoNeverSetTransactionModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
    addressController,
    passwordController,
    confirmpasswordController,
    selectedDropDownValue,
    isShowPassword,
    isShowPassword1,
    bindCryptoNeverSetTransactionModelObj,
  ];
  BindCryptoNeverSetTransactionState copyWith({
    TextEditingController? addressController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SelectionPopupModel? selectedDropDownValue,
    bool? isShowPassword,
    bool? isShowPassword1,
    BindCryptoNeverSetTransactionModel? bindCryptoNeverSetTransactionModelObj,
  }) {
    return BindCryptoNeverSetTransactionState(
      addressController: addressController ?? this.addressController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      bindCryptoNeverSetTransactionModelObj:
          bindCryptoNeverSetTransactionModelObj ??
          this.bindCryptoNeverSetTransactionModelObj,
    );
  }
}
