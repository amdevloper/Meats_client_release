import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';

// ignore_for_file: must_be_immutable
class BrowseMenuDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: getPadding(
        left: 40,
        right: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Container(
            width: getHorizontalSize(
              295.00,
            ),
            padding: getPadding(
              left: 18,
              top: 26,
              right: 18,
              bottom: 26,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "Recommended (12)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: Text(
                    "Pizzas (33)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: Text(
                    "Garlic Bread (06)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: Text(
                    "Sides (11)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: Text(
                    "Dessert  & Beverages (11)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
