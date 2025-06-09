part of 'ph_home_bloc.dart';

/// Represents the state of PhHome in the application.

// ignore_for_file: must_be_immutable
class PhHomeState extends Equatable {
  PhHomeState({this.phHomeModelObj});

  PhHomeModel? phHomeModelObj;

  @override
  List<Object?> get props => [phHomeModelObj];
  PhHomeState copyWith({PhHomeModel? phHomeModelObj}) {
    return PhHomeState(phHomeModelObj: phHomeModelObj ?? this.phHomeModelObj);
  }
}
