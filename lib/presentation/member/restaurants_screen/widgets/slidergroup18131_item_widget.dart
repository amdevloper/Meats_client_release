import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Slidergroup18131ItemWidget extends StatelessWidget {
  Slidergroup18131ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        160.00,
      ),
      width: getHorizontalSize(
        335.00,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: getVerticalSize(
              160.00,
            ),
            width: getHorizontalSize(
              335.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
            alignment: Alignment.center,
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: getVerticalSize(
          //       7.00,
          //     ),
          //     margin: getMargin(
          //       bottom: 27,
          //     ),
          //     child: SmoothIndicator(
          //       offset: 0,
          //       count: 4,
          //       axisDirection: Axis.horizontal,
          //       effect: ScrollingDotsEffect(
          //         spacing: 9,
          //         activeDotColor: ColorConstant.gray90001,
          //         dotColor: ColorConstant.gray300,
          //         dotHeight: getVerticalSize(
          //           7.00,
          //         ),
          //         dotWidth: getHorizontalSize(
          //           7.00,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
