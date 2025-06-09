import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list55470397152_item_model.dart';

// ignore_for_file: must_be_immutable
class List55470397152ItemWidget extends StatelessWidget {
  List55470397152ItemWidget(this.list55470397152ItemModelObj, {Key? key})
    : super(key: key);

  List55470397152ItemModel list55470397152ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          list55470397152ItemModelObj.tf!,
          style: theme.textTheme.labelLarge,
        ),
        Text(
          list55470397152ItemModelObj.tf1!,
          style: theme.textTheme.labelLarge,
        ),
        Text(
          list55470397152ItemModelObj.tf2!,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
