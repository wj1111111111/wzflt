part of 'information_four_bloc.dart';

/// Represents the state of InformationFour in the application.

// ignore_for_file: must_be_immutable
class InformationFourState extends Equatable {
  InformationFourState({this.informationFourModelObj});

  InformationFourModel? informationFourModelObj;

  @override
  List<Object?> get props => [informationFourModelObj];
  InformationFourState copyWith({
    InformationFourModel? informationFourModelObj,
  }) {
    return InformationFourState(
      informationFourModelObj:
          informationFourModelObj ?? this.informationFourModelObj,
    );
  }
}
