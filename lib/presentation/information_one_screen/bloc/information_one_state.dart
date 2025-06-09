part of 'information_one_bloc.dart';

/// Represents the state of InformationOne in the application.

// ignore_for_file: must_be_immutable
class InformationOneState extends Equatable {
  InformationOneState({this.informationOneModelObj});

  InformationOneModel? informationOneModelObj;

  @override
  List<Object?> get props => [informationOneModelObj];
  InformationOneState copyWith({InformationOneModel? informationOneModelObj}) {
    return InformationOneState(
      informationOneModelObj:
          informationOneModelObj ?? this.informationOneModelObj,
    );
  }
}
