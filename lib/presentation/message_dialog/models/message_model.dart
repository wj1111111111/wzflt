import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [message_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel extends Equatable {
  MessageModel();

  MessageModel copyWith() {
    return MessageModel();
  }

  @override
  List<Object?> get props => [];
}
