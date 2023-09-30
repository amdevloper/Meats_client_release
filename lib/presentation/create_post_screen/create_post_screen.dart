import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'dart:io';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {

  TextEditingController controlsTextController = TextEditingController();
  var _image;
  var imagePicker;

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
                    onTap: () => onTapArrowleft54(context)),
                title: AppbarSubtitle(
                    text: "Create Post", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 19),
                          child: Row(children: [
                            GestureDetector(
                       onTap: () async {
                      var source = ImageSource.gallery;
                      XFile image = await imagePicker.pickVideo(
                      source: source,
                      imageQuality: 50,
                      preferredCameraDevice:
                      CameraDevice.front);
                      setState(() {
                      _image = File(image.path);
                      });
                      },
            child: CustomImageView(
                                  svgPath: ImageConstant.imgLocationGray90024x24,
                                  height: getSize(24.00),
                                  width: getSize(24.00)),
                            ),
                            // CustomImageView(
                            //     svgPath: ImageConstant.imgVideocameraGray900,
                            //     height: getSize(24.00),
                            //     width: getSize(24.00),
                            //     margin: getMargin(left: 18)),
                            GestureDetector(
                              onTap: () async {
                                var source = ImageSource.camera;
                                XFile image = await imagePicker.pickVideo(
                                    source: source,
                                    imageQuality: 50,
                                    preferredCameraDevice:
                                    CameraDevice.front);
                                setState(() {
                                  _image = File(image.path);
                                });
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCameraGray900,
                                  height: getSize(24.00),
                                  width: getSize(24.00),
                                  margin: getMargin(left: 18)),
                            )
                          ])),
                      CustomTextFormField(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controlsTextController,
                          hintText: "Write about your post",
                          margin: getMargin(top: 20, bottom: 5),
                          padding: TextFormFieldPadding.PaddingAll17,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          maxLines: 10)
                    ])),
            // bottomNavigationBar: Container(
            //     width: size.width,
            //     padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
            //     decoration: AppDecoration.fillWhiteA700,
            //     child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           CustomImageView(
            //               svgPath: ImageConstant.imgRectangle,
            //               height: getVerticalSize(5.00),
            //               width: getHorizontalSize(48.00),
            //               radius:
            //                   BorderRadius.circular(getHorizontalSize(2.00)),
            //               margin: getMargin(bottom: 3))
            //         ]))
        ));
  }

  onTapArrowleft54(BuildContext context) {
    Navigator.pop(context);
  }
}
