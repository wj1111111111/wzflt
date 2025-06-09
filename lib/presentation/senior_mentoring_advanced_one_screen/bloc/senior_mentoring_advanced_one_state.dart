part of 'senior_mentoring_advanced_one_bloc.dart';

/// Represents the state of SeniorMentoringAdvancedOne in the application.

// ignore_for_file: must_be_immutable
class SeniorMentoringAdvancedOneState extends Equatable {
  SeniorMentoringAdvancedOneState({
    this.sliderIndex = 0,
    this.seniorMentoringAdvancedOneModelObj,
  });

  SeniorMentoringAdvancedOneModel? seniorMentoringAdvancedOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, seniorMentoringAdvancedOneModelObj];
  SeniorMentoringAdvancedOneState copyWith({
    int? sliderIndex,
    SeniorMentoringAdvancedOneModel? seniorMentoringAdvancedOneModelObj,
  }) {
    return SeniorMentoringAdvancedOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      seniorMentoringAdvancedOneModelObj:
          seniorMentoringAdvancedOneModelObj ??
          this.seniorMentoringAdvancedOneModelObj,
    );
  }
}
