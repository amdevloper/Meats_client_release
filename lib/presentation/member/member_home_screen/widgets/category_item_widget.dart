import 'package:flutter/material.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  // size: Size.fromRadius(48), // Image radius
                  child:  CustomImageView(
                      imagePath:
                      ImageConstant
                          .imgImage2,
                      height: getSize(
                          88.00),
                      width: getSize(
                          88.00),
                      radius: BorderRadius
                          .circular(
                          getHorizontalSize(
                              36.00)),
                      alignment:
                      Alignment.topLeft),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Text(
                  "Sandwich",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium14Bluegray300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
