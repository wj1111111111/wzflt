part of 'spin_slice_files_one_bloc.dart';

/// Represents the state of SpinSliceFilesOne in the application.

// ignore_for_file: must_be_immutable
class SpinSliceFilesOneState extends Equatable {
  SpinSliceFilesOneState({this.spinSliceFilesOneModelObj});

  SpinSliceFilesOneModel? spinSliceFilesOneModelObj;

  @override
  List<Object?> get props => [spinSliceFilesOneModelObj];
  SpinSliceFilesOneState copyWith({
    SpinSliceFilesOneModel? spinSliceFilesOneModelObj,
  }) {
    return SpinSliceFilesOneState(
      spinSliceFilesOneModelObj:
          spinSliceFilesOneModelObj ?? this.spinSliceFilesOneModelObj,
    );
  }
}
