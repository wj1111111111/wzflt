part of 'add_top_up_account_bank_account_bloc.dart';

/// Represents the state of AddTopUpAccountBankAccount in the application.

// ignore_for_file: must_be_immutable
class AddTopUpAccountBankAccountState extends Equatable {
  AddTopUpAccountBankAccountState({
    this.oneoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.addTopUpAccountBankAccountModelObj,
  });

  TextEditingController? oneoneController;

  TextEditingController? passwordController;

  AddTopUpAccountBankAccountModel? addTopUpAccountBankAccountModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
    oneoneController,
    passwordController,
    isShowPassword,
    addTopUpAccountBankAccountModelObj,
  ];
  AddTopUpAccountBankAccountState copyWith({
    TextEditingController? oneoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    AddTopUpAccountBankAccountModel? addTopUpAccountBankAccountModelObj,
  }) {
    return AddTopUpAccountBankAccountState(
      oneoneController: oneoneController ?? this.oneoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      addTopUpAccountBankAccountModelObj:
          addTopUpAccountBankAccountModelObj ??
          this.addTopUpAccountBankAccountModelObj,
    );
  }
}
