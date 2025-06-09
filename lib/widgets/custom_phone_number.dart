import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(key: key);

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.lightGreen800, width: 1.h),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMinimize,
                  height: 16.h,
                  width: 12.h,
                  margin: EdgeInsets.only(left: 12.h),
                ),
                Container(
                  height: 18.h,
                  width: 26.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.h),
                    child: CountryPickerUtils.getDefaultFlagImage(country),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "+${country.phoneCode}",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 24.h,
            width: 1.h,
            margin: EdgeInsets.only(left: 10.h),
            decoration: BoxDecoration(color: appTheme.blueGray70004),
          ),
          Expanded(
            child: Container(
              width: 210.h,
              margin: EdgeInsets.only(left: 8.h),
              child: TextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: controller,
                style: theme.textTheme.titleSmall!,
                decoration: InputDecoration(
                  hintText: "lbl_1234567890".tr,
                  hintStyle: theme.textTheme.titleSmall!,
                  border: InputBorder.none,
                  suffixIcon: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEdit,
                      height: 16.h,
                      width: 18.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixIconConstraints: BoxConstraints(maxHeight: 48.h),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 14.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      Container(
        margin: EdgeInsets.only(left: 10.h),
        width: 60.h,
        child: Text(
          "+${country.phoneCode}",
          style: TextStyle(fontSize: 14.fSize),
        ),
      ),
      const SizedBox(width: 8.0),
      Flexible(child: Text(country.name, style: TextStyle(fontSize: 14.fSize))),
    ],
  );
  void _openCountryPicker(BuildContext context) => showDialog(
    context: context,
    builder:
        (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text(
            'Select your phone code',
            style: TextStyle(fontSize: 14.fSize),
          ),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
  );
}
