import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListpizzaItemWidget extends StatelessWidget {
  ListpizzaItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomImageView(
            imagePath: ImageConstant.imgImageplaceholder60x60,
            height: getSize(
              60.00,
            ),
            width: getSize(
              60.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 7,
            bottom: 10,
            left: 10
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Pizza",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium16Gray900,
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Text(
                  "Lakewood, CA, USA",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular12Bluegray300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
