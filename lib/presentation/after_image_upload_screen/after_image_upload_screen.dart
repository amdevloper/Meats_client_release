import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;


import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'dart:io';

class AfterImageUploadScreen extends StatefulWidget {
  const AfterImageUploadScreen({super.key});

  @override
  State<AfterImageUploadScreen> createState() => _AfterImageUploadScreenState();
}

class _AfterImageUploadScreenState extends State<AfterImageUploadScreen> {

  TextEditingController controlsTextController = TextEditingController();
  var _image;
  var imagePicker;


  @override
  void initState() {
    // TODO: implement initState
    imagePicker = ImagePicker();

    super.initState();
  }


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
                    onTap: () => onTapArrowleft55(context)),
                title: AppbarSubtitle(
                    text: "Create Post", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:Padding(
                              padding: getPadding(left: 20, top: 19),
                              child: Row(children: [
                                GestureDetector(
                                  onTap: () async {
                                    var source = ImageSource.gallery;
                                    XFile image = await imagePicker.pickImage(
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
                      ),
                      Container(
                          height: getVerticalSize(200.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 20,left: 40,right: 40),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                if(_image != null) ...[
                                Image.file(
                                  _image,
                                  // width: 335.0,
                                  // height: 200.0,
                                   fit: BoxFit.scaleDown,
                                )],
                                // CustomImageView(
                                //     imagePath: ImageConstant.imgImage,
                                //     height: getVerticalSize(200.00),
                                //     width: getHorizontalSize(335.00),
                                //     radius: BorderRadius.circular(
                                //         getHorizontalSize(10.00)),
                                //     alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(top: 172),
                                        padding: getPadding(
                                            left: 20,
                                            top: 5,
                                            right: 20,
                                            bottom: 5),
                                        decoration: AppDecoration.fillGray90090
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderBL10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Edit",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14WhiteA700),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightWhiteA700,
                                                  height: getSize(18.00),
                                                  width: getSize(18.00))
                                            ])))
                              ])),
                      CustomTextFormField(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controlsTextController,
                          hintText: "Write about your post",
                          margin: getMargin(top: 20),
                          padding: TextFormFieldPadding.PaddingAll17,
                          textInputAction: TextInputAction.done,
                          maxLines: 10),
                      CustomButton(
                          height: 48,
                          width: 335,
                          text: "Create Post",
                          margin: getMargin(top: 30, bottom: 5),
                      onTap: () async {
                        String imageUrl = '';
                        if(_image != null) {
                          imageUrl = await uploadToSignedUrl();
                        }
                          createdEstablishmentAddItems(imageUrl);
                      },)
                    ])),
        ));
  }

  Future<dynamic> uploadToSignedUrl() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String fileExtension = p.extension(_image.path);
    var value = Random().nextInt(100000).toString();

    var req = http.MultipartRequest('POST', Uri.parse("http://ec2-34-227-30-202.compute-1.amazonaws.com/api/upload/"));
    req.headers.addAll({'Authorization': token!});
    req.fields['type'] = fileExtension;
    req.files.add(
        http.MultipartFile.fromBytes(
          'file',
          _image.readAsBytesSync(),
          filename: "image_ $value",
        )
    );
    http.StreamedResponse response = await req.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object["uploads"]["url"];
  }



  Future<dynamic> createdEstablishmentAddItems(imageUrl) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');

    // var studentsmap = itemList.map((e){
    //   return {
    //     "category": e.name,
    //     "name": e.name,
    //     "about": e.about,
    //     "originalPrice": e.originalPrice,
    //     "discountPrice": e.discountPrice,
    //     "image": e.image,
    //   };
    // }).toList();


    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/create/post'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },

      body: jsonEncode(<dynamic,dynamic>{
        "post" : controlsTextController.value.text,
        "image" : imageUrl,
        "restaurant_id": userId
      }),
    );

    if (response.statusCode == 200) {
      Navigator.pop(context);
    } else {
      throw Exception('Failed to create restaurant.');
    }
  }


  onTapArrowleft55(BuildContext context) {
    Navigator.pop(context);
  }
}
