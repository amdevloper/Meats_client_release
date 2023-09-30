import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class VideoCallSingleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(105.00),
                leadingWidth: 33,
                leading: AppbarImage(
                    height: getVerticalSize(12.00),
                    width: getHorizontalSize(6.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 27, top: 3, bottom: 89),
                    onTap: () => onTapArrowleft4(context)),
                title: AppbarSubtitle(
                    text: "Lapinoz pizza",
                    margin: getMargin(left: 23, bottom: 83)),
                actions: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage186,
                      height: getVerticalSize(90.00),
                      width: getHorizontalSize(78.00),
                      radius: BorderRadius.circular(getHorizontalSize(10.00)),
                      margin: getMargin(left: 16, top: 15, right: 16))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.img42videocallsingle),
                        fit: BoxFit.cover)),
                child: Container(
                    width: size.width,
                    padding: getPadding(top: 34, bottom: 34),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomIconButton(
                              height: 56,
                              width: 56,
                              margin: getMargin(top: 500, bottom: 4),
                              shape: IconButtonShape.CircleBorder28,
                              padding: IconButtonPadding.PaddingAll14,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgVideocamera)),
                          CustomIconButton(
                              height: 64,
                              width: 64,
                              margin: getMargin(top: 496),
                              variant: IconButtonVariant.FillGray90001,
                              shape: IconButtonShape.CircleBorder32,
                              padding: IconButtonPadding.PaddingAll14,
                              onTap: () {
                                onTapBtnShare(context);
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgShare)),
                          CustomImageView(
                              svgPath: ImageConstant.imgMicrophone,
                              height: getSize(28.00),
                              width: getSize(28.00),
                              margin: getMargin(top: 514, bottom: 18))
                        ]))),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle,
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(48.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(2.00)),
                          margin: getMargin(bottom: 3))
                    ]))));
  }

  onTapBtnShare(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
