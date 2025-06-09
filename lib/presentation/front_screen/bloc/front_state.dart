part of 'front_bloc.dart';

/// Represents the state of Front in the application.

// ignore_for_file: must_be_immutable
class FrontState extends Equatable {
  FrontState({this.frontModelObj});

  FrontModel? frontModelObj;

  @override
  List<Object?> get props => [frontModelObj];
  FrontState copyWith({FrontModel? frontModelObj}) {
    return FrontState(frontModelObj: frontModelObj ?? this.frontModelObj);
  }
}
