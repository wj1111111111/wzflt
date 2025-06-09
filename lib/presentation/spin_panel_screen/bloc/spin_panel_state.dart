part of 'spin_panel_bloc.dart';

/// Represents the state of SpinPanel in the application.

// ignore_for_file: must_be_immutable
class SpinPanelState extends Equatable {
  SpinPanelState({this.spinPanelModelObj});

  SpinPanelModel? spinPanelModelObj;

  @override
  List<Object?> get props => [spinPanelModelObj];
  SpinPanelState copyWith({SpinPanelModel? spinPanelModelObj}) {
    return SpinPanelState(
      spinPanelModelObj: spinPanelModelObj ?? this.spinPanelModelObj,
    );
  }
}
