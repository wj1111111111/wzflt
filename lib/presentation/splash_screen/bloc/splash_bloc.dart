import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/splash_model.dart';
import '../models/splash_screen_item_model.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// A bloc that manages the state of a Splash according to the event that is dispatched to it.
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(SplashState initialState) : super(initialState) {
    on<SplashInitialEvent>(_onInitialize);
  }

  _onInitialize(SplashInitialEvent event, Emitter<SplashState> emit) async {
    emit(
      state.copyWith(
        splashModelObj: state.splashModelObj?.copyWith(
          splashScreenItemList: fillSplashScreenItemList(),
        ),
      ),
    );
  }

  List<SplashScreenItemModel> fillSplashScreenItemList() {
    return [
      SplashScreenItemModel(
        depositrebate: "lbl_deposit_rebate".tr,
        five: "lbl_59".tr,
      ),
      SplashScreenItemModel(
        depositrebate: "lbl_betting_rebate".tr,
        five: "lbl_2_032".tr,
      ),
      SplashScreenItemModel(
        depositrebate: "lbl_agent_ranking".tr,
        five: "lbl_8882".tr,
      ),
    ];
  }
}
