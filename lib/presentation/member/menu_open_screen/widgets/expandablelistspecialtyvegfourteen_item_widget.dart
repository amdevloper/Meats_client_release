import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ExpandablelistspecialtyvegfourteenItemWidget extends StatelessWidget {
  const ExpandablelistspecialtyvegfourteenItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        bottom: 4,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: getPadding(
            left: 20,
            right: 20,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Specialty Veg (14)",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular16Gray60001,
              ),
            ],
          ),
          trailing: CustomImageView(
            svgPath: ImageConstant.imgArrowdownBlueGray300,
            height: getVerticalSize(
              6.00,
            ),
            width: getHorizontalSize(
              12.00,
            ),
            margin: getMargin(
              top: 5,
              bottom: 5,
            ),
          ),
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      5.00,
                    ),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorConstant.gray200,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          2.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 18,
                    ),
                    child: Text(
                      "Garlic Bread (06)",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold16Gray900,
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {},
        ),
      ),
    );
  }
}
