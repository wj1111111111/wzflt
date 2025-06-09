part of 'bind_crypto_settings_card_list_bloc.dart';

/// Represents the state of BindCryptoSettingsCardList in the application.

// ignore_for_file: must_be_immutable
class BindCryptoSettingsCardListState extends Equatable {
  BindCryptoSettingsCardListState({
    this.bindcryptoTabModelObj,
    this.bindCryptoSettingsCardListModelObj,
  });

  BindCryptoSettingsCardListModel? bindCryptoSettingsCardListModelObj;

  BindcryptoTabModel? bindcryptoTabModelObj;

  @override
  List<Object?> get props => [
    bindcryptoTabModelObj,
    bindCryptoSettingsCardListModelObj,
  ];
  BindCryptoSettingsCardListState copyWith({
    BindcryptoTabModel? bindcryptoTabModelObj,
    BindCryptoSettingsCardListModel? bindCryptoSettingsCardListModelObj,
  }) {
    return BindCryptoSettingsCardListState(
      bindcryptoTabModelObj:
          bindcryptoTabModelObj ?? this.bindcryptoTabModelObj,
      bindCryptoSettingsCardListModelObj:
          bindCryptoSettingsCardListModelObj ??
          this.bindCryptoSettingsCardListModelObj,
    );
  }
}
