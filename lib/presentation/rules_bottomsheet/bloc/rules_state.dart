part of 'rules_bloc.dart';

/// Represents the state of Rules in the application.

// ignore_for_file: must_be_immutable
class RulesState extends Equatable {
  RulesState({this.rulesModelObj});

  RulesModel? rulesModelObj;

  @override
  List<Object?> get props => [rulesModelObj];
  RulesState copyWith({RulesModel? rulesModelObj}) {
    return RulesState(rulesModelObj: rulesModelObj ?? this.rulesModelObj);
  }
}
