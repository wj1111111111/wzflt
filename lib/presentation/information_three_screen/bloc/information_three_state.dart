part of 'information_three_bloc.dart';

/// Represents the state of InformationThree in the application.

// ignore_for_file: must_be_immutable
class InformationThreeState extends Equatable {
  InformationThreeState({this.informationThreeModelObj});

  InformationThreeModel? informationThreeModelObj;

  @override
  List<Object?> get props => [informationThreeModelObj];
  InformationThreeState copyWith({
    InformationThreeModel? informationThreeModelObj,
  }) {
    return InformationThreeState(
      informationThreeModelObj:
          informationThreeModelObj ?? this.informationThreeModelObj,
    );
  }
}
