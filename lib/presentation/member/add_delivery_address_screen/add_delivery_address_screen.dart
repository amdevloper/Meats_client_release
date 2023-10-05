// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../../../widgets/custom_text_form_field.dart';

class AddDeliveryAddressScreen extends StatelessWidget {
  TextEditingController barsSearchBarsController = TextEditingController();

  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

  TextEditingController controlsTextThreeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft6(context)),
                title: AppbarSubtitle(
                    text: "Add Delivery Address", margin: getMargin(left: 14))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding: getPadding(top: 5, bottom: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          CustomSearchView(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: barsSearchBarsController,
                              hintText: "Search Location",
                              margin: getMargin(top: 19),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 8, top: 10, right: 12, bottom: 10),
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
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 20),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLocation,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtUseCurrentLocation(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 9, top: 1, bottom: 3),
                                            child: Text("Use Current Location",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16)))
                                  ]))),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 28),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Short Name",
                              margin: getMargin(top: 29)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "Address",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextTwoController,
                              hintText: "Postcode",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextThreeController,
                              hintText: "City",
                              margin: getMargin(top: 20),
                              textInputAction: TextInputAction.done),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 20),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 24,
                                            width: 24,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmark)),
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 4, bottom: 5),
                                            child: Text(
                                                "Save as default address",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12))
                                      ]))),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Add",
                              margin: getMargin(top: 30, bottom: 5),
                              variant: ButtonVariant.OutlineGray9004f,
                              shape: ButtonShape.CircleBorder24,
                              padding: ButtonPadding.PaddingAll13,
                              fontStyle: ButtonFontStyle.RobotoBold16)
                        ]))),
        ));
  }

  onTapTxtUseCurrentLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.useCurrentLocationScreen);
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
