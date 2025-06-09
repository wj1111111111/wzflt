import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/promotions_list_item_model.dart';
import '../models/promotions_list_model.dart';
part 'promotions_list_event.dart';
part 'promotions_list_state.dart';

/// A bloc that manages the state of a PromotionsList according to the event that is dispatched to it.
class PromotionsListBloc
    extends Bloc<PromotionsListEvent, PromotionsListState> {
  PromotionsListBloc(PromotionsListState initialState) : super(initialState) {
    on<PromotionsListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PromotionsListInitialEvent event,
    Emitter<PromotionsListState> emit,
  ) async {
    emit(
      state.copyWith(
        promotionsListModelObj: state.promotionsListModelObj?.copyWith(
          promotionsListItemList: fillPromotionsListItemList(),
        ),
      ),
    );
  }

  List<PromotionsListItemModel> fillPromotionsListItemList() {
    return [
      PromotionsListItemModel(oneOne: ImageConstant.img1164x344),
      PromotionsListItemModel(oneOne: ImageConstant.img2164x344),
      PromotionsListItemModel(oneOne: ImageConstant.img3164x344),
      PromotionsListItemModel(oneOne: ImageConstant.img4164x344),
      PromotionsListItemModel(oneOne: ImageConstant.img5164x344),
    ];
  }
}
