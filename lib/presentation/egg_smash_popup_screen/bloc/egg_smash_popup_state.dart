part of 'egg_smash_popup_bloc.dart';

/// Represents the state of EggSmashPopup in the application.

// ignore_for_file: must_be_immutable
class EggSmashPopupState extends Equatable {
  EggSmashPopupState({this.eggSmashPopupModelObj});

  EggSmashPopupModel? eggSmashPopupModelObj;

  @override
  List<Object?> get props => [eggSmashPopupModelObj];
  EggSmashPopupState copyWith({EggSmashPopupModel? eggSmashPopupModelObj}) {
    return EggSmashPopupState(
      eggSmashPopupModelObj:
          eggSmashPopupModelObj ?? this.eggSmashPopupModelObj,
    );
  }
}
