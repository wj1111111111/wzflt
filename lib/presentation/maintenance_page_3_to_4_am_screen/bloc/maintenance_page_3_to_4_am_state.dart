part of 'maintenance_page_3_to_4_am_bloc.dart';

/// Represents the state of MaintenancePage3To4Am in the application.

// ignore_for_file: must_be_immutable
class MaintenancePage3To4AmState extends Equatable {
  MaintenancePage3To4AmState({this.maintenancePage3To4AmModelObj});

  MaintenancePage3To4AmModel? maintenancePage3To4AmModelObj;

  @override
  List<Object?> get props => [maintenancePage3To4AmModelObj];
  MaintenancePage3To4AmState copyWith({
    MaintenancePage3To4AmModel? maintenancePage3To4AmModelObj,
  }) {
    return MaintenancePage3To4AmState(
      maintenancePage3To4AmModelObj:
          maintenancePage3To4AmModelObj ?? this.maintenancePage3To4AmModelObj,
    );
  }
}
