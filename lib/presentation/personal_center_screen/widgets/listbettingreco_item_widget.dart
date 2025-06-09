import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listbettingreco_item_model.dart';

// ignore_for_file: must_be_immutable
class ListbettingrecoItemWidget extends StatelessWidget {
  ListbettingrecoItemWidget(this.listbettingrecoItemModelObj, {Key? key})
    : super(key: key);

  ListbettingrecoItemModel listbettingrecoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.h,
      child: Column(
        spacing: 4,
        children: [
          CustomImageView(
            imagePath: listbettingrecoItemModelObj.bettingrecord!,
            height: 26.h,
            width: 26.h,
          ),
          Text(
            listbettingrecoItemModelObj.bettingrecord1!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
