import 'dart:convert';
import 'dart:math';
import 'package:Meats/ItemsAfterModel.dart';
import 'package:Meats/main.dart';
import 'package:dio/dio.dart';
import 'package:group_list_view/group_list_view.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;
import 'package:dio/dio.dart' as dio;
import 'package:shared_preferences/shared_preferences.dart';

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
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_phone_number.dart';
import '../../../widgets/custom_switch.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../Generate_image_url.dart';
import '../../Upload_file.dart';
import '../../bottom_navigation_tab_bar.dart';
import '../../member/menu_open_screen/widgets/listrectangle_item_widget.dart';
import '../../menu1_page/widgets/listrectangle4322_one_item_widget.dart';
import '../establishment_details_screen/widgets/listestablishment_item_widget.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import '../time_add_screen/time_add_screen.dart';
import 'model/checkbox_model.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

enum ImageSourceType { gallery, camera }

class EstablishmentDetailsScreen extends StatefulWidget {
  const EstablishmentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<EstablishmentDetailsScreen> createState() =>
      _EstablishmentDetailsScreenState();
}

class _EstablishmentDetailsScreenState
    extends State<EstablishmentDetailsScreen> {
  int selected = 0; //attention
  int timerSelected = 0; //attention
  bool isMondayTimeSelected = true;
  bool isTuesdayTimeSelected = true;
  bool isWednesdayTimeSelected = true;
  bool isThursdayTimeSelected = true;
  bool isFridayTimeSelected = true;
  bool isSaturdayTimeSelected = true;
  bool isSundayTimeSelected = true;

  Map<String, dynamic>? itemListData = {};

  bool setForWeek = false;
  String establishmentTiming = "8:00 AM to 10:30 PM";
  String monday = "8:00 AM to 10:30 PM";
  String tuesday = "8:00 AM to 10:30 PM";
  String wednesday = "8:00 AM to 10:30 PM";
  String thursday = "8:00 AM to 10:30 PM";
  String friday = "8:00 AM to 10:30 PM";
  String saturday = "8:00 AM to 10:30 PM";
  String sunday = "8:00 AM to 10:30 PM";

  List<String> establishmentItemList = [
    "Establishment  Details",
    "Establishment Location",
    "Establishment Timing",
    "Establishment Menu Setup"
  ];

  final Map<String, List> _elements = {
    'Team A': ['Klay Lewis', 'Ehsan Woodard', 'River Bains'],
    'Team B': ['Toyah Downs', 'Tyla Kane'],
  };

  List<String> weekdaysItemList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  TextEditingController controlsTextController = TextEditingController();
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController controlsTextOneController = TextEditingController();
  TextEditingController milesTextOneController = TextEditingController();
  TextEditingController groupThreeController = TextEditingController();
  TextEditingController controlsTextTwoController = TextEditingController();
  TextEditingController locationAddressTextController = TextEditingController();
  TextEditingController pinTextController = TextEditingController();
  TextEditingController cityTextController = TextEditingController();
  bool isMenuSetup = false;
  var _image;
  var imagePicker;
  var type;
  List<ItemsAfterModel> itemList = <ItemsAfterModel>[];
  final SliverGridDelegate delegate =
      const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 4);
  int _selectedIndex = 0;

  final List<CheckBoxModel> _checkBoxList = <CheckBoxModel>[];

  // List<String> _checked = ["A", "B"];

  List startTimeList = [];
  List endTimeList = [];
  late SharedPreferences prefs;

  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];
  bool checkbox = false;

  List<String> dropdownItemList1 = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  Map<String, dynamic>? orderList = {};

  Future<bool> uploadFile(context, String url, File image) async {
    try {
      UploadFile uploadFile = UploadFile();
      await uploadFile.call(url, image);
      if (uploadFile.isUploaded != null && uploadFile.isUploaded) {
        return true;
      } else {
        throw uploadFile.message;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _checkBoxList.addAll({
      CheckBoxModel(id: 1, name: "Alcohol", selected: false),
      CheckBoxModel(id: 2, name: "Restaurants", selected: false),
      CheckBoxModel(id: 7, name: "Grocery", selected: false),
      CheckBoxModel(id: 9, name: "Pharmacy", selected: false),
    });

    // List itemList = await objectBox.getItemList();

    for (int i = 0; i < 7; i++) {
      // Adding data to the user-defined type list.
      startTimeList.add("8:00 AM");
      endTimeList.add("10:30 PM");
    }

    Future.delayed(Duration.zero, () async {
      // itemList = objectBox.getItemList();
      // print("item list will show $itemList");
      await orderById();
    });


    imagePicker = ImagePicker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () async {
      itemList = await objectBox.getItemList();
    });
      // print(" ${itemList.first.id}");
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(48.00),
          centerTitle: true,
          title: Container(
              // padding: getPadding(
              // left: 18, top: 12, right: 18, bottom: 12),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(children: [
                AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 17, top: 12, bottom: 12),
                    onTap: () => onTapArrowleft15(context)),
                AppbarSubtitle(
                    text: " Establishment Details",
                    margin: getMargin(left: 59, top: 12, right: 94, bottom: 13))
              ])),
          styleType: Style.bgFillWhiteA700),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                  width: getHorizontalSize(318.00),
                  child: Text("Create your Establishment page",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterBold24)),
            ),
            ListView.builder(
              key: Key('builder ${selected.toString()}'),
              //attention
              padding:
                  const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: establishmentItemList.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  if (index != 0) ...[
                    const Divider(
                      height: 17.0,
                      color: Colors.grey,
                    ),
                  ],

                  // trailing: (index == selected)
                  ExpansionTile(
                    key: Key(index.toString()),
                    // trailing: const SizedBox(),
                    initiallyExpanded: index == selected,
                    shape: const Border(),
                    title: Text(establishmentItemList[index],
                        style: TextStyle(
                            color: index == selected
                                ? const Color(0xFF09216B)
                                : const Color(0xFF09211E),
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold)),
                    //     ? const SizedBox()
                    //     : Icon(
                    //   index == selected
                    //       ? Icons.keyboard_arrow_up
                    //       : Icons.keyboard_arrow_down,
                    //   color: Colors.red,
                    // ),
                    // trailing: const Icon(
                    //   Icons.keyboard_arrow_down,
                    //   color: Colors.green,
                    // ),
                    onExpansionChanged: ((newState) {
                      if (newState) {
                        if(newState && index == 3) {
                          isMenuSetup = true;
                        }else {
                          isMenuSetup = false;
                        }
                        setState(() {
                          // const Duration(seconds: 20000);
                          selected = index;
                        });
                      } else {
                        setState(() {
                          isMenuSetup = false;
                          selected = -1;
                        });
                      }
                    }),
                    children: <Widget>[
                      if (index == 0) ...[
                        Padding(
                            padding: getPadding(top: 22),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            _image != null
                                                ? Image.file(
                                                    _image,
                                                    width: 150.0,
                                                    height: 150.0,
                                                    fit: BoxFit.fitHeight,
                                                  )
                                                : CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse7125x125,
                                                    height: getSize(125.00),
                                                    width: getSize(125.00),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                62.00))),
                                            GestureDetector(
                                              onTap: () async {
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
                                                });
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCameraGray900,
                                                  height: getSize(32.00),
                                                  width: getSize(32.00),
                                                  margin: getMargin(
                                                      left: 3, top: 93)),
                                            )
                                          ])),
                                  CustomTextFormField(
                                      width: 335,
                                      focusNode: FocusNode(),
                                      controller: controlsTextController,
                                      hintText: "Establishment Name",
                                      margin: getMargin(top: 20, right: 2),
                                      textInputAction: TextInputAction.done),
                                  Container(
                                      margin: getMargin(
                                          top: 20, right: 2, left: 13),
                                      padding: getPadding(
                                          left: 6, top: 7, right: 6, bottom: 7),
                                      decoration: AppDecoration.outlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    // left: 9,
                                                    top: 0,
                                                    bottom: 0),
                                                child: CustomTextFormField(
                                                    isClickEnabled: true,
                                                    width: 200,
                                                    focusNode: FocusNode(),
                                                    controller:
                                                        milesTextOneController,
                                                    hintText: "Delivery Radius",
                                                    // margin: getMargin(
                                                    //     top: 20,
                                                    //     right: 2),
                                                    textInputAction:
                                                        TextInputAction.done)),

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
                                                height: getVerticalSize(35.00),
                                                width: getHorizontalSize(1.00),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray300)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 13,
                                                    top: 7,
                                                    bottom: 9),
                                                child: Text("Miles",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16Gray900))
                                          ])),
                                  // CustomDropDown(
                                  //     width: 335,
                                  //     focusNode: FocusNode(),
                                  //     icon: Container(
                                  //         margin: getMargin(
                                  //             left: 30,
                                  //             right: 12),
                                  //         child: CustomImageView(
                                  //             svgPath: ImageConstant
                                  //                 .imgArrowdownBlack900)),
                                  //     hintText: "Select Types of Category",
                                  //     margin: getMargin(
                                  //         top: 21,
                                  //         right: 2),
                                  //     items: dropdownItemList,
                                  //     onChanged: (
                                  //         value) {}),
                                  Padding(
                                      padding: getPadding(
                                          right: 0, top: 20, bottom: 0),
                                      child: Column(
                                          // mainAxisSize: MainAxisSize
                                          //     .min,
                                          // crossAxisAlignment: CrossAxisAlignment
                                          //     .start,
                                          // mainAxisAlignment: MainAxisAlignment
                                          //     .start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                    "Select Establishment Type",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16Gray900),
                                                // GestureDetector(
                                                //     onTap: () {
                                                //       showMessageView();
                                                //     },
                                                //     child: Text(
                                                //         "+ Add ",
                                                //         overflow: TextOverflow
                                                //             .ellipsis,
                                                //         textAlign: TextAlign
                                                //             .left,
                                                //         style: AppStyle
                                                //             .txtRobotoMedium16Gray90001))
                                              ],
                                            ),
                                            Container(
                                                padding: const EdgeInsets.only(
                                                    top: 10, bottom: 5),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: GridView.builder(
                                                  gridDelegate: delegate,
                                                  padding:
                                                      const EdgeInsets.all(0),
                                                  itemCount:
                                                      _checkBoxList.length,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return RadioListTile(
                                                      contentPadding:
                                                          EdgeInsets.zero,
                                                      groupValue:
                                                          _selectedIndex,
                                                      title: Text(
                                                          _checkBoxList[index]
                                                              .name),
                                                      value: index,
                                                      onChanged: (newIndex) {
                                                        setState(() {
                                                          _selectedIndex =
                                                              newIndex as int;
                                                        });
                                                      },
                                                    );
                                                  },
                                                )),

                                            // Padding(
                                            //     padding: getPadding(
                                            //         top: 15),
                                            //     child: ListView
                                            //         .separated(
                                            //         physics: NeverScrollableScrollPhysics(),
                                            //         shrinkWrap: true,
                                            //         separatorBuilder: (
                                            //             context,
                                            //             index) {
                                            //           return SizedBox(
                                            //               height: getVerticalSize(
                                            //                   15.00));
                                            //         },
                                            //         itemCount: 1,
                                            //         itemBuilder: (
                                            //             context,
                                            //             index) {
                                            //           return ListestablishmentItemWidget();
                                            //         }))
                                          ])),
                                  Container(
                                    // margin:
                                    //     getMargin(left: 20, top: 20, right: 20),
                                    padding: getPadding(
                                        left: 16, right: 16, bottom: 5),
                                    // decoration: AppDecoration.outlineGray300
                                    //     .copyWith(
                                    //         borderRadius:
                                    //             BorderRadiusStyle.roundedBorder8),
                                    child: CustomPhoneNumber(
                                      country: selectedCountry,
                                      controller: phoneNumberController,
                                      onTap: (Country country) {
                                        setState(() {
                                          selectedCountry = CountryPickerUtils
                                              .getCountryByPhoneCode(
                                                  country.phoneCode);
                                          print(
                                              "selectedCountry ${selectedCountry.phoneCode}");
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

                                  CustomButton(
                                      height: 55,
                                      width: 335,
                                      text: "Save & Next",
                                      margin: getMargin(top: 30, right: 2),
                                      padding: ButtonPadding.PaddingAll16,
                                      onTap: () async {
                                        var imageUrl;
                                        if (_image != null) {
                                          imageUrl = await sendFile();
                                        }
                                        Map<dynamic, dynamic> data =
                                            await createdEstablishment(
                                                imageUrl);
                                        var snackBar = SnackBar(
                                            content:
                                                Text("${data["message"]}"));
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      })
                                ]))
                      ],
                      if (index == 1) ...[
                        CustomTextFormField(
                            width: 335,
                            focusNode: FocusNode(),
                            controller: locationAddressTextController,
                            hintText: "Address",
                            margin: getMargin(top: 19)),
                        CustomTextFormField(
                            width: 335,
                            focusNode: FocusNode(),
                            controller: pinTextController,
                            hintText: "Postcode",
                            margin: getMargin(top: 20)),
                        CustomTextFormField(
                            width: 335,
                            focusNode: FocusNode(),
                            controller: cityTextController,
                            hintText: "City",
                            margin: getMargin(top: 20),
                            textInputAction: TextInputAction.done),
                        CustomButton(
                          height: 48,
                          width: 335,
                          text: "Save & Next",
                          margin: getMargin(top: 20),
                          onTap: () async {
                            var data = await createLocation(context);
                            var snackBar =
                                SnackBar(content: Text("${data["message"]}"));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        )
                        // Container(
                        //     height: getVerticalSize(1.00),
                        //     width: size.width,
                        //     margin: getMargin(top: 30),
                        //     decoration: BoxDecoration(
                        //         color: ColorConstant.gray300)),
                      ],
                      if (index == 2) ...[
                        Column(children: [
                          ListView.builder(
                            key: Key('builder ${timerSelected.toString()}'),
                            //attention
                            padding: EdgeInsets.only(
                                left: 13.0, right: 13.0, bottom: 25.0),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: weekdaysItemList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Column(children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: getPadding(left: 12, right: 12),
                                    decoration: AppDecoration.outlineGray300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: ExpansionTile(
                                      key: Key(index.toString()),
                                      //attention
                                      initiallyExpanded: index == timerSelected,
                                      //attention
                                      shape: const Border(),
                                      title: Text(weekdaysItemList[index],
                                          style: const TextStyle(
                                              color: Color(0xFF09216B),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold)),
                                      onExpansionChanged: ((newState) {
                                        if (newState) {
                                          setState(() {
                                            const Duration(seconds: 20000);
                                            timerSelected = index;
                                          });
                                        } else {
                                          setState(() {
                                            timerSelected = -1;
                                          });
                                        }
                                      }),
                                      children: <Widget>[
                                        if (index == 0) ...[
                                          Container(
                                              width: getHorizontalSize(335.00),
                                              margin: getMargin(
                                                  left: 10, right: 20),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  setForWeek
                                                                      ? establishmentTiming
                                                                      : monday,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 7),
                                                                            child: GestureDetector(
                                                                              onTap: () async {
                                                                                final result = await Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => TimeAddScreen(
                                                                                        arguments: weekdaysItemList[index],
                                                                                      ),
                                                                                    ));
                                                                                setState(() {
                                                                                  setForWeek = result[2] ?? [];
                                                                                  startTimeList.insert(0, result[0]);
                                                                                  endTimeList.insert(0, result[1]);
                                                                                  if (setForWeek) {
                                                                                    establishmentTiming = result[0] + " to " + result[1];
                                                                                  } else {
                                                                                    monday = result[0] + " to " + result[1];
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Text("Edit Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16),
                                                                            )),
                                                                        Spacer(),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 7,
                                                                            ),
                                                                            child: Text(isMondayTimeSelected ? "Open" : "closed",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                        CustomSwitch(
                                                                            margin:
                                                                                getMargin(left: 9),
                                                                            value: isMondayTimeSelected,
                                                                            onChanged: (value) {
                                                                              setState(() {
                                                                                isMondayTimeSelected = value;
                                                                              });
                                                                            })
                                                                      ]))
                                                            ]))
                                                  ])),
                                        ],
                                        if (index == 1) ...[
                                          Container(
                                              width: getHorizontalSize(335.00),
                                              margin: getMargin(
                                                  left: 10, right: 20),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  setForWeek
                                                                      ? establishmentTiming
                                                                      : tuesday,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 7),
                                                                            child: GestureDetector(
                                                                              onTap: () async {
                                                                                final result = await Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => TimeAddScreen(
                                                                                        arguments: weekdaysItemList[index],
                                                                                      ),
                                                                                    ));
                                                                                setState(() {
                                                                                  setForWeek = result[2];
                                                                                  startTimeList.insert(1, result[0]);
                                                                                  endTimeList.insert(1, result[1]);

                                                                                  if (setForWeek) {
                                                                                    establishmentTiming = result[0] + " to " + result[1];
                                                                                  } else {
                                                                                    tuesday = result[0] + " to " + result[1];
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Text("Edit Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16),
                                                                            )),
                                                                        Spacer(),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 7,
                                                                            ),
                                                                            child: Text(isTuesdayTimeSelected ? "Open" : "closed",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                        CustomSwitch(
                                                                            margin:
                                                                                getMargin(left: 9),
                                                                            value: isTuesdayTimeSelected,
                                                                            onChanged: (value) {
                                                                              setState(() {
                                                                                isTuesdayTimeSelected = value;
                                                                              });
                                                                            })
                                                                      ]))
                                                            ]))
                                                  ])),
                                        ],
                                        if (index == 2) ...[
                                          Container(
                                              width: getHorizontalSize(335.00),
                                              margin: getMargin(
                                                  left: 10, right: 20),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  setForWeek
                                                                      ? establishmentTiming
                                                                      : wednesday,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 7),
                                                                            child: GestureDetector(
                                                                              onTap: () async {
                                                                                final result = await Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => TimeAddScreen(
                                                                                        arguments: weekdaysItemList[index],
                                                                                      ),
                                                                                    ));
                                                                                setState(() {
                                                                                  setForWeek = result[2];
                                                                                  startTimeList.insert(2, result[0]);
                                                                                  endTimeList.insert(2, result[1]);
                                                                                  if (setForWeek) {
                                                                                    establishmentTiming = result[0] + " to " + result[1];
                                                                                  } else {
                                                                                    wednesday = result[0] + " to " + result[1];
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Text("Edit Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16),
                                                                            )),
                                                                        Spacer(),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 7,
                                                                            ),
                                                                            child: Text(isWednesdayTimeSelected ? "Open" : "closed",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                        CustomSwitch(
                                                                            margin:
                                                                                getMargin(left: 9),
                                                                            value: isWednesdayTimeSelected,
                                                                            onChanged: (value) {
                                                                              setState(() {
                                                                                isWednesdayTimeSelected = value;
                                                                              });
                                                                            })
                                                                      ]))
                                                            ]))
                                                  ])),
                                        ],
                                        if (index == 3) ...[
                                          Container(
                                              width: getHorizontalSize(335.00),
                                              margin: getMargin(
                                                  left: 10, right: 20),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  setForWeek
                                                                      ? establishmentTiming
                                                                      : thursday,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 7),
                                                                            child: GestureDetector(
                                                                              onTap: () async {
                                                                                final result = await Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => TimeAddScreen(
                                                                                        arguments: weekdaysItemList[index],
                                                                                      ),
                                                                                    ));
                                                                                setState(() {
                                                                                  setForWeek = result[2];
                                                                                  startTimeList.insert(3, result[0]);
                                                                                  endTimeList.insert(3, result[1]);
                                                                                  if (setForWeek) {
                                                                                    establishmentTiming = result[0] + " to " + result[1];
                                                                                  } else {
                                                                                    thursday = result[0] + " to " + result[1];
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Text("Edit Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16),
                                                                            )),
                                                                        Spacer(),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 7,
                                                                            ),
                                                                            child: Text(isThursdayTimeSelected ? "Open" : "closed",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                        CustomSwitch(
                                                                            margin:
                                                                                getMargin(left: 9),
                                                                            value: isThursdayTimeSelected,
                                                                            onChanged: (value) {
                                                                              setState(() {
                                                                                isThursdayTimeSelected = value;
                                                                              });
                                                                            })
                                                                      ]))
                                                            ]))
                                                  ])),
                                        ],
                                        if (index == 4) ...[
                                          Container(
                                              width: getHorizontalSize(335.00),
                                              margin: getMargin(
                                                  left: 10, right: 20),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  setForWeek
                                                                      ? establishmentTiming
                                                                      : friday,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 7),
                                                                            child: GestureDetector(
                                                                              onTap: () async {
                                                                                final result = await Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => TimeAddScreen(
                                                                                        arguments: weekdaysItemList[index],
                                                                                      ),
                                                                                    ));
                                                                                setState(() {
                                                                                  startTimeList.insert(4, result[0]);
                                                                                  endTimeList.insert(4, result[1]);
                                                                                  setForWeek = result[2];
                                                                                  if (setForWeek) {
                                                                                    establishmentTiming = result[0] + " to " + result[1];
                                                                                  } else {
                                                                                    friday = result[0] + " to " + result[1];
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Text("Edit Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16),
                                                                            )),
                                                                        Spacer(),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 7,
                                                                            ),
                                                                            child: Text(isFridayTimeSelected ? "Open" : "closed",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                        CustomSwitch(
                                                                            margin:
                                                                                getMargin(left: 9),
                                                                            value: isFridayTimeSelected,
                                                                            onChanged: (value) {
                                                                              setState(() {
                                                                                isFridayTimeSelected = value;
                                                                              });
                                                                            })
                                                                      ]))
                                                            ]))
                                                  ])),
                                        ],
                                        if (index == 5) ...[
                                          Container(
                                              width: getHorizontalSize(335.00),
                                              margin: getMargin(
                                                  left: 10, right: 20),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  setForWeek
                                                                      ? establishmentTiming
                                                                      : saturday,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 7),
                                                                            child: GestureDetector(
                                                                              onTap: () async {
                                                                                final result = await Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => TimeAddScreen(
                                                                                        arguments: weekdaysItemList[index],
                                                                                      ),
                                                                                    ));
                                                                                setState(() {
                                                                                  startTimeList.insert(5, result[0]);
                                                                                  endTimeList.insert(5, result[1]);
                                                                                  setForWeek = result[2];
                                                                                  if (setForWeek) {
                                                                                    establishmentTiming = result[0] + " to " + result[1];
                                                                                  } else {
                                                                                    friday = result[0] + " to " + result[1];
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Text("Edit Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16),
                                                                            )),
                                                                        Spacer(),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 7,
                                                                            ),
                                                                            child: Text(isSaturdayTimeSelected ? "Open" : "closed",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                        CustomSwitch(
                                                                            margin:
                                                                                getMargin(left: 9),
                                                                            value: isSaturdayTimeSelected,
                                                                            onChanged: (value) {
                                                                              setState(() {
                                                                                isSaturdayTimeSelected = value;
                                                                              });
                                                                            })
                                                                      ]))
                                                            ]))
                                                  ])),
                                        ],
                                        if (index == 6) ...[
                                          Container(
                                              width: getHorizontalSize(335.00),
                                              margin: getMargin(
                                                  left: 10, right: 20),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  setForWeek
                                                                      ? establishmentTiming
                                                                      : sunday,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 7),
                                                                            child: GestureDetector(
                                                                              onTap: () async {
                                                                                final result = await Navigator.push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => TimeAddScreen(
                                                                                        arguments: weekdaysItemList[index],
                                                                                      ),
                                                                                    ));
                                                                                setState(() {
                                                                                  setForWeek = result[2];
                                                                                  startTimeList.insert(6, result[0]);
                                                                                  endTimeList.insert(6, result[1]);
                                                                                  if (setForWeek) {
                                                                                    establishmentTiming = result[0] + " to " + result[1];
                                                                                  } else {
                                                                                    sunday = result[0] + " to " + result[1];
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Text("Edit Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16),
                                                                            )),
                                                                        Spacer(),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 7,
                                                                            ),
                                                                            child: Text(isSundayTimeSelected ? "Open" : "closed",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtRobotoRegular16Gray90001)),
                                                                        CustomSwitch(
                                                                            margin:
                                                                                getMargin(left: 9),
                                                                            value: true,
                                                                            onChanged: (value) {
                                                                              setState(() {
                                                                                isSundayTimeSelected = value;
                                                                              });
                                                                            })
                                                                      ]))
                                                            ]))
                                                  ])),
                                        ],
                                      ],
                                    ),
                                  ),
                                ]),
                              );
                            },
                          ),
                          CustomButton(
                              height: 60,
                              width: 335,
                              text: "Save & Next",
                              margin: getMargin(right: 2, bottom: 5),
                              padding: ButtonPadding.PaddingAll16,
                              onTap: () async {
                                var data = await createTiming(context);
                                var snackBar = SnackBar(
                                    content: Text("${data["message"]}"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              })
                        ]),
                      ],
                      if (index == 3) ...[
                        Column(
                          children: [
                            if (itemList.isEmpty) ...<Widget>[
                              Column(
                                children: [
                                  Padding(
                                      padding: getPadding(top: 20),
                                      child: Text("Add menu items here.",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtRobotoRegular16)),
                              CustomButton(
                                height: 45,
                                  width: 335,
                                  text: "+ Add Item",
                                  margin: getMargin(top: 35),
                                  onTap: () async {
                                    Navigator.of(context).pushNamed(
                                        AppRoutes.menuItemAddScreen).then((value) async {
                                      Map<String, dynamic> data = await restaruntById();
                                      print("Amit Amit Amit ${data["response"]["menu"]}");
                                      prefs.setString("menuId", data["response"]["menu"]);
                                      // itemListData = await orderById();
                                      // getItemList
                                      // setState(() {
                                      // });

                                     });
                                  }),
                                ],
                              ),
                            ] else ...<Widget>[
                            CustomButton(
                                height: 45,
                                width: 150,
                                text: "+ Add Item",
                                margin: getMargin(top: 30, left: 210),
                                onTap: () async {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.menuItemAddScreen).then((value) {
                                        setState(() {
                                        });
                                  });
                                  Map<String, dynamic> data = await restaruntById();
                                  print("Amit Amit Amit ${data["response"]["menu"]}");
                                  prefs.setString("menuId", data["response"]["menu"]);

                                }),
   if(isMenuSetup == true) ...[
     Padding(
         padding: getPadding(
             left: 20, top: 17, right: 20),
         child: ListView.separated(
             physics:
             NeverScrollableScrollPhysics(),
             shrinkWrap: true,
             separatorBuilder:
                 (context, index) {
               return Container(
                   height:
                   getVerticalSize(1.00),
                   width: getHorizontalSize(
                       275.00),
                   decoration: BoxDecoration(
                       color: ColorConstant
                           .gray300,
                       borderRadius:
                       BorderRadius.circular(
                           getHorizontalSize(
                               1.00))));
             },
             itemCount: 1,
             itemBuilder: (context, index) {
                return Column(children: itemList.map((userone){
                return ListrectangleItemWidget(
                index: index,
                itemList: userone,
                );
                }).toList());
                },
                ),
     ),
     CustomButton(
         height: 55,
         width: 335,
         text: "Save & Next",
         margin: getMargin( right: 2),
         padding: ButtonPadding.PaddingAll16,
         onTap: () async {
           // var imageUrl;
           // if (_image != null) {
           //   imageUrl = await sendFile();
           // }
           // Map<dynamic, dynamic> data =
           // await createdEstablishment(
           //     imageUrl);
           // var snackBar = SnackBar(
           //     content:
           //     Text("${data["message"]}"));
           // ScaffoldMessenger.of(context)
           //     .showSnackBar(snackBar);


           createdEstablishmentAddItems(itemList);



         }
         )

     //  GroupListView(
        //   sectionsCount: 1,
        //   shrinkWrap: true,
        //   countOfItemInSection: (int section) {
        //     return snapshot.data?.length ?? 0;
        //   },
        //   itemBuilder:
        //       (BuildContext context, IndexPath index) {
        //     return  Row(
        //       children: [
        //         Column(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(top: 3),
        //               child: CustomImageView(
        //                   imagePath: ImageConstant
        //                       .imgImageplaceholder,
        //                   height: getSize(50.00),
        //                   width: getSize(50.00),
        //                   radius:
        //                   BorderRadius.circular(
        //                       getHorizontalSize(
        //                           10.00)),
        //                   margin:
        //                   getMargin(bottom: 42)),
        //             ),
        //             // if(snapshot.data?["response"]["items"][index.index]["image"] != null) ...[
        //             //           //   Image.network(
        //             //           //     snapshot.data?["response"]["items"][index.index]["image"],
        //             //           //   width: 50.0,
        //             //           //   height: 50.0,
        //             //           //   fit: BoxFit.fitHeight,
        //             //           // )],
        //            ]),
        //         Padding(
        //           padding: const EdgeInsets.only(left: 20),
        //           child: SizedBox(
        //             width: size.width / 2,
        //             child: Column(
        //                 crossAxisAlignment:
        //                 CrossAxisAlignment
        //                     .start,
        //                 // mainAxisAlignment:
        //                 // MainAxisAlignment.spaceEvenly,
        //                 children: [
        //                 Container(
        //                 width: getHorizontalSize(15.00),
        //                 padding: getPadding(all: 4),
        //                 decoration: AppDecoration.outlineTeal3001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
        //                 child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
        //                 Container(height: getSize(7.00), width: getSize(7.00), decoration: BoxDecoration(color: ColorConstant.teal300, borderRadius: BorderRadius.circular(getHorizontalSize(3.00))))
        //             ])),
        //                 Padding(
        //             padding: getPadding(top: 6),
        //             child: Text("${snapshot.data?[index.index]["name"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14)),
        //                 Container(
        //                       width: getHorizontalSize(
        //                           169.00),
        //                       child: RichText(
        //                           text: TextSpan(children: [
        //                             TextSpan(text: "${snapshot.data?[index.index]["about"]}", style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400)),
        //                             // TextSpan(text: "Read More", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400))
        //                           ]),
        //                           textAlign: TextAlign.left)),
        //                 ]),
        //           ),
        //         ),
        //         Column(
        //             children: [
        //               CustomButton(
        //                   height: 32,
        //                   width: 83,
        //                   text:
        //                   "Edit",
        //                   margin: getMargin(
        //                       bottom:
        //                       9),
        //                   variant:
        //                   ButtonVariant
        //                       .OutlineGray300_1,
        //                   shape: ButtonShape
        //                       .CircleBorder16,
        //                   padding:
        //                   ButtonPadding
        //                       .PaddingAll5,
        //                   fontStyle:
        //                   ButtonFontStyle
        //                       .RobotoMedium16Gray900),
        //               CustomSwitch(
        //                   margin: getMargin(
        //                       left:
        //                       9,
        //                       bottom:
        //                       1),
        //                   value:
        //                   true,
        //                   onChanged:
        //                       (value) {}),
        //               Padding(
        //                   padding: getPadding(
        //                       left:
        //                       11),
        //                   child: Text(
        //                       "In Stock",
        //                       overflow:
        //                       TextOverflow.ellipsis,
        //                       textAlign: TextAlign.left,
        //                       style: AppStyle.txtRobotoRegular16Gray90001))
        //             ]),
        //           ],
        //         );
        //   },
        //   groupHeaderBuilder:
        //       (BuildContext context, int section) {
        //     return Padding(
        //       padding: const EdgeInsets.symmetric(
        //           horizontal: 15, vertical: 8),
        //       child: Text("${snapshot.data?[section]["category"]}",
        //           overflow:
        //           TextOverflow.ellipsis,
        //           textAlign: TextAlign.left,
        //           style: AppStyle
        //               .txtRobotoRegular16Gray60001)
        //     );
        //   },
        //   separatorBuilder: (context, index) =>
        //       SizedBox(height: 10),
        //   sectionSeparatorBuilder: (context, section) =>
        //       SizedBox(height: 10),
        // );


      ]

                            // ListView.builder(
                            //     itemCount: 2,
                            //     itemBuilder: (context, index) {
                            //       // final data = expensies[index];
                            //       String previousDate = "Amittttt";
                            //       // String date = DateFormat('MMM yyyy').format(data.date);
                            //       return Column(
                            //         children: [
                            //           Container(
                            //             alignment: Alignment.center,
                            //             child: Text("date"),
                            //           ),
                            //           const Padding(
                            //             padding: EdgeInsets.only(bottom: 8.0),
                            //             child: Text("Titltltltl"),
                            //           ),
                            //         ],
                            //       );
                            //     }),
                          ],
                          ],
                        )
                      ],
                    ],
                  ),
                ]);
              },
            )
          ]),
        ),
      ),
    );
  }

  Future showMessageView() {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Text("Add Category",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoMedium24Black900),
              content: Container(
                  width: getHorizontalSize(334.00),
                  padding: getPadding(top: 0, bottom: 0),
                  decoration: AppDecoration.fillWhiteA700
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(
                                MediaQuery.of(context).size.width),
                            // margin: getMargin(top: 15),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray300)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(196.00),
                                margin: getMargin(left: 20, top: 30),
                                child: Text(
                                    "Add new category for your establishment",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoRegular16Gray900))),
                        CustomTextFormField(
                            width: 295,
                            focusNode: FocusNode(),
                            controller: groupThreeController,
                            hintText: "Enter category",
                            margin: getMargin(top: 19),
                            padding: TextFormFieldPadding.PaddingT17,
                            fontStyle: TextFormFieldFontStyle.RobotoRegular12,
                            textInputAction: TextInputAction.done),
                        CustomButton(
                            height: 40,
                            width: 290,
                            text: "Add New",
                            margin: getMargin(top: 28),
                            onTap: () {}),
                        Padding(
                            padding: getPadding(top: 5),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoBold16Bluegray300)))
                      ])));
        });
  }


  Future<dynamic> createdEstablishmentAddItems(itemList) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');

    var studentsmap = itemList.map((e){
      return {
        "category": e.name,
        "name": e.name,
        "about": e.about,
        "originalPrice": e.originalPrice,
        "discountPrice": e.discountPrice,
        "image": e.image,
      };
    }).toList();


    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/create/menu'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },

    body: jsonEncode(<dynamic,dynamic>{
        "restaurant_id": userId,
        "items" : studentsmap
      }),
    );

    if (response.statusCode == 200) {

      // Map<dynamic, dynamic> data = jsonDecode(response.body);
      Navigator.pop(context);
    } else {
      throw Exception('Failed to create restaurant.');
    }
  }


  int getRandomInt() {
    Random random = new Random();
    int randomNumber = random.nextInt(10000);
    print("randomNumber-  " + randomNumber.toString());
    String unique = randomNumber.toString();
    return int.parse(unique);
  }

  // Future<http.Response> createAlbum() {
  //   return http.post(
  //     Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/create/restaurant'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       "name": "Meatss",
  //       "description": "Hop on to Meats and follow your friends.",
  //       // "image" : [],
  //       "menu" : "1",
  //       "type" : "Restaurant",
  //       "status" : "Open",
  //       "cuisine" : "Asian",
  //       "location" : "15, Yemen road, Yemen.",
  //       // "posts" : [],
  //       "phoneNumber" : "+91 9003757281",
  //       "radius" : "10 km",
  //       // "reviews" : [],
  //       // "followers" : [],
  //       // "rating_count" : 5,
  //       "userId" : "1"
  //
  //     }),
  //   );
  //   if (response.statusCode == 200) {
  //
  //   }
  //   }
  // }

  Future<dynamic> sendFile() async {
    Dio dio = Dio();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String fileExtension = p.extension(_image.path);

    var len = await _image.length();
    var formData = FormData.fromMap(
        {'file': _image.readAsBytesSync(), 'type': fileExtension});
    var response = await dio.put(
        "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/upload/",
        data: formData,
        options: Options(headers: {
          Headers.contentLengthHeader: len,
          'Authorization': token!
        } // set content-length
            ));
    return response;
  }

  Future<dynamic> uploadToSignedUrl() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    String fileExtension = p.extension(_image.path);

    var req = http.MultipartRequest(
        'POST',
        Uri.parse(
            "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/upload/"));
    req.headers.addAll({'Authorization': token!});
    req.fields['type'] = fileExtension;
    req.files.add(http.MultipartFile.fromBytes(
      'file',
      _image.readAsBytesSync(),
      filename: "abc",
    ));
    http.StreamedResponse response = await req.send();
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    return object["uploads"]["id"];
  }

  Future<Map<dynamic, dynamic>> createdEstablishment(imageUrl) async {
    prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('id');

    final response = await http.post(
      Uri.parse(
          'http://ec2-34-227-30-202.compute-1.amazonaws.com/api/create/restaurant'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },
      body: jsonEncode(<dynamic, dynamic>{
        "name": controlsTextController.value.text,
        "description": "Hop on to Meats and follow your friends.",
        "image": [imageUrl],
        "menu": "1",
        "type": _checkBoxList[_selectedIndex].name,
        "status": "Open",
        "cuisine": "Asian",
        "location": "15, Yemen road, Yemen.",
        // "posts" : [],
        "phoneNumber": "$selectedCountry ${phoneNumberController.value.text}",
        "radius": milesTextOneController.value.text,
        // "reviews" : [],
        // "followers" : [],
        // "rating_count" : 5,
        "userId": userId,
      }),
    );

    if (response.statusCode == 200) {
      Map<dynamic, dynamic> data = jsonDecode(response.body);
      // await prefs.setInt('restarantId', data["response"]["id"]);
      await prefs.setInt('restarantId',38179);


      return data;
    } else {
      throw Exception('Failed to create restaurant.');
    }
  }

  Future<dynamic> createLocation(BuildContext context) async {
    try {
      prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      int? userId = prefs.getInt('restarantId');

      final response = await http.post(
        Uri.parse(
            'http://ec2-34-227-30-202.compute-1.amazonaws.com/api/update/restaurant/location'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': token!,
        },
        body: jsonEncode(<dynamic, dynamic>{
          "id": userId,
          "location":
              "${locationAddressTextController.value.text} ${cityTextController.value.text} ${pinTextController.value.text}",
          "lat": "124556.899",
          "long": "-3454565.8"
        }),
      );

      if (response.statusCode == 200) {
        // print("response.statusCode ${response.body}");
        return jsonDecode(response.body);
      }
    } catch (e) {
      print("exceptione $e");
    }
  }

  Future<Map<String, dynamic>> restaruntById() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/restaurant"),
    )..headers.addAll({
        'Content-Type': 'application/json',
        'Authorization': token!,
      });
    var params = {"id": userId};
    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    return object;
  }

  Future<List> orderById() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/menu"),
    )..headers.addAll({
        'Content-Type': 'application/json',
        'Authorization': token!,
      });
    var params = {
      "id": "11313"
    };
    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    var listItems = object["response"]["items"];
    return listItems;
  }

  // object["response"].sort((a, b) => a.status.compareTo(b.status));
  //  object["response"].sort((p1, p2) => p1.status.compareTo(p2.status));
  //  print(object);

  // ordersdelivereddata = await json.decode(await response.stream.bytesToString());
  // orderList = ordersdelivereddata["response"];
  // print("uyiyuiyiyiyyuuyiyuuyuuy $ordersdelivereddata");

  // if (response.statusCode == 200) {
  //   await response.stream.bytesToString().then((value) {
  //     print(value);
  //   });
  // } else {
  //   await response.stream.bytesToString().then((value) {
  //     print(value);
  //     var jsonResponse = json.decode(response.stream.toString());
  //     print(jsonResponse);
  // var nameError = jsonResponse["errors"]["name"][0];
  //
  // var emailError = jsonResponse["errors"]["email"][0];
  // var usernameError = jsonResponse["errors"]["username"][0];
  // var passwordError = jsonResponse["errors"]["password"][0];

//now can print any print(emailError);
//         });
//       }
//     }catch (e) {
//     print(e);
//     }

  // print(await response.stream.bytesToString());

  // data = await json.decode(await response.stream.bytesToString() ?? "");
  // print(data);
  // print(data["orderStats"]["totalOrders"]);

  // if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     return response.body;
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }

  Future<dynamic> createTiming(BuildContext context) async {
    // try {
    prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    List<String> words = establishmentTiming.split("to ");
    final response = await http.post(
      Uri.parse(
          'http://ec2-34-227-30-202.compute-1.amazonaws.com/api/update/restaurant/timings'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },
      body: jsonEncode(<dynamic, dynamic>{
        "id": userId,
        "timings": [
          {
            "day": "Monday",
            "startTime": setForWeek ? words[0] : startTimeList[0],
            "endTime": setForWeek ? words[1] : endTimeList[0]
          },
          {
            "day": "Tuesday",
            "startTime": setForWeek ? words[0] : startTimeList[1],
            "endTime": setForWeek ? words[1] : endTimeList[1]
          },
          {
            "day": "Wednesday",
            "startTime": setForWeek ? words[0] : startTimeList[2],
            "endTime": setForWeek ? words[1] : endTimeList[2]
          },
          {
            "day": "Thursday",
            "startTime": setForWeek ? words[0] : startTimeList[3],
            "endTime": setForWeek ? words[1] : endTimeList[3]
          },
          {
            "day": "Friday",
            "startTime": setForWeek ? words[0] : startTimeList[4],
            "endTime": setForWeek ? words[1] : endTimeList[4]
          },
          {
            "day": "Saturday",
            "startTime": setForWeek ? words[0] : startTimeList[5],
            "endTime": setForWeek ? words[1] : endTimeList[5]
          },
          {
            "day": "Sunday",
            "startTime": setForWeek ? words[0] : startTimeList[6],
            "endTime": setForWeek ? words[1] : endTimeList[6]
          }
        ]
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    // } catch (e) {
    //   print("exceptione amit $e");
    // }
  }

  onTapTxtLanguageOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.popupScreen);
  }

  // onTapSavenext(BuildContext context) async {
  //
  //   // Navigator.pushNamed(context, AppRoutes.establishmentLocationDetailsScreen);
  // }

  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }
}

// class ImageFromGalleryEx extends StatefulWidget {
//   final type;
//   ImageFromGalleryEx(this.type);
//
//   @override
//   ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
// }
//
// class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
//
//   ImageFromGalleryExState(this.type);
//
//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//     imagePicker = new ImagePicker();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(type == ImageSourceType.camera
//               ? "Image from Camera"
//               : "Image from Gallery")),
//       body: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 52,
//           ),
//           Center(
//             child: GestureDetector(
//               onTap: () async {
//                 var source = type == ImageSourceType.camera
//                     ? ImageSource.camera
//                     : ImageSource.gallery;
//                 XFile image = await imagePicker.pickImage(
//                     source: source, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
//                 setState(() {
//                   _image = File(image.path);
//                 });
//               },
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(
//                     color: Colors.red[200]),
//                 child: _image != null
//                     ? Image.file(
//                   _image,
//                   width: 200.0,
//                   height: 200.0,
//                   fit: BoxFit.fitHeight,
//                 )
//                     : Container(
//                   decoration: BoxDecoration(
//                       color: Colors.red[200]),
//                   width: 200,
//                   height: 200,
//                   child: Icon(
//                     Icons.camera_alt,
//                     color: Colors.grey[800],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
