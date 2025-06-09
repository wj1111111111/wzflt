part of 'information_bloc.dart';

/// Represents the state of Information in the application.

// ignore_for_file: must_be_immutable
class InformationState extends Equatable {
  InformationState({this.informationModelObj});

  InformationModel? informationModelObj;

  @override
  List<Object?> get props => [informationModelObj];
  InformationState copyWith({InformationModel? informationModelObj}) {
    return InformationState(
      informationModelObj: informationModelObj ?? this.informationModelObj,
    );
  }
}
