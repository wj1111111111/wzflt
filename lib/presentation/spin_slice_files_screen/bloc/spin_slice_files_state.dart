part of 'spin_slice_files_bloc.dart';

/// Represents the state of SpinSliceFiles in the application.

// ignore_for_file: must_be_immutable
class SpinSliceFilesState extends Equatable {
  SpinSliceFilesState({this.spinSliceFilesModelObj});

  SpinSliceFilesModel? spinSliceFilesModelObj;

  @override
  List<Object?> get props => [spinSliceFilesModelObj];
  SpinSliceFilesState copyWith({SpinSliceFilesModel? spinSliceFilesModelObj}) {
    return SpinSliceFilesState(
      spinSliceFilesModelObj:
          spinSliceFilesModelObj ?? this.spinSliceFilesModelObj,
    );
  }
}
