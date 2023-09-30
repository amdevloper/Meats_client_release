import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../image_upload_screen/widgets/gridiconplaceholder_two_item_widget.dart';
import 'package:flutter/material.dart';

class ImageUploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18),
                    onTap: () => onTapArrowleft62(context)),
                title: AppbarSubtitle2(
                    text: "Gallery", margin: getMargin(left: 14)),
                actions: [
                  Container(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(1.00),
                      margin: getMargin(left: 21, top: 3, right: 21, bottom: 1),
                      decoration: BoxDecoration(
                          color: ColorConstant.gray900,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(10.00)),
                          border: Border.all(
                              color: ColorConstant.black900,
                              width: getHorizontalSize(1.00),
                              strokeAlign: BorderSide.strokeAlignCenter)))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 14, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(125.00),
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(1.00),
                                                width: size.width,
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .gray300))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getSize(125.00),
                                                width: getSize(125.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImageplaceholder125x125,
                                                          height:
                                                              getSize(125.00),
                                                          width:
                                                              getSize(125.00),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              margin: getMargin(
                                                                  top: 10,
                                                                  right: 10),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              12.00)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .gray300,
                                                                      width: getHorizontalSize(
                                                                          1.00)))))
                                                    ]))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse7,
                                            height: getSize(125.00),
                                            width: getSize(125.00),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getSize(125.00),
                                                width: getSize(125.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImageplaceholder109x109,
                                                          height:
                                                              getSize(125.00),
                                                          width:
                                                              getSize(125.00),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              margin: getMargin(
                                                                  top: 10,
                                                                  right: 10),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              12.00)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .gray300,
                                                                      width: getHorizontalSize(
                                                                          1.00)))))
                                                    ])))
                                      ])),
                              GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent:
                                              getVerticalSize(127.00),
                                          crossAxisCount: 3,
                                          mainAxisSpacing:
                                              getHorizontalSize(0.00),
                                          crossAxisSpacing:
                                              getHorizontalSize(0.00)),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 12,
                                  itemBuilder: (context, index) {
                                    return GridiconplaceholderTwoItemWidget();
                                  }),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 13),
                                  padding: getPadding(
                                      left: 20, top: 5, right: 20, bottom: 5),
                                  decoration: AppDecoration.fillIndigo900,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Spacer(flex: 44),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCamera,
                                            height: getSize(24.00),
                                            width: getSize(24.00),
                                            margin:
                                                getMargin(top: 11, bottom: 12)),
                                        Spacer(flex: 55),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle432435x35,
                                            height: getSize(35.00),
                                            width: getSize(35.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            margin:
                                                getMargin(top: 6, bottom: 7)),
                                        CustomButton(
                                            height: 48,
                                            width: 120,
                                            text: "Upload",
                                            margin: getMargin(left: 15),
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            fontStyle: ButtonFontStyle
                                                .RobotoBold16Gray90001,
                                            onTap: () => onTapUpload(context))
                                      ]))
                            ])))),
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

  onTapUpload(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsEditScreen);
  }

  onTapArrowleft62(BuildContext context) {
    Navigator.pop(context);
  }
}
