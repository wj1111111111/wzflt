import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listlv1_one_item_model.dart';
import 'listlv4_one_item_model.dart';
import 'listthree_one_item_model.dart';

/// This class defines the variables used in the [monthly_salary_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class MonthlySalaryModel extends Equatable {
  MonthlySalaryModel({
    this.listthreeOneItemList = const [],
    this.listlv1OneItemList = const [],
    this.listlv4OneItemList = const [],
  });

  List<ListthreeOneItemModel> listthreeOneItemList;

  List<Listlv1OneItemModel> listlv1OneItemList;

  List<Listlv4OneItemModel> listlv4OneItemList;

  MonthlySalaryModel copyWith({
    List<ListthreeOneItemModel>? listthreeOneItemList,
    List<Listlv1OneItemModel>? listlv1OneItemList,
    List<Listlv4OneItemModel>? listlv4OneItemList,
  }) {
    return MonthlySalaryModel(
      listthreeOneItemList: listthreeOneItemList ?? this.listthreeOneItemList,
      listlv1OneItemList: listlv1OneItemList ?? this.listlv1OneItemList,
      listlv4OneItemList: listlv4OneItemList ?? this.listlv4OneItemList,
    );
  }

  @override
  List<Object?> get props => [
    listthreeOneItemList,
    listlv1OneItemList,
    listlv4OneItemList,
  ];
}
