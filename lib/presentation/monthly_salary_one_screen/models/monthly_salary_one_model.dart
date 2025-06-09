import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listlv0_one_item_model.dart';

/// This class defines the variables used in the [monthly_salary_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class MonthlySalaryOneModel extends Equatable {
  MonthlySalaryOneModel({this.listlv0OneItemList = const []});

  List<Listlv0OneItemModel> listlv0OneItemList;

  MonthlySalaryOneModel copyWith({
    List<Listlv0OneItemModel>? listlv0OneItemList,
  }) {
    return MonthlySalaryOneModel(
      listlv0OneItemList: listlv0OneItemList ?? this.listlv0OneItemList,
    );
  }

  @override
  List<Object?> get props => [listlv0OneItemList];
}
