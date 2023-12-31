import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class StatusFromGallerySearchAddressScreen extends StatelessWidget {
  TextEditingController barsSearchBarsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(24.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18),
                    onTap: () => onTapArrowleft40(context)),
                title: AppbarSubtitle2(
                    text: "Select Address", margin: getMargin(left: 14)),
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
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              CustomSearchView(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: barsSearchBarsController,
                                  hintText: "Search  Establishments",
                                  margin: getMargin(top: 19),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 8,
                                          top: 10,
                                          right: 12,
                                          bottom: 10),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(36.00)),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15.00)),
                                      child: IconButton(
                                          onPressed: () {
                                            barsSearchBarsController.clear;
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(36.00))),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Text("Powered By Google",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoRegular16Gray60001)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGoogle2015logo,
                                  height: getVerticalSize(24.00),
                                  width: getHorizontalSize(71.00),
                                  margin: getMargin(top: 8)),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 502),
                                  padding: getPadding(
                                      left: 20, top: 5, right: 20, bottom: 5),
                                  decoration: AppDecoration.fillIndigo900,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle432435x35,
                                            height: getSize(35.00),
                                            width: getSize(35.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            margin:
                                                getMargin(top: 6, bottom: 7)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4326,
                                            height: getSize(35.00),
                                            width: getSize(35.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            margin: getMargin(
                                                left: 8, top: 6, bottom: 7)),
                                        Spacer(),
                                        CustomButton(
                                            height: 48,
                                            width: 120,
                                            text: "Post",
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            fontStyle: ButtonFontStyle
                                                .RobotoBold16Gray90001)
                                      ]))
                            ])))),

        ));
  }

  onTapArrowleft40(BuildContext context) {
    Navigator.pop(context);
  }
}
