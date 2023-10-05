import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';

class AddStatusCameraCaptureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup532),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 14, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftWhiteA700,
                                  height: getVerticalSize(12.00),
                                  width: getHorizontalSize(6.00),
                                  margin: getMargin(left: 20),
                                  onTap: () {
                                    onTapImgArrowleft(context);
                                  }),
                              Container(
                                  height: getVerticalSize(89.00),
                                  width: size.width,
                                  margin: getMargin(top: 629),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(top: 31),
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 11,
                                                    right: 20,
                                                    bottom: 11),
                                                decoration:
                                                    AppDecoration.fillIndigo900,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle4324,
                                                          height:
                                                              getSize(35.00),
                                                          width: getSize(35.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          margin: getMargin(
                                                              bottom: 1),
                                                          onTap: () {
                                                            onTapImgRectangle4324(
                                                                context);
                                                          }),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 11,
                                                              top: 9,
                                                              bottom: 7),
                                                          child: Text("Gallery",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16WhiteA700)),
                                                      Spacer(),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgAirplane,
                                                          height:
                                                              getSize(24.00),
                                                          width: getSize(24.00),
                                                          margin: getMargin(
                                                              top: 4,
                                                              bottom: 8))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 158, right: 157),
                                                padding: getPadding(all: 4),
                                                decoration: AppDecoration
                                                    .outlineWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder30),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getSize(52.00),
                                                          width: getSize(52.00),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          26.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .black90001,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1.00))))
                                                    ])))
                                      ]))
                            ])))),
        )
    );
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapImgRectangle4324(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.statusFromGalleryScreen);
  }
}
