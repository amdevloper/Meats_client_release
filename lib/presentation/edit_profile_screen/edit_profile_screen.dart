import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_checkbox.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import '../Establishment_Sign_Up/establishment_details_screen/model/checkbox_model.dart';
import '../edit_profile_screen/widgets/gridtext_ten_item_widget.dart';
import '../edit_profile_screen/widgets/listtext_three_item_widget.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');
  TextEditingController phoneNumberController = TextEditingController();

  int _selectedIndex = 0;

  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  final SliverGridDelegate delegate =
  const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, childAspectRatio: 4);


  List<String> dropdownItemList1 = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  TextEditingController emailController = TextEditingController();
  TextEditingController milesTextOneController = TextEditingController();


  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<CheckBoxModel> _checkBoxList = <CheckBoxModel>[];


  @override
  void initState() {
    // TODO: implement initState
    _checkBoxList.addAll({
      CheckBoxModel(id: 1, name: "Alcohol", selected: false),
      CheckBoxModel(id: 2, name: "Restaurants", selected: false),
      CheckBoxModel(id: 7, name: "Grocery", selected: false),
      CheckBoxModel(id: 9, name: "Pharmacy", selected: false),
    });
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
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 18, top: 8, right: 242),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft26(context)),
                                AppbarSubtitle1(
                                    text: "Edit Profile",
                                    margin:
                                        getMargin(left: 14, top: 1, bottom: 3))
                              ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 14),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)))
                        ])),
                styleType: Style.bgFillWhiteA700_1),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1806.00),
                        width: size.width,
                        margin: getMargin(top: 40),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: getPadding(right: 90),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse7125x125,
                                                      height: getSize(125.00),
                                                      width: getSize(125.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  62.00))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCameraGray900,
                                                      height: getSize(32.00),
                                                      width: getSize(32.00),
                                                      margin: getMargin(
                                                          left: 3, top: 93))
                                                ]))),
                                    CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller: controlsTextController,
                                        hintText: "La Pino’s Pizza",
                                        margin: getMargin(top: 40),
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoMedium16Gray900),
                                    CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller: controlsTextOneController,
                                        hintText: "Establishment Owner Name",
                                        margin: getMargin(top: 20),
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoMedium16Gray900),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7,right:20),
                                      child: Container(
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
                                    ),

                                    // Container(
                                    //     margin: getMargin(
                                    //         left: 20, top: 20, right: 19),
                                    //     padding: getPadding(
                                    //         left: 6,
                                    //         top: 7,
                                    //         right: 6,
                                    //         bottom: 7),
                                    //     decoration: AppDecoration.outlineGray300
                                    //         .copyWith(
                                    //             borderRadius: BorderRadiusStyle
                                    //                 .roundedBorder8),
                                    //     child: Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.end,
                                    //         crossAxisAlignment:
                                    //             CrossAxisAlignment.start,
                                    //         children: [
                                    //           Padding(
                                    //               padding: getPadding(
                                    //                   left: 9,
                                    //                   top: 7,
                                    //                   bottom: 8),
                                    //               child: Text("10",
                                    //                   overflow:
                                    //                       TextOverflow.ellipsis,
                                    //                   textAlign: TextAlign.left,
                                    //                   style: AppStyle
                                    //                       .txtRobotoMedium16Gray900)),
                                    //           Spacer(),
                                    //           Container(
                                    //               height:
                                    //                   getVerticalSize(35.00),
                                    //               width:
                                    //                   getHorizontalSize(1.00),
                                    //               decoration: BoxDecoration(
                                    //                   color: ColorConstant
                                    //                       .gray300)),
                                    //           Padding(
                                    //               padding: getPadding(
                                    //                   left: 13,
                                    //                   top: 7,
                                    //                   bottom: 9),
                                    //               child: Text("Miles",
                                    //                   overflow:
                                    //                       TextOverflow.ellipsis,
                                    //                   textAlign: TextAlign.left,
                                    //                   style: AppStyle
                                    //                       .txtRobotoRegular16Gray900))
                                    //         ])),
                                    CustomDropDown(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 12),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlack900)),
                                        hintText: " Establishment ",
                                        margin: getMargin(top: 21),
                                        fontStyle:
                                            DropDownFontStyle.RobotoMedium16,
                                        items: dropdownItemList,
                                        onChanged: (value) {}),
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 17, right: 23),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "Select cuisines type",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16Gray900),
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
                                              //     padding:
                                              //         getPadding(bottom: 1),
                                              //     child: Text("+ Add ",
                                              //         overflow:
                                              //             TextOverflow.ellipsis,
                                              //         textAlign: TextAlign.left,
                                              //         style: AppStyle
                                              //             .txtRobotoMedium16Gray90001))
                                            ])),
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
                                    //                   left: 6,
                                    //                   top: 2,
                                    //                   bottom: 2),
                                    //               child: Text("Italian",
                                    //                   overflow:
                                    //                       TextOverflow.ellipsis,
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
                                    //             separatorBuilder:
                                    //                 (context, index) {
                                    //               return SizedBox(
                                    //                   height: getVerticalSize(
                                    //                       15.00));
                                    //             },
                                    //             itemCount: 2,
                                    //             itemBuilder: (context, index) {
                                    //               return ListtextThreeItemWidget();
                                    //             }))),
                                    // Align(
                                    //     alignment: Alignment.centerLeft,
                                    //     child: Padding(
                                    //         padding:
                                    //             getPadding(left: 20, top: 15),
                                    //         child: Row(children: [
                                    //           CustomIconButton(
                                    //               height: 24,
                                    //               width: 24,
                                    //               child: CustomImageView(
                                    //                   svgPath: ImageConstant
                                    //                       .imgCheckmarkWhiteA700)),
                                    //           Container(
                                    //               height:
                                    //                   getVerticalSize(24.00),
                                    //               width:
                                    //                   getHorizontalSize(283.00),
                                    //               margin: getMargin(left: 6),
                                    //               child: Stack(
                                    //                   alignment:
                                    //                       Alignment.centerRight,
                                    //                   children: [
                                    //                     Align(
                                    //                         alignment: Alignment
                                    //                             .centerLeft,
                                    //                         child:
                                    //                             CustomCheckbox(
                                    //                                 alignment:
                                    //                                     Alignment
                                    //                                         .centerLeft,
                                    //                                 text:
                                    //                                     "Pizza",
                                    //                                 iconSize:
                                    //                                     24,
                                    //                                 value:
                                    //                                     checkbox1,
                                    //                                 onChange:
                                    //                                     (value) {
                                    //                                   checkbox1 =
                                    //                                       value;
                                    //                                 })),
                                    //                     Align(
                                    //                         alignment: Alignment
                                    //                             .centerRight,
                                    //                         child:
                                    //                             CustomCheckbox(
                                    //                                 alignment:
                                    //                                     Alignment
                                    //                                         .centerRight,
                                    //                                 text:
                                    //                                     "Gujarati Food",
                                    //                                 iconSize:
                                    //                                     24,
                                    //                                 value:
                                    //                                     checkbox2,
                                    //                                 onChange:
                                    //                                     (value) {
                                    //                                   checkbox2 =
                                    //                                       value;
                                    //                                 }))
                                    //                   ]))
                                    //         ]))),
                                    // Container(
                                    //     margin: getMargin(
                                    //         left: 20, top: 30, right: 19),
                                    //     padding: getPadding(
                                    //         left: 16,
                                    //         top: 14,
                                    //         right: 16,
                                    //         bottom: 14),
                                    //     decoration: AppDecoration.outlineGray300
                                    //         .copyWith(
                                    //             borderRadius: BorderRadiusStyle
                                    //                 .roundedBorder8),
                                    //     child: Row(
                                    //         crossAxisAlignment:
                                    //             CrossAxisAlignment.start,
                                    //         children: [
                                    //           Container(
                                    //               margin: getMargin(
                                    //                   top: 2, bottom: 2),
                                    //               decoration: AppDecoration
                                    //                   .fillWhiteA700
                                    //                   .copyWith(
                                    //                       borderRadius:
                                    //                           BorderRadiusStyle
                                    //                               .roundedBorder8),
                                    //               child: Column(
                                    //                   mainAxisSize:
                                    //                       MainAxisSize.min,
                                    //                   mainAxisAlignment:
                                    //                       MainAxisAlignment
                                    //                           .start,
                                    //                   children: [
                                    //                     Container(
                                    //                         height:
                                    //                             getVerticalSize(
                                    //                                 8.00),
                                    //                         width:
                                    //                             getHorizontalSize(
                                    //                                 20.00),
                                    //                         margin: getMargin(
                                    //                             bottom: 8),
                                    //                         decoration: BoxDecoration(
                                    //                             color: ColorConstant
                                    //                                 .redA200,
                                    //                             borderRadius: BorderRadius.only(
                                    //                                 topLeft: Radius.circular(
                                    //                                     getHorizontalSize(
                                    //                                         2.00)),
                                    //                                 topRight: Radius
                                    //                                     .circular(
                                    //                                         getHorizontalSize(2.00)))))
                                    //                   ])),
                                    //           CustomDropDown(
                                    //               width: 39,
                                    //               focusNode: FocusNode(),
                                    //               icon: Container(
                                    //                   margin:
                                    //                       getMargin(left: 7),
                                    //                   child: CustomImageView(
                                    //                       svgPath: ImageConstant
                                    //                           .imgArrowdownBlack900)),
                                    //               hintText: "+1",
                                    //               margin: getMargin(
                                    //                   left: 4, bottom: 2),
                                    //               variant: DropDownVariant.None,
                                    //               fontStyle: DropDownFontStyle
                                    //                   .RobotoRegular16Black900,
                                    //               items: dropdownItemList1,
                                    //               onChanged: (value) {}),
                                    //           Padding(
                                    //               padding: getPadding(
                                    //                   left: 16,
                                    //                   right: 124,
                                    //                   bottom: 2),
                                    //               child: Text("123 456 7895",
                                    //                   overflow:
                                    //                       TextOverflow.ellipsis,
                                    //                   textAlign: TextAlign.left,
                                    //                   style: AppStyle
                                    //                       .txtRobotoMedium16Gray900))
                                    //         ])),
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

                                    CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller: emailController,
                                        hintText: "lapinos@gmail.com",
                                        margin: getMargin(top: 20),
                                        padding:
                                            TextFormFieldPadding.PaddingAll17,
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoMedium16Gray900,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.emailAddress),
                                    Container(
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(
                                            left: 20, top: 20, right: 19),
                                        padding: getPadding(all: 16),
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(335.00),
                                                  // margin:
                                                  //     getMargin(bottom: 324),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "Popular Dishes\n",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text: "",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        TextSpan(
                                                            text:
                                                                "Tandoori Paneer Pizza, Stuffed Garlic Bread, White Sauce Pasta, Pizzas, Pasta\r\n\r\n",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .blueGray300,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        TextSpan(
                                                            text:
                                                                "People Say This Place Is Known For",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text:
                                                                "\r\n\nEconomical, Nice Crowd, Prompt Service, Portion, Concept, Location\r\n\r\n",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .blueGray300,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        TextSpan(
                                                            text:
                                                                "Average Cost\r\n\n",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text:
                                                                "\$20.00 for two people (approx.)\r\n\r\nExclusive of applicable taxes and charges, if any\r\n\r\nHow do we calculate cost for two?\r\n\r\nCash and Cards accepted Digital payments accepted",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .blueGray300,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(
                                            left: 20, top: 20, right: 19),
                                        padding: getPadding(
                                            left: 20,
                                            top: 19,
                                            right: 20,
                                            bottom: 19),
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(254.00),
                                                  margin: getMargin(bottom: 16),
                                                  child: Text(
                                                      "Athlete\r\nManluk/Rock River/Merge/Yamaha\r\nMillville, Minnesota",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray900))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(374.00),
                                        margin: getMargin(top: 20),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 20, top: 19),
                                            child: Text("Gallery",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14))),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  padding: getPadding(
                                                      left: 23,
                                                      top: 11,
                                                      right: 23,
                                                      bottom: 11),
                                                  decoration: AppDecoration
                                                      .fillGray300
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCameraBlueGray300,
                                                            height:
                                                                getSize(32.00),
                                                            width:
                                                                getSize(32.00),
                                                            margin: getMargin(
                                                                top: 11)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    63.00),
                                                            margin: getMargin(
                                                                top: 11),
                                                            child: Text(
                                                                "+ Add More\nImages",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12))
                                                      ])),
                                              Container(
                                                  height:
                                                      getVerticalSize(109.00),
                                                  width:
                                                      getHorizontalSize(108.00),
                                                  margin: getMargin(left: 4),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse7,
                                                            height:
                                                                getVerticalSize(
                                                                    109.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    108.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        16.00)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        108.00),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            81),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 2,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            2),
                                                                decoration: AppDecoration
                                                                    .fillGray90090
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL16),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  3),
                                                                          child: Text(
                                                                              "Edit",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtRobotoRegular14WhiteA700)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowrightWhiteA700,
                                                                          height: getSize(
                                                                              12.00),
                                                                          width: getSize(
                                                                              12.00),
                                                                          margin: getMargin(
                                                                              top: 3,
                                                                              bottom: 6))
                                                                    ])))
                                                      ])),
                                              Container(
                                                  height: getSize(109.00),
                                                  width: getSize(109.00),
                                                  margin: getMargin(left: 5),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImageplaceholder109x109,
                                                            height:
                                                                getSize(109.00),
                                                            width:
                                                                getSize(109.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        16.00)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        108.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 81,
                                                                        right:
                                                                            1),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 2,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            2),
                                                                decoration: AppDecoration
                                                                    .fillGray90090
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL16),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  3),
                                                                          child: Text(
                                                                              "Edit",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtRobotoRegular14WhiteA700)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowrightWhiteA700,
                                                                          height: getSize(
                                                                              12.00),
                                                                          width: getSize(
                                                                              12.00),
                                                                          margin: getMargin(
                                                                              top: 3,
                                                                              bottom: 6))
                                                                    ])))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 10, right: 19),
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
                                                        getHorizontalSize(
                                                            4.00)),
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: 6,
                                            itemBuilder: (context, index) {
                                              return GridtextTenItemWidget();
                                            })),
                                    CustomButton(
                                        height: 48,
                                        width: 335,
                                        text: "Update Details",
                                        margin: getMargin(top: 30),
                                        padding: ButtonPadding.PaddingAll16)
                                  ])),
                          // Align(
                          //     alignment: Alignment.topCenter,
                          //     child: Container(
                          //         width: size.width,
                          //         margin: getMargin(top: 657),
                          //         padding: getPadding(
                          //             left: 163, top: 8, right: 163, bottom: 8),
                          //         decoration: AppDecoration.fillWhiteA700,
                          //         child: Column(
                          //             mainAxisSize: MainAxisSize.min,
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.center,
                          //             children: [
                          //               CustomImageView(
                          //                   svgPath: ImageConstant.imgRectangle,
                          //                   height: getVerticalSize(5.00),
                          //                   width: getHorizontalSize(48.00),
                          //                   radius: BorderRadius.circular(
                          //                       getHorizontalSize(2.00)),
                          //                   margin: getMargin(bottom: 3))
                          //             ])))
                        ]))))));
  }

  onTapArrowleft26(BuildContext context) {
    Navigator.pop(context);
  }
}
