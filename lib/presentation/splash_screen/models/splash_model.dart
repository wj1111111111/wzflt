import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'splash_screen_item_model.dart';

/// This class defines the variables used in the [splash_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SplashModel extends Equatable {
  SplashModel({this.splashScreenItemList = const []});

  List<SplashScreenItemModel> splashScreenItemList;

  SplashModel copyWith({List<SplashScreenItemModel>? splashScreenItemList}) {
    return SplashModel(
      splashScreenItemList: splashScreenItemList ?? this.splashScreenItemList,
    );
  }

  @override
  List<Object?> get props => [splashScreenItemList];
}
