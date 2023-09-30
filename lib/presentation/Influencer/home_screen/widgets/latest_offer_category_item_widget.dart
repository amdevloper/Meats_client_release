import 'package:flutter/material.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class LatestOfferCategoryItemWidget extends StatelessWidget {
  LatestOfferCategoryItemWidget();

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
              Stack(
          children: <Widget> [
            CustomImageView(
                  imagePath: ImageConstant.imgImageplaceholder88x88,
                  height: getSize(
                    150,
                  ),
                  width: getSize(
                    150,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      16,
                    ),
                  ),
                ),

            Positioned(
              right: 5,
              bottom: 5,
              child: Container(
                margin: getMargin(bottom: 5,right: 5),
                width: 50,
                height: 25,
                decoration: AppDecoration
                    .outlineIndigo900
                    .copyWith(
                    borderRadius:
                    BorderRadiusStyle.circleBorder20),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Text("4.5"),
                    SizedBox(width: 5),
                    CustomImageView(svgPath:ImageConstant.imgStar),
                  ],
                ),
              ),
            ),

              ]
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expire in: 8 hr 10 min",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium10Gray90001,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Macdownold",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold16,
                    ),
                    Padding(
                        padding: getPadding(
                            top: 4,left: 6),
                        child: Row(
                            children: [
                              Text("\$6.00",
                                  overflow:
                                  TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign
                                      .left,
                                  style: AppStyle
                                      .txtRobotoBold12),
                              Padding(
                                  padding: getPadding(
                                      left:
                                      0),
                                  child: Text(
                                      "\$8.00",
                                      overflow: TextOverflow
                                          .ellipsis,
                                      textAlign: TextAlign
                                          .left,
                                      style: AppStyle
                                          .txtRobotoMedium12Bluegray3002
                                          .copyWith(decoration: TextDecoration.lineThrough))),
                            ]))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
