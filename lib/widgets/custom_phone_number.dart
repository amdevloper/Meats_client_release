import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_style.dart';
import 'custom_image_view.dart';
import 'custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {required this.country, required this.onTap, required this.controller});

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  6.00,
                ),
              ),
              border: Border.all(
                color: ColorConstant.gray20087,
                width: getHorizontalSize(
                  1.00,
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 5,
                    bottom: 7,
                  ),
                  child: Text(
                    "+${country.phoneCode}",
                    style: AppStyle.txtMuktaMedium1405Bluegray300,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgArrowdownBlueGray300,
                  height: getSize(
                    16.00,
                  ),
                  width: getSize(
                    16.00,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 10,
                    right: 12,
                    bottom: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: CustomTextFormField(
            width: 213,
            focusNode: FocusNode(),
            controller: controller,
            hintText: "Enter your phone number ",
            margin: getMargin(
              left: 23,
            ),
            fontStyle: TextFormFieldFontStyle.MuktaMedium1405,
            textInputType: TextInputType.phone,
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
