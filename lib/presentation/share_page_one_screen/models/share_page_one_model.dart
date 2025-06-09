import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'share_page_one_item_model.dart';
import 'sliderlogowj93t_item_model.dart';

/// This class defines the variables used in the [share_page_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SharePageOneModel extends Equatable {
  SharePageOneModel({
    this.sliderlogowj93tItemList = const [],
    this.sharePageOneItemList = const [],
  });

  List<Sliderlogowj93tItemModel> sliderlogowj93tItemList;

  List<SharePageOneItemModel> sharePageOneItemList;

  SharePageOneModel copyWith({
    List<Sliderlogowj93tItemModel>? sliderlogowj93tItemList,
    List<SharePageOneItemModel>? sharePageOneItemList,
  }) {
    return SharePageOneModel(
      sliderlogowj93tItemList:
          sliderlogowj93tItemList ?? this.sliderlogowj93tItemList,
      sharePageOneItemList: sharePageOneItemList ?? this.sharePageOneItemList,
    );
  }

  @override
  List<Object?> get props => [sliderlogowj93tItemList, sharePageOneItemList];
}
