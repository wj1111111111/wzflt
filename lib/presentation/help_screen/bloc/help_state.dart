part of 'help_bloc.dart';

/// Represents the state of Help in the application.

// ignore_for_file: must_be_immutable
class HelpState extends Equatable {
  HelpState({this.helpModelObj});

  HelpModel? helpModelObj;

  @override
  List<Object?> get props => [helpModelObj];
  HelpState copyWith({HelpModel? helpModelObj}) {
    return HelpState(helpModelObj: helpModelObj ?? this.helpModelObj);
  }
}
