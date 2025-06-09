part of 'download_details_pc_bloc.dart';

/// Represents the state of DownloadDetailsPc in the application.

// ignore_for_file: must_be_immutable
class DownloadDetailsPcState extends Equatable {
  DownloadDetailsPcState({this.downloadDetailsPcModelObj});

  DownloadDetailsPcModel? downloadDetailsPcModelObj;

  @override
  List<Object?> get props => [downloadDetailsPcModelObj];
  DownloadDetailsPcState copyWith({
    DownloadDetailsPcModel? downloadDetailsPcModelObj,
  }) {
    return DownloadDetailsPcState(
      downloadDetailsPcModelObj:
          downloadDetailsPcModelObj ?? this.downloadDetailsPcModelObj,
    );
  }
}
