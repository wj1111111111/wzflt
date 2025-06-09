part of 'usdt_bind_never_set_transaction_bloc.dart';

/// Represents the state of UsdtBindNeverSetTransaction in the application.

// ignore_for_file: must_be_immutable
class UsdtBindNeverSetTransactionState extends Equatable {
  UsdtBindNeverSetTransactionState({
    this.confirmpasswordController,
    this.oneoneController,
    this.isShowPassword = true,
    this.usdtBindNeverSetTransactionModelObj,
  });

  TextEditingController? confirmpasswordController;

  TextEditingController? oneoneController;

  UsdtBindNeverSetTransactionModel? usdtBindNeverSetTransactionModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
    confirmpasswordController,
    oneoneController,
    isShowPassword,
    usdtBindNeverSetTransactionModelObj,
  ];
  UsdtBindNeverSetTransactionState copyWith({
    TextEditingController? confirmpasswordController,
    TextEditingController? oneoneController,
    bool? isShowPassword,
    UsdtBindNeverSetTransactionModel? usdtBindNeverSetTransactionModelObj,
  }) {
    return UsdtBindNeverSetTransactionState(
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      oneoneController: oneoneController ?? this.oneoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      usdtBindNeverSetTransactionModelObj:
          usdtBindNeverSetTransactionModelObj ??
          this.usdtBindNeverSetTransactionModelObj,
    );
  }
}
