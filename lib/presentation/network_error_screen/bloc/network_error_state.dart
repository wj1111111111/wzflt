part of 'network_error_bloc.dart';

/// Represents the state of NetworkError in the application.

// ignore_for_file: must_be_immutable
class NetworkErrorState extends Equatable {
  NetworkErrorState({this.networkErrorModelObj});

  NetworkErrorModel? networkErrorModelObj;

  @override
  List<Object?> get props => [networkErrorModelObj];
  NetworkErrorState copyWith({NetworkErrorModel? networkErrorModelObj}) {
    return NetworkErrorState(
      networkErrorModelObj: networkErrorModelObj ?? this.networkErrorModelObj,
    );
  }
}
