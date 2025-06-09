part of 'senior_to_new_highest_level_one_bloc.dart';

/// Represents the state of SeniorToNewHighestLevelOne in the application.

// ignore_for_file: must_be_immutable
class SeniorToNewHighestLevelOneState extends Equatable {
  SeniorToNewHighestLevelOneState({
    this.sliderIndex = 0,
    this.seniorToNewHighestLevelOneModelObj,
  });

  SeniorToNewHighestLevelOneModel? seniorToNewHighestLevelOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, seniorToNewHighestLevelOneModelObj];
  SeniorToNewHighestLevelOneState copyWith({
    int? sliderIndex,
    SeniorToNewHighestLevelOneModel? seniorToNewHighestLevelOneModelObj,
  }) {
    return SeniorToNewHighestLevelOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      seniorToNewHighestLevelOneModelObj:
          seniorToNewHighestLevelOneModelObj ??
          this.seniorToNewHighestLevelOneModelObj,
    );
  }
}
