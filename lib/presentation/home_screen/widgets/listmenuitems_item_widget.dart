import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListmenuitemsItemWidget extends StatelessWidget {
  ListmenuitemsItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: getPadding(
            right: 52,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Menu Items",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium14Bluegray300,
              ),
              Container(
                width: getHorizontalSize(
                  100.00,
                ),
                margin: getMargin(
                  top: 26,
                ),
                child: Text(
                  "Grilled Paneer\nSandwich",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Text(
                  "Cheesy-7 Pizza",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Gray900,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  100.00,
                ),
                margin: getMargin(
                  top: 20,
                ),
                child: Text(
                  "Paneer Tikka\nButter Masala",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Text(
                  "Paneer Special",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Text(
                  "Farm Villa Pizza",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Gray900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
