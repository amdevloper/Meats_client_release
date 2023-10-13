import 'dart:convert';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Establishment_Sign_Up/establishment_details_screen/model/checkbox_model.dart';
import '../restaurants_edit_screen/widgets/gridtext_ten1_item_widget.dart';
import '../restaurants_edit_screen/widgets/listtext_three1_item_widget.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_phone_number.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

class RestaurantsEditScreen extends StatefulWidget {
  final dynamic arguments;
  const RestaurantsEditScreen({Key? key, this.arguments}) : super(key: key);

  @override
  State<RestaurantsEditScreen> createState() => _RestaurantsEditScreenState();
}

class _RestaurantsEditScreenState extends State<RestaurantsEditScreen> {
  TextEditingController controlsTextController = TextEditingController();
  TextEditingController milesTextController = TextEditingController();
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController cusiniesController = TextEditingController();

   int lastCusionsCouint = 0;

  final SliverGridDelegate delegate =
  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio:4);
  int _selectedIndex = 0;
  var imagePicker;

  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  var _image;
  // List images = [ImageConstant.imgImageplaceholder1,ImageConstant.imgImageplaceholder1,ImageConstant.imgImageplaceholder1,ImageConstant.imgImageplaceholder1,ImageConstant.imgImageplaceholder1,ImageConstant.imgImageplaceholder1,ImageConstant.imgImageplaceholder1];
  List<File> imagesV = [File('')];

  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  bool imageIsEmty = false;

  List<String> dropdownItemList1 = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  TextEditingController emailController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();


  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List <CheckBoxModel> _checkBoxList = <CheckBoxModel>[];

  var cusineData;


  Future<Map<String, dynamic>> cusineDataFunction() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/cuisine"),
    )..headers.addAll({
      'Content-Type': 'application/json',
      'Authorization': token!,
    });

    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object;
  }


  @override
  void initState() {
    imagePicker = ImagePicker();

    Future.delayed(Duration.zero, () async {
      // itemList = objectBox.getItemList();
      // print("item list will show $itemList");
       await cusineDataFunction().then((value) {
        for (var el in value["cuisines"])
        {
          if(widget.arguments[0]["cuisine"][0] == el['id']) {
            _checkBoxList.add(
              CheckBoxModel(id: 1, name: "South Indian", selected: false),
            // el["cuisine"]
                );
            setState(() {
            });
          }
        }

      });
    });


    // TODO: implement initState
    controlsTextController.text = widget.arguments[0]['name'];
    milesTextController.text =  widget.arguments[0]['radius'];
    phoneNumberController.text = widget.arguments[0]['phoneNumber'];
    descriptionController.text =   widget.arguments[0]['description'];
     for(var image in widget.arguments[0]['image']) {
      imagesV.addAll(image);
     }
    emailController.text = 'lapinos@gmail.com';

      // _checkBoxList.addAll(
      //   {
      //      CheckBoxModel(id: 1, name: "South Indian", selected: false),
      //     // CheckBoxModel(id: 2, name: "Pizza", selected: false),
      //     // CheckBoxModel(id: 3, name: "Desert", selected: false),
      //     // CheckBoxModel(id: 4, name: "Fast Food", selected: false),
      //     // CheckBoxModel(id: 5, name: "Gujarati Food", selected: false),
      //     // CheckBoxModel(id: 6, name: "Dessert", selected: false),
      //     // CheckBoxModel(id: 7, name: "Chinese Food", selected: false),
      //     // // CheckBoxModel(id: 8, name: "Pet Supplies", selected: false),
      //     // CheckBoxModel(id: 9, name: "Thai Food ", selected: false),
      //     // CheckBoxModel(id: 10, name: "Retails", selected: false),
      //     // CheckBoxModel(id: 11, name: "Specialty Foods", selected: false),
      //   });

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
                height: getVerticalSize(34.00),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 18, top: 0, right: 19),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                svgPath: ImageConstant.imgArrowleft,
                                onTap: () => onTapArrowleft60(context)),
                            AppbarSubtitle3(
                                text: "Edit Details",
                                margin: getMargin(left: 6, top: 2, bottom: 2)),
                            // AppbarImage(
                            //     height: getVerticalSize(20.00),
                            //     width: getHorizontalSize(16.00),
                            //     svgPath: ImageConstant.imgUpload,
                            //     margin: getMargin(left: 210, top: 2, bottom: 2))
                          ])),
                      // Container(
                      //     height: getVerticalSize(1.00),
                      //     width: getHorizontalSize(374.00),
                      //     margin: getMargin(left: 1, top: 14),
                      //     decoration:
                      //         BoxDecoration(color: ColorConstant.gray300))
                    ]),
                styleType: Style.bgFillWhiteA700_2),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 19),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              // TextFormField(
                              //   decoration: const InputDecoration(
                              //     border: OutlineInputBorder(
                              //       // borderRadius: OutlineInputBorder(),
                              //       borderSide: BorderSide(
                              //         // color: ColorConstant.gray300,
                              //         width: 100,
                              //       ),
                              //     ),
                              //     labelText: 'La Pino’s Pizza',
                              //   ),
                              // ),

                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextController,
                                  // labelText: "La Pino’s Pizza",
                                   fontStyle: TextFormFieldFontStyle
                                       .RobotoMedium16Gray900
                              ),
                              Container(
                                  child:CustomTextFormField(
                                                width: 335,
                                                focusNode: FocusNode(),
                                                controller: milesTextController,
                                                hintText: "Type your message",
                                                margin: getMargin(top: 16, bottom: 20),
                                                padding: TextFormFieldPadding.PaddingT13,
                                                fontStyle: TextFormFieldFontStyle.RobotoRegular16,
                                                textInputAction: TextInputAction.done,
                                                suffix: Container(
                                                    margin: getMargin(
                                                        left: 12, top: 12, right: 12, bottom: 12),
                                                    child: Text("Miles")),
                                                suffixConstraints:
                                                BoxConstraints(maxHeight: getVerticalSize(48.00))
                                  ),
                                        ),
                              CustomDropDown(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  hintText: " Establishment ",
                                  // margin: getMargin(top: 21),
                                  fontStyle: DropDownFontStyle.RobotoMedium16,
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 17, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("Select cuisines type",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Gray900)),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: GestureDetector(
                                              onTap: () {
                                                showMessageView();
                                              },
                                              child: Text("+ Add ",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium16Gray90001),
                                            ))
                                      ])),

                              Container(
                                padding: EdgeInsets.only(left: 15, top: 0, bottom: 5),
                                height: MediaQuery.of(context).size.height/ (_checkBoxList.isNotEmpty ? _checkBoxList.length.isEven ? _checkBoxList.length + 5 : (_checkBoxList.length - 1) + 5 : 60),
                                width: MediaQuery.of(context).size.width,
                                child: GridView.count(
                                    // physics: NeverScrollableScrollPhysics(),
                                    childAspectRatio: 4,
                                    crossAxisCount: 2,
                                    children: List.generate(_checkBoxList.length, (index) {
                                      return CheckboxListTile(
                                          value: _checkBoxList[index].selected,
                                          controlAffinity: ListTileControlAffinity.leading,
                                          title: Text(_checkBoxList[index].name),
                                          contentPadding: EdgeInsets.zero,
                                          onChanged: (value) {
                                            setState(() {
                                              _checkBoxList[index].selected = value!;
                                            });
                                          });
                                    })
                                ),
                              ),

                              Container(
                                // margin:
                                //     getMargin(left: 20, top: 20, right: 20),
                                padding: getPadding(
                                    left: 20, right: 20, top: 15),
                                // decoration: AppDecoration.outlineGray300
                                //     .copyWith(
                                //         borderRadius:
                                //             BorderRadiusStyle.roundedBorder8),
                                child: CustomPhoneNumber(
                                  country: selectedCountry,
                                  controller: phoneNumberController,
                                  onTap: (Country country) {
                                    setState(() {
                                      selectedCountry = CountryPickerUtils.getCountryByPhoneCode(country.phoneCode);
                                      print("selectedCountry ${selectedCountry.phoneCode}");
                                    });
                                  },
                                ),
                                // child: Row(
                                //     crossAxisAlignment:
                                //         CrossAxisAlignment.start,
                                //     children: [
                                //       CustomImageView(
                                //           svgPath:
                                //               ImageConstant.imgUnitedstatesof,
                                //           height: getVerticalSize(15.00),
                                //           width: getHorizontalSize(20.00),
                                //           margin:
                                //               getMargin(top: 2, bottom: 3)),
                                //       CustomDropDown(
                                //           width: 39,
                                //           focusNode: FocusNode(),
                                //           icon: Container(
                                //               margin: getMargin(left: 7),
                                //               child: CustomImageView(
                                //                   svgPath: ImageConstant
                                //                       .imgArrowdownBlack900)),
                                //           hintText: "+1",
                                //           margin:
                                //               getMargin(left: 4, bottom: 1),
                                //           variant: DropDownVariant.None,
                                //           items: dropdownItemList,
                                //           onChanged: (value) {}),
                                //       Padding(
                                //           padding: getPadding(
                                //               left: 16,
                                //               right: 114,
                                //               bottom: 1),
                                //           child: Text("Mobile Number",
                                //               overflow: TextOverflow.ellipsis,
                                //               textAlign: TextAlign.left,
                                //               style: AppStyle
                                //                   .txtRobotoBold16Bluegray300))
                                //     ])
                              ),






                              // Align(
                              //     alignment: Alignment.centerLeft,
                              //     child: Padding(
                              //         padding: getPadding(
                              //             left: 20, top: 18, right: 92),
                              //         child: Row(children: [
                              //           CustomCheckbox(
                              //               text: "South Indian",
                              //               iconSize: 24,
                              //               value: checkbox,
                              //               onChange: (value) {
                              //                 checkbox = value;
                              //               }),
                              //           Spacer(),
                              //           CustomIconButton(
                              //               height: 24,
                              //               width: 24,
                              //               child: CustomImageView(
                              //                   svgPath: ImageConstant
                              //                       .imgCheckmarkWhiteA700)),
                              //           Padding(
                              //               padding: getPadding(
                              //                   left: 6, top: 2, bottom: 2),
                              //               child: Text("Italian",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtRobotoRegular16))
                              //         ]))),
                              // Align(
                              //     alignment: Alignment.centerLeft,
                              //     child: Padding(
                              //         padding: getPadding(
                              //             left: 20, top: 15, right: 63),
                              //         child: ListView.separated(
                              //             physics:
                              //                 NeverScrollableScrollPhysics(),
                              //             shrinkWrap: true,
                              //             separatorBuilder: (context, index) {
                              //               return SizedBox(
                              //                   height: getVerticalSize(15.00));
                              //             },
                              //             itemCount: 2,
                              //             itemBuilder: (context, index) {
                              //               return ListtextThree1ItemWidget();
                              //             }))),
                              // Align(
                              //     alignment: Alignment.centerLeft,
                              //     child: Padding(
                              //         padding: getPadding(left: 20, top: 15),
                              //         child: Row(children: [
                              //           CustomIconButton(
                              //               height: 24,
                              //               width: 24,
                              //               child: CustomImageView(
                              //                   svgPath: ImageConstant
                              //                       .imgCheckmarkWhiteA700)),
                              //           Container(
                              //               height: getVerticalSize(24.00),
                              //               width: getHorizontalSize(283.00),
                              //               margin: getMargin(left: 6),
                              //               child: Stack(
                              //                   alignment:
                              //                       Alignment.centerRight,
                              //                   children: [
                              //                     Align(
                              //                         alignment:
                              //                             Alignment.centerLeft,
                              //                         child: CustomCheckbox(
                              //                             alignment: Alignment
                              //                                 .centerLeft,
                              //                             text: "Pizza",
                              //                             iconSize: 24,
                              //                             value: checkbox1,
                              //                             onChange: (value) {
                              //                               checkbox1 = value;
                              //                             })),
                              //                     Align(
                              //                         alignment:
                              //                             Alignment.centerRight,
                              //                         child: CustomCheckbox(
                              //                             alignment: Alignment
                              //                                 .centerRight,
                              //                             text: "Gujarati Food",
                              //                             iconSize: 24,
                              //                             value: checkbox2,
                              //                             onChange: (value) {
                              //                               checkbox2 = value;
                              //                             }))
                              //                   ]))
                              //         ]))),
                              // Container(
                              //     margin:
                              //         getMargin(left: 20, top: 30, right: 19),
                              //     padding: getPadding(
                              //         left: 16, top: 14, right: 16, bottom: 14),
                              //     decoration: AppDecoration.outlineGray300
                              //         .copyWith(
                              //             borderRadius:
                              //                 BorderRadiusStyle.roundedBorder8),
                              //     child: Row(children: [
                              //       Container(
                              //           margin: getMargin(top: 2, bottom: 2),
                              //           decoration: AppDecoration.fillWhiteA700
                              //               .copyWith(
                              //                   borderRadius: BorderRadiusStyle
                              //                       .roundedBorder8),
                              //           child: Column(
                              //               mainAxisSize: MainAxisSize.min,
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.start,
                              //               children: [
                              //                 Container(
                              //                     height: getVerticalSize(8.00),
                              //                     width:
                              //                         getHorizontalSize(20.00),
                              //                     margin: getMargin(bottom: 8),
                              //                     decoration: BoxDecoration(
                              //                         color:
                              //                             ColorConstant.redA200,
                              //                         borderRadius: BorderRadius.only(
                              //                             topLeft: Radius.circular(
                              //                                 getHorizontalSize(
                              //                                     2.00)),
                              //                             topRight: Radius.circular(
                              //                                 getHorizontalSize(
                              //                                     2.00)))))
                              //               ])),
                              //       CustomDropDown(
                              //           width: 39,
                              //           focusNode: FocusNode(),
                              //           icon: Container(
                              //               margin: getMargin(left: 7),
                              //               child: CustomImageView(
                              //                   svgPath: ImageConstant
                              //                       .imgArrowdownBlack900)),
                              //           hintText: "+1",
                              //           margin: getMargin(left: 4, bottom: 1),
                              //           variant: DropDownVariant.None,
                              //           fontStyle: DropDownFontStyle
                              //               .RobotoRegular16Black900,
                              //           items: dropdownItemList1,
                              //           onChanged: (value) {}),
                              //       Padding(
                              //           padding: getPadding(
                              //               left: 16, right: 124, bottom: 1),
                              //           child: Text("123 456 7895",
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtRobotoMedium16Gray900))
                              //     ])),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  // hintText: "lapinos@gmail.com",
                                  margin: getMargin(top: 20),
                                  fontStyle: TextFormFieldFontStyle
                                      .RobotoMedium16Gray900,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress),

                              // const TextField(
                              //   decoration: InputDecoration(labelText: 'Enter Message'),
                              //   keyboardType: TextInputType.multiline,
                              //   minLines: 1, // <-- SEE HERE
                              //   maxLines: 5, // <-- SEE HERE
                              // ),


                              Container(
                                width: 350,
                                padding: getPadding(top: 19),
                                child: TextFormField(
                                  controller: descriptionController,
                                  minLines: 1,
                                  maxLines: 10,
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                      hintStyle: TextStyle(
                                          color: Colors.grey
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                  ),
                                ),
                              ),


                              // CustomTextFormField(
                              //     width: 150,
                              //     // focusNode: FocusNode(),
                              //     // margin: getMargin(top: 40),
                              //     controller: descriptionController,
                              //     // maxLines: null,
                              //     fontStyle: TextFormFieldFontStyle
                              //         .RobotoMedium16Gray900,
                              //     // textInputAction: TextInputAction.done,
                              //     textInputType: TextInputType.multiline),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 19),
                                      child: Text("Gallery",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium14))),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 10, right: 19),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                   getVerticalSize(110.00),
                                              crossAxisCount: 3,
                                              mainAxisSpacing:
                                                  getHorizontalSize(4.00),
                                              crossAxisSpacing:
                                                  getHorizontalSize(4.00)),
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: imagesV.length,
                                      itemBuilder: (context, index) {
                                        return GridtextTen1ItemWidget(
                                          onTapImgImagePlaceholder: onTapImgImagePlaceholder,
                                          index: index,
                                          images: imagesV,
                                          onImageRemove:(value) =>  imageRemove(value),
                                        );
                                      })),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Update Details",
                                  margin: getMargin(top: 20),
                                  padding: ButtonPadding.PaddingAll16,
                                  onTap: () => onTapUpdatedetails(context))
                            ]))))));
  }

  onTapImgImagePlaceholder() async{
    var source =
        ImageSource.gallery;
    XFile image =
        await imagePicker.pickImage(
        source: source,
        imageQuality: 50,
        preferredCameraDevice:
        CameraDevice.front);
    setState(() {
      _image = File(image.path);
      imagesV!.add(_image);
    });
  }

  Future showMessageView() {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
            title: const Text("Cuisines"),
            content:  SingleChildScrollView(
              child: ListBody(
                children: <Widget> [
                  TextField(
                    controller: cusiniesController,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: ()
                {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: ()
                {
                  createCuisines(cusiniesController.text).then((value) {
                    _checkBoxList.add(
                      CheckBoxModel(
                          id: value["cuisine"]["id"], name: value["cuisine"]["cuisine"], selected: false),
                    );

                    Navigator.of(context).pop();
                    cusiniesController.text = '';
                    setState(() {

                    });
                  });
                },
                child: const Text("Submit"),
              ),
            ],
          );
        });

  }


  Future<Map<dynamic, dynamic>> createCuisines(String value) async {
    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/add/cuisine'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "cuisine" : value,
      }),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to signIn');
    }
  }



  imageRemove(value) {
    imagesV.removeAt(value);
    setState(() {
    });
  }

  onTapUpdatedetails(BuildContext context) {

    // Navigator.pushNamed(context, AppRoutes.restaurantsAllDetailsScreen);
  }

  onTapArrowleft60(BuildContext context) {
    Navigator.pop(context);
  }
}
