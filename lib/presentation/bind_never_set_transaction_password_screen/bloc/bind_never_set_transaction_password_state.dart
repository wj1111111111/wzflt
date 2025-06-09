part of 'bind_never_set_transaction_password_bloc.dart';

/// Represents the state of BindNeverSetTransactionPassword in the application.

// ignore_for_file: must_be_immutable
class BindNeverSetTransactionPasswordState extends Equatable {
  BindNeverSetTransactionPasswordState({
    this.confirmpasswordController,
    this.oneoneController,
    this.bindneversetTabModelObj,
    this.isShowPassword = true,
    this.bindNeverSetTransactionPasswordModelObj,
  });

  TextEditingController? confirmpasswordController;

  TextEditingController? oneoneController;

  BindNeverSetTransactionPasswordModel? bindNeverSetTransactionPasswordModelObj;

  BindneversetTabModel? bindneversetTabModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
    confirmpasswordController,
    oneoneController,
    bindneversetTabModelObj,
    isShowPassword,
    bindNeverSetTransactionPasswordModelObj,
  ];
  BindNeverSetTransactionPasswordState copyWith({
    TextEditingController? confirmpasswordController,
    TextEditingController? oneoneController,
    BindneversetTabModel? bindneversetTabModelObj,
    bool? isShowPassword,
    BindNeverSetTransactionPasswordModel?
    bindNeverSetTransactionPasswordModelObj,
  }) {
    return BindNeverSetTransactionPasswordState(
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      oneoneController: oneoneController ?? this.oneoneController,
      bindneversetTabModelObj:
          bindneversetTabModelObj ?? this.bindneversetTabModelObj,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      bindNeverSetTransactionPasswordModelObj:
          bindNeverSetTransactionPasswordModelObj ??
          this.bindNeverSetTransactionPasswordModelObj,
    );
  }
}
