import 'dart:convert';

import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path/path.dart' as p;

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../main.dart';
import '../../../object_box.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../menu_item_add_screen/widgets/listtext_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:objectbox/objectbox.dart';

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MenuItemAddScreen extends StatefulWidget {
  const MenuItemAddScreen({Key? key}) : super(key: key);

  @override
  State<MenuItemAddScreen> createState() => _MenuItemAddScreenState();
}

class _MenuItemAddScreenState extends State<MenuItemAddScreen> {
  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  var imagePicker;


  var _image;


  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();
  TextEditingController itemCategoryTextController = TextEditingController();
  TextEditingController itemNameTextController = TextEditingController();
  TextEditingController aboutTextController = TextEditingController();
  TextEditingController originalPriceCategoryTextController = TextEditingController();
  TextEditingController discountPriceTextController = TextEditingController();




  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  void initState() {
    // TODO: implement initState
    imagePicker = new ImagePicker();
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
                height: getVerticalSize(46.00),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 19, top: 8, right: 245),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(32.00),
                                width: getSize(32.00),
                                svgPath: ImageConstant.imgArrowleft,
                                onTap: () => onTapArrowleft23(context)),
                            AppbarSubtitle(
                                text: "Add Item",
                                margin: getMargin(left: 6, bottom: 9))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(374.00),
                              margin: getMargin(left: 1, top: 6),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)))
                    ]),
                styleType: Style.bgFillWhiteA700_1),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(880.00),
                        width: getHorizontalSize(374.00),
                        // margin: getMargin(left: 1, top: 20),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(left: 20, right: 18),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Row(children: [
                                        //   CustomImageView(
                                        //       svgPath: ImageConstant
                                        //           .imgVideocameraBlueGray300,
                                        //       height: getSize(24.00),
                                        //       width: getSize(24.00)),
                                        //   CustomImageView(
                                        //       svgPath: ImageConstant
                                        //           .imgCameraBlueGray300,
                                        //       height: getSize(24.00),
                                        //       width: getSize(24.00),
                                        //       margin: getMargin(left: 12))
                                        // ]),
                                        // Container(
                                        //     height: getSize(100.00),
                                        //     width: getSize(100.00),
                                        //     margin: getMargin(top: 20),
                                        //     child: Stack(
                                        //         alignment:
                                        //             Alignment.bottomCenter,
                                        //         children: [
                                        //           CustomImageView(
                                        //               imagePath: ImageConstant
                                        //                   .imgImage,
                                        //               height: getSize(100.00),
                                        //               width: getSize(100.00),
                                        //               radius:
                                        //                   BorderRadius.circular(
                                        //                       getHorizontalSize(
                                        //                           10.00)),
                                        //               alignment:
                                        //                   Alignment.center),
                                        //           Align(
                                        //               alignment: Alignment
                                        //                   .bottomCenter,
                                        //               child: Container(
                                        //                   margin: getMargin(
                                        //                       top: 72),
                                        //                   padding: getPadding(
                                        //                       left: 10,
                                        //                       top: 5,
                                        //                       right: 10,
                                        //                       bottom: 5),
                                        //                   decoration: AppDecoration
                                        //                       .fillGray90090
                                        //                       .copyWith(
                                        //                           borderRadius:
                                        //                               BorderRadiusStyle
                                        //                                   .customBorderBL10),
                                        //                   child: Row(
                                        //                       mainAxisAlignment:
                                        //                           MainAxisAlignment
                                        //                               .spaceBetween,
                                        //                       children: [
                                        //                         Text("Edit",
                                        //                             overflow:
                                        //                                 TextOverflow
                                        //                                     .ellipsis,
                                        //                             textAlign:
                                        //                                 TextAlign
                                        //                                     .left,
                                        //                             style: AppStyle
                                        //                                 .txtRobotoRegular14WhiteA700),
                                        //                         CustomImageView(
                                        //                             svgPath:
                                        //                                 ImageConstant
                                        //                                     .imgArrowrightWhiteA700,
                                        //                             height:
                                        //                                 getSize(
                                        //                                     12.00),
                                        //                             width: getSize(
                                        //                                 12.00),
                                        //                             margin: getMargin(
                                        //                                 top: 2,
                                        //                                 bottom:
                                        //                                     2))
                                        //                       ])))
                                        //         ])),

                                        Padding(
                                            padding: getPadding(left: 20),
                                            child: Row(children: [
                                              GestureDetector(
                                                onTap:() async {
                                                  var source = ImageSource.gallery;
                                                  XFile image = await imagePicker.pickImage(
                                                      source: source, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
                                                  setState(() {
                                                    _image = File(image.path);
                                                  });
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgVideocameraBlueGray300,
                                                    height: getSize(24.00),
                                                    width: getSize(24.00)),
                                              ),
                                              GestureDetector(
                                                onTap: () async {
                                                  var source = ImageSource.camera;
                                                  XFile image = await imagePicker.pickImage(
                                                      source: source, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
                                                  setState(() {
                                                    _image = File(image.path);
                                                  });
                                                },
                                                child: CustomImageView(
                                                    svgPath:
                                                    ImageConstant.imgCameraBlueGray300,
                                                    height: getSize(54.00),
                                                    width: getSize(24.00),
                                                    margin: getMargin(left: 12)),
                                              )
                                            ])),
                                        Container(
                                            height: getSize(100.00),
                                            width: getSize(100.00),
                                            margin: getMargin(left: 20, top: 20),
                                            child: Stack(
                                                alignment: Alignment.bottomCenter,
                                                children: [
                                                  if(_image != null) ... [
                                                    Image.file(
                                                      _image,
                                                      width: 100.0,
                                                      height: 100.0,
                                                      fit: BoxFit.fitHeight,
                                                    )],
                                                  Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: Container(
                                                          margin: getMargin(top: 72),
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 5,
                                                              right: 10,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillGray90090
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderBL10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Text("Edit",
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign.left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular14WhiteA700),
                                                                InkWell(
                                                                  onTap: () {
                                                                    setState(() {
                                                                      _image = null;
                                                                    });
                                                                  },
                                                                  child: CustomImageView(
                                                                      svgPath: ImageConstant
                                                                          .imgArrowrightWhiteA700,
                                                                      height:
                                                                      getSize(12.00),
                                                                      width: getSize(12.00),
                                                                      margin: getMargin(
                                                                          left: 42,
                                                                          top: 2,
                                                                          bottom: 2)),
                                                                )
                                                              ])))
                                                ])),


                                        CustomTextFormField(
                                            width: 335,
                                            focusNode: FocusNode(),
                                            controller: itemCategoryTextController,
                                            hintText: "Item Category",
                                            margin: getMargin(top: 20)),
                                        CustomTextFormField(
                                            width: 335,
                                            focusNode: FocusNode(),
                                            controller: itemNameTextController,
                                            hintText: "Item Name",
                                            margin:
                                                getMargin(left: 1, top: 20)),
                                        CustomTextFormField(
                                            width: 335,
                                            focusNode: FocusNode(),
                                            controller:
                                                aboutTextController,
                                            hintText: "About Item",
                                            margin: getMargin(left: 1, top: 20),
                                            padding: TextFormFieldPadding
                                                .PaddingAll17,
                                            textInputAction:
                                                TextInputAction.done,
                                            maxLines: 10),
                                        // Padding(
                                        //     padding:
                                        //         getPadding(left: 1, top: 20),
                                        //     child: ListView.separated(
                                        //         physics:
                                        //             NeverScrollableScrollPhysics(),
                                        //         shrinkWrap: true,
                                        //         separatorBuilder:
                                        //             (context, index) {
                                        //           return SizedBox(
                                        //               height: getVerticalSize(
                                        //                   20.00));
                                        //         },
                                        //         itemCount: 2,
                                        //         itemBuilder: (context, index) {
                                        //           return ListtextOneItemWidget();
                                        //         })),
                                         SizedBox(height: 20),
                                        Container(
                                            // margin: getMargin(
                                            //     top: 20,
                                            //     right: 2, left: 13),
                                            padding: getPadding(
                                              left: 16,
                                              top: 7,
                                              right: 16,
                                              bottom: 7,
                                            ),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                        // left: 9,
                                                          top: 0,
                                                          bottom: 0),
                                                      child:CustomTextFormField(
                                                          isClickEnabled: true,
                                                          width: 200,
                                                          focusNode: FocusNode(),
                                                          controller: originalPriceCategoryTextController,
                                                          hintText: "Item Original Price",
                                                          // margin: getMargin(
                                                          //     top: 20,
                                                          //     right: 2),
                                                          textInputAction: TextInputAction
                                                              .done)),

                                                  // Text(
                                                  //     "Delivery Radius",
                                                  //     overflow: TextOverflow
                                                  //         .ellipsis,
                                                  //     textAlign: TextAlign
                                                  //         .left,
                                                  //     style: AppStyle
                                                  //         .txtRobotoRegular16)),
                                                  Spacer(),
                                                  Container(
                                                      height: getVerticalSize(
                                                          35.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 13,
                                                          top: 7,
                                                          bottom: 9),
                                                      child: Text(
                                                          "\$",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900))
                                                ])),
                                        SizedBox(height: 20),
                                        Container(
                                          // margin: getMargin(
                                          //     top: 20,
                                          //     right: 2, left: 13),
                                            padding: getPadding(
                                              left: 16,
                                              top: 7,
                                              right: 16,
                                              bottom: 7,
                                            ),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                        // left: 9,
                                                          top: 0,
                                                          bottom: 0),
                                                      child:CustomTextFormField(
                                                          isClickEnabled: true,
                                                          width: 200,
                                                          focusNode: FocusNode(),
                                                          controller: discountPriceTextController,
                                                          hintText: "Item Discount Price",
                                                          // margin: getMargin(
                                                          //     top: 20,
                                                          //     right: 2),
                                                          textInputAction: TextInputAction
                                                              .done)),

                                                  // Text(
                                                  //     "Delivery Radius",
                                                  //     overflow: TextOverflow
                                                  //         .ellipsis,
                                                  //     textAlign: TextAlign
                                                  //         .left,
                                                  //     style: AppStyle
                                                  //         .txtRobotoRegular16)),
                                                  Spacer(),
                                                  Container(
                                                      height: getVerticalSize(
                                                          35.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 13,
                                                          top: 7,
                                                          bottom: 9),
                                                      child: Text(
                                                          "\$",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900))
                                                ])),







                                // Container(
                                //   padding: getPadding(
                                //     left: 16,
                                //     top: 7,
                                //     right: 16,
                                //     bottom: 7,
                                //   ),
                                //   decoration: AppDecoration.outlineGray300.copyWith(
                                //     borderRadius: BorderRadiusStyle.roundedBorder8,
                                //   ),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     children: [
                                //       Padding(
                                //         padding: getPadding(
                                //           top: 8,
                                //           bottom: 7,
                                //         ),
                                //         child: Text(
                                //           "Item Original Price",
                                //           overflow: TextOverflow.ellipsis,
                                //           textAlign: TextAlign.left,
                                //           style: AppStyle.txtRobotoRegular16,
                                //         ),
                                //       ),
                                //       Spacer(),
                                //       Container(
                                //         height: getVerticalSize(
                                //           35.00,
                                //         ),
                                //         width: getHorizontalSize(
                                //           1.00,
                                //         ),
                                //         decoration: BoxDecoration(
                                //           color: ColorConstant.gray300,
                                //         ),
                                //       ),
                                //       Padding(
                                //         padding: getPadding(
                                //           left: 13,
                                //           top: 7,
                                //           bottom: 9,
                                //         ),
                                //         child: Text(
                                //           "\$",
                                //           overflow: TextOverflow.ellipsis,
                                //           textAlign: TextAlign.left,
                                //           style: AppStyle.txtRobotoRegular16Gray900,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                //         SizedBox(height: 20),
                                //         Container(
                                //           padding: getPadding(
                                //             left: 16,
                                //             top: 7,
                                //             right: 16,
                                //             bottom: 7,
                                //           ),
                                //           decoration: AppDecoration.outlineGray300.copyWith(
                                //             borderRadius: BorderRadiusStyle.roundedBorder8,
                                //           ),
                                //           child: Row(
                                //             mainAxisAlignment: MainAxisAlignment.center,
                                //             children: [
                                //               Padding(
                                //                 padding: getPadding(
                                //                   top: 8,
                                //                   bottom: 7,
                                //                 ),
                                //                 child: Text(
                                //                   "Item Original Price",
                                //                   overflow: TextOverflow.ellipsis,
                                //                   textAlign: TextAlign.left,
                                //                   style: AppStyle.txtRobotoRegular16,
                                //                 ),
                                //               ),
                                //               Spacer(),
                                //               Container(
                                //                 height: getVerticalSize(
                                //                   35.00,
                                //                 ),
                                //                 width: getHorizontalSize(
                                //                   1.00,
                                //                 ),
                                //                 decoration: BoxDecoration(
                                //                   color: ColorConstant.gray300,
                                //                 ),
                                //               ),
                                //               Padding(
                                //                 padding: getPadding(
                                //                   left: 13,
                                //                   top: 7,
                                //                   bottom: 9,
                                //                 ),
                                //                 child: Text(
                                //                   "\$",
                                //                   overflow: TextOverflow.ellipsis,
                                //                   textAlign: TextAlign.left,
                                //                   style: AppStyle.txtRobotoRegular16Gray900,
                                //                 ),
                                //               ),
                                //             ],
                                //           ),
                                //         ),

                                        GestureDetector(
                                            onTap: () async {
                                              // onTapColumntextthree();
                                              String imageUrl = '';
                                              if(_image != null) {
                                                imageUrl = await uploadToSignedUrl();
                                                objectBox.beforItemList(itemCategoryTextController.value.text,itemNameTextController.value.text,aboutTextController.value.text,originalPriceCategoryTextController.value.text,discountPriceTextController.value.text,imageUrl ?? '');
                                              }else {
                                              objectBox.beforItemList(itemCategoryTextController.value.text,itemNameTextController.value.text,aboutTextController.value.text,originalPriceCategoryTextController.value.text,discountPriceTextController.value.text,imageUrl ?? '');
                                              }
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                                width:
                                                    getHorizontalSize(335.00),
                                                margin:
                                                    getMargin(left: 1, top: 40),
                                                padding: getPadding(
                                                    left: 134,
                                                    top: 16,
                                                    right: 134,
                                                    bottom: 16),
                                                decoration: AppDecoration
                                                    .outlineGray9004f
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder24),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Add Item",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoBold16WhiteA700)
                                                    ])))
                                      ]))),
                          // Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: Container(
                          //         margin: getMargin(bottom: 33),
                          //         padding: getPadding(
                          //             left: 162, top: 7, right: 162, bottom: 7),
                          //         decoration: AppDecoration.fillWhiteA700,
                          //         child: Column(
                          //             mainAxisSize: MainAxisSize.min,
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.start,
                          //             children: [
                          //               CustomImageView(
                          //                   svgPath: ImageConstant.imgRectangle,
                          //                   height: getVerticalSize(5.00),
                          //                   width: getHorizontalSize(48.00),
                          //                   radius: BorderRadius.circular(
                          //                       getHorizontalSize(2.00)))
                          //             ])))
                        ]))))));
  }

  Future<dynamic> createdEstablishmentAddUpdateItems(imageUrl) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/update/menu'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },
      body: jsonEncode(<dynamic,dynamic>{
        "restaurant_id": userId,
        "items" : [
          {
            "category" : itemCategoryTextController.value.text,
            "name" : itemNameTextController.value.text,
            "about" : aboutTextController.value.text,
            "originalPrice" : originalPriceCategoryTextController.value.text,
            "discountPrice" : discountPriceTextController.value.text,
            "image" : imageUrl,
          }
        ]
      }),
    );

    if (response.statusCode == 200) {
      // Map<dynamic, dynamic> data = jsonDecode(response.body);
      Navigator.pop(context);
    } else {
      throw Exception('Failed to create restaurant.');
    }
  }

  // void _itemList() {
  //   Store? store;
  //   final box = store!.box<ItemsModel>();
  //   var items = ItemsModel(
  //       category: itemCategoryTextController.value.text,
  //       name: itemNameTextController.value.text,
  //       about: aboutTextController.value.text,
  //       originalPrice: originalPriceCategoryTextController.value.text,
  //       discountPrice: discountPriceTextController.value.text,
  //       image: "img");
  //
  //
  //   final id = box.put(items);
  //   print("object value print here $id");
  //
  // }





  // onTapColumntextthree() async {
  //   // Navigator.pushNamed(context, AppRoutes.menuDetails1Screen);
  //   // ObjectBox object = ObjectBox();
  //   // objectBox.itemList(itemCategoryTextController.value.text,itemNameTextController.value.text,aboutTextController.value.text,originalPriceCategoryTextController.value.text,discountPriceTextController.value.text,"string");
  //
  //   var imageUrl;
  //   if(_image != null) {
  //     imageUrl = await uploadToSignedUrl();
  //   }
  //   objectBox.itemList(itemCategoryTextController.value.text,itemNameTextController.value.text,aboutTextController.value.text,originalPriceCategoryTextController.value.text,discountPriceTextController.value.text,imageUrl ?? '');
  //   Navigator.pop(context);
  //   // final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // if(prefs.getBool('firstItemCreated') == true) {
  //   //   await createdEstablishmentAddUpdateItems(imageUrl);
  //   // }else {
  //   //   await createdEstablishmentAddItems(imageUrl);
  //   // }
  // }

  onTapArrowleft23(BuildContext context) {
    Navigator.pop(context);
  }

  Future<dynamic> uploadToSignedUrl() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String fileExtension = p.extension(_image.path);

    var req = http.MultipartRequest('POST', Uri.parse("http://ec2-34-227-30-202.compute-1.amazonaws.com/api/upload/"));
    req.headers.addAll({'Authorization': token!});
    req.fields['type'] = fileExtension;
    req.files.add(
        http.MultipartFile.fromBytes(
          'file',
          _image.readAsBytesSync(),
          filename: "abc",
        )
    );
    http.StreamedResponse response = await req.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object["uploads"]["url"];
  }
}
