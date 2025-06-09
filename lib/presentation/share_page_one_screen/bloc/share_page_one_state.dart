part of 'share_page_one_bloc.dart';

/// Represents the state of SharePageOne in the application.

// ignore_for_file: must_be_immutable
class SharePageOneState extends Equatable {
  SharePageOneState({this.sliderIndex = 0, this.sharePageOneModelObj});

  SharePageOneModel? sharePageOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, sharePageOneModelObj];
  SharePageOneState copyWith({
    int? sliderIndex,
    SharePageOneModel? sharePageOneModelObj,
  }) {
    return SharePageOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      sharePageOneModelObj: sharePageOneModelObj ?? this.sharePageOneModelObj,
    );
  }
}
