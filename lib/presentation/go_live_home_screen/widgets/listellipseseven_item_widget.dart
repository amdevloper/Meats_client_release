import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListellipsesevenItemWidget extends StatelessWidget {
  ListellipsesevenItemWidget({this.onTapPartialsTables});

  VoidCallback? onTapPartialsTables;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse7,
          height: getSize(
            40.00,
          ),
          width: getSize(
            40.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          margin: getMargin(
            bottom: 1,
          ),
        ),
        GestureDetector(
          onTap: () {
            onTapPartialsTables!();
          },
          child: Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Establishment Owner Name",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Black900,
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "Hello, Where is My Order ?",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14Gray600,
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 3,
            bottom: 23,
          ),
          child: Text(
            "11:08 AM",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoRegular12Gray600,
          ),
        ),
      ],
    );
  }
}
