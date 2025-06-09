import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'red_envelope_item_model.dart';

/// This class defines the variables used in the [red_envelope_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class RedEnvelopeModel extends Equatable {
  RedEnvelopeModel({this.redEnvelopeItemList = const []});

  List<RedEnvelopeItemModel> redEnvelopeItemList;

  RedEnvelopeModel copyWith({List<RedEnvelopeItemModel>? redEnvelopeItemList}) {
    return RedEnvelopeModel(
      redEnvelopeItemList: redEnvelopeItemList ?? this.redEnvelopeItemList,
    );
  }

  @override
  List<Object?> get props => [redEnvelopeItemList];
}
