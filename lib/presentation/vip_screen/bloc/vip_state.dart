part of 'vip_bloc.dart';

/// Represents the state of Vip in the application.

// ignore_for_file: must_be_immutable
class VipState extends Equatable {
  VipState({this.vipModelObj});

  VipModel? vipModelObj;

  @override
  List<Object?> get props => [vipModelObj];
  VipState copyWith({VipModel? vipModelObj}) {
    return VipState(vipModelObj: vipModelObj ?? this.vipModelObj);
  }
}
