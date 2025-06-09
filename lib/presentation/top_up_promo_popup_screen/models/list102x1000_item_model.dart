import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list102x1000_item_widget] screen.

// ignore_for_file: must_be_immutable
class List102x1000ItemModel extends Equatable {
  List102x1000ItemModel({this.x1000One, this.baccaratone, this.id}) {
    x1000One = x1000One ?? ImageConstant.img102X1000;
    baccaratone = baccaratone ?? ImageConstant.img1Baccarat1;
    id = id ?? "";
  }

  String? x1000One;

  String? baccaratone;

  String? id;

  List102x1000ItemModel copyWith({
    String? x1000One,
    String? baccaratone,
    String? id,
  }) {
    return List102x1000ItemModel(
      x1000One: x1000One ?? this.x1000One,
      baccaratone: baccaratone ?? this.baccaratone,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [x1000One, baccaratone, id];
}
