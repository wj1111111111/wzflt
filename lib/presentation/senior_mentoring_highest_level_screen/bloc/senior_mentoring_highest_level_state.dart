part of 'senior_mentoring_highest_level_bloc.dart';

/// Represents the state of SeniorMentoringHighestLevel in the application.

// ignore_for_file: must_be_immutable
class SeniorMentoringHighestLevelState extends Equatable {
  SeniorMentoringHighestLevelState({
    this.sliderIndex = 0,
    this.seniorMentoringHighestLevelModelObj,
  });

  SeniorMentoringHighestLevelModel? seniorMentoringHighestLevelModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, seniorMentoringHighestLevelModelObj];
  SeniorMentoringHighestLevelState copyWith({
    int? sliderIndex,
    SeniorMentoringHighestLevelModel? seniorMentoringHighestLevelModelObj,
  }) {
    return SeniorMentoringHighestLevelState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      seniorMentoringHighestLevelModelObj:
          seniorMentoringHighestLevelModelObj ??
          this.seniorMentoringHighestLevelModelObj,
    );
  }
}
