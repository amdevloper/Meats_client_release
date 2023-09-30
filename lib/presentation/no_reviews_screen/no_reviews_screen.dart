import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';

class NoReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft31(context)),
                title: AppbarSubtitle1(
                    text: "Reviews", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 17),
                              child: Text("Average Rating",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold18))),
                      CustomImageView(
                          svgPath: ImageConstant.imgRefresh,
                          height: getSize(95.00),
                          width: getSize(95.00),
                          margin: getMargin(top: 99)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("No Review Available",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium20)),
                      Container(
                          width: getHorizontalSize(251.00),
                          margin: getMargin(top: 12),
                          child: Text(
                              "Provide best services to your customers, So they will give best reviews to you.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoRegular14)),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle,
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(48.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(2.00)),
                          margin: getMargin(bottom: 5))
                    ]))));
  }

  onTapArrowleft31(BuildContext context) {
    Navigator.pop(context);
  }
}
