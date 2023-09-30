import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';


import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../routes/app_routes.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/app_bar/appbar_image.dart';
import '../../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_checkbox.dart';
import '../../../../widgets/custom_icon_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_phone_number.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../../wallet_setup_screen/widgets/expandablelistvolume_item_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable


class MoreInformationsScreen extends StatefulWidget {
  const MoreInformationsScreen({Key? key}) : super(key: key);

  @override
  State<MoreInformationsScreen> createState() => _MoreInformationsScreenState();
}

class _MoreInformationsScreenState extends State<MoreInformationsScreen> {

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];
  List<String> deliveryItemList = ["Personal Details", "Agent Address", "Vehicle Details","PAN Card","Driving License","Emergency Contact","Payment Setup"];

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController controlsTextTwoController = TextEditingController();
  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();
  TextEditingController controlsTextThreeController = TextEditingController();
  TextEditingController nameoncardController = TextEditingController();
  TextEditingController cardnumberController = TextEditingController();
  TextEditingController expirydateController = TextEditingController();
  bool checkbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int selected = 0; //attention


  List<Widget> _getChildren(int count, String name) => List<Widget>.generate(
    count,
        (i) => ListTile(title: Text('$name$i')),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(48.00),
          leadingWidth: 42,
          leading: AppbarImage(
              height: getSize(24.00),
              width: getSize(24.00),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 18, top: 12, bottom: 12),
              onTap: () => onTapArrowleft14(context)),
          centerTitle: true,
          title: AppbarSubtitle(text: "More Information"),
          styleType: Style.bgFillWhiteA700),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            ListView.builder(
              key: Key('builder ${selected.toString()}'),
              //attention
              padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: deliveryItemList.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  //   if(index != 0)...[
                  // Divider(
                  //   height: 17.0,
                  //   color: Colors.grey,
                  // ),],
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      key: Key(index.toString()),
                      //attention
                      initiallyExpanded: index == selected,
                      //attention
                      shape: const Border(),
                      title: Text(deliveryItemList[index],
                          style: const TextStyle(
                              color: Color(0xFF09216B),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold)),
                      children: <Widget>[
                        if(index == 0)...[
                          Container(
                width: size.width,
                margin: getMargin(top: 10, bottom: 10),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Container(
                margin:
                getMargin(left: 20, top: 0, right: 20),
                padding: getPadding(
                left: 15, top: 11, right: 15, bottom: 11),
                decoration: AppDecoration.outlineGray300
                      .copyWith(
                borderRadius:
                BorderRadiusStyle.roundedBorder62),
                child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                Padding(
                padding: getPadding(
                left: 1, top: 2, bottom: 4),
                child: Text("Date of Birth",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle
                      .txtRobotoBold16Bluegray300)),
                Icon(Icons.date_range,)
                ])),
                Container(
                // margin:
                //     getMargin(left: 20, top: 20, right: 20),
                padding: getPadding(
                left: 16, top: 14, right: 16, bottom: 14),
                // decoration: AppDecoration.outlineGray300
                //     .copyWith(
                //         borderRadius:
                //             BorderRadiusStyle.roundedBorder8),
                child: CustomPhoneNumber(
                country: selectedCountry,
                controller: phoneNumberController,
                onTap: (Country country) {
                selectedCountry = country;
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
                height: 48,
                width: 335,
                text: "Save & Next",
                margin: getMargin(top: 20),
                onTap: () => onTapSavenext(context)),
                SizedBox(height: 20,),                    // Container(
                //     height: getVerticalSize(1.00),
                //     width: size.width,
                //     margin: getMargin(top: 30),
                //     decoration: BoxDecoration(
                //         color: ColorConstant.gray300)),

                ]),
                )],
                        if(index == 1)...[Container(
                              width: size.width,
                              margin: getMargin(top: 10, bottom: 10),
                              child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller: controlsTextController,
                                        hintText: "Address",
                                        margin: getMargin(top: 10)),
                                    CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller:
                                        controlsTextOneController,
                                        hintText: "Postcode",
                                        margin: getMargin(top: 20)),
                                    CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller:
                                        controlsTextTwoController,
                                        hintText: "City",
                                        margin: getMargin(top: 20),
                                        textInputAction:
                                        TextInputAction.done),
                                    CustomButton(
                                        height: 48,
                                        width: 335,
                                        text: "Save & Next",
                                        margin: getMargin(top: 20),
                                        onTap: () => onTapSavenext(context))
                                  ]))],
                        if(index == 2)...[
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Vehicle Number",
                              margin: getMargin(top: 21),
                              textInputType: TextInputType.number),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "Vehicle Make",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextTwoController,
                              hintText: "Insurance Number",
                              margin: getMargin(top: 20),
                              textInputType: TextInputType.number),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 18),
                                  child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 24,
                                            width: 24,
                                            margin: getMargin(bottom: 27),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmarkWhiteA700)),
                                        Container(
                                            width:
                                            getHorizontalSize(263.00),
                                            margin:
                                            getMargin(left: 9, top: 3),
                                            child: Text(
                                                "I warrant that this is a valid and effective motor\nvehicle insurance policy number of the above\nmentioned vehicle.",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12))
                                      ]))),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextThreeController,
                              hintText: "Upload Registration Certificate",
                              margin: getMargin(top: 18),
                              padding: TextFormFieldPadding.PaddingAll14,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16,
                                      top: 15,
                                      right: 9,
                                      bottom: 17),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgCameraBlueGray300)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50.00))),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Save & Next",
                              margin: getMargin(top: 20),
                              onTap: () => onTapSavenext(context)),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 20),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray300)),
                        ],
                        if(index == 3)...[
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "PAN Number",
                              margin: getMargin(top: 21),
                              textInputType: TextInputType.number),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "Full Name",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextTwoController,
                              hintText: "Upload Copy of PAN card",
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingT13,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 15, right: 9, bottom: 17),
                                  child: CustomImageView(
                                      svgPath:
                                      ImageConstant.imgCameraBlueGray300)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50.00))),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Save & Next",
                              margin: getMargin(top: 20),
                              onTap: () => onTapSavenext(context)),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 20),
                              decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                        ],
                        if(index == 4)...[
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "DL Number",
                              margin: getMargin(top: 19),
                              textInputType: TextInputType.number),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "DL Expiry Date",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextTwoController,
                              hintText: "Upload Copy of Driving License",
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingT13,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 15, right: 9, bottom: 17),
                                  child: CustomImageView(
                                      svgPath:
                                      ImageConstant.imgCameraBlueGray300)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50.00))),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Save & Next",
                              margin: getMargin(top: 20),
                              onTap: () => onTapSavenext(context)),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 20),
                              decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                        ],
                        if(index == 5)...[
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Name",
                              margin: getMargin(top: 19),
                              textInputAction: TextInputAction.done),
                          Container(
                            // margin:
                            //     getMargin(left: 20, top: 20, right: 20),
                            padding: getPadding(
                                left: 16, top: 14, right: 16, bottom: 14),
                            // decoration: AppDecoration.outlineGray300
                            //     .copyWith(
                            //         borderRadius:
                            //             BorderRadiusStyle.roundedBorder8),
                            child: CustomPhoneNumber(
                              country: selectedCountry,
                              controller: phoneNumberController,
                              onTap: (Country country) {
                                selectedCountry = country;
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
                              height: 48,
                              width: 335,
                              text: "Save & Next",
                              margin: getMargin(top: 20, bottom: 5),
                              onTap: () => onTapSavenext(context))
                        ],
                        if(index == 6)...[
                          Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Divider(
                                  //   height: getVerticalSize(
                                  //     1,
                                  //   ),
                                  //   thickness: getVerticalSize(
                                  //     1,
                                  //   ),
                                  //   color: ColorConstant.gray300,
                                  // ),
                                  Padding(
                                    padding: getPadding(
                                      left: 20,
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Cards",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold18,
                                    ),
                                  ),
                                  Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.gray300,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          onTapSavenext(context);
                                        },
                                        child: Container(
                                          width: double.maxFinite,
                                          margin: getMargin(
                                            top: 21,
                                          ),
                                          padding: getPadding(
                                            left: 20,
                                            top: 12,
                                            right: 20,
                                            bottom: 12,
                                          ),
                                          decoration: AppDecoration.fillWhiteA700,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant.imgSave,
                                                height: getSize(
                                                  30,
                                                ),
                                                width: getSize(
                                                  30,
                                                ),
                                                margin: getMargin(
                                                  bottom: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 10,
                                                  top: 5,
                                                  bottom: 7,
                                                ),
                                                child: Text(
                                                  "Credit & Debit Card",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtRobotoRegular16Black900,
                                                ),
                                              ),
                                            ],
                                          ),
                                              // Spacer(),
                                              // CustomImageView(
                                              //   svgPath: ImageConstant.imgArrowrightBlueGray30012x6,
                                              //   height: getVerticalSize(
                                              //     12,
                                              //   ),
                                              //   width: getHorizontalSize(
                                              //     6,
                                              //   ),
                                              //   margin: getMargin(
                                              //     top: 10,
                                              //     bottom: 10,
                                              //   ),
                                              // ),


                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.gray300,
                                  ),
                                  CustomButton(
                                      width: 300,
                                      height:
                                      getVerticalSize(48),
                                      text: "Pay Now",
                                      margin: getMargin(
                                          left: 20,
                                          top: 26,
                                          right: 20),
                                      variant: ButtonVariant
                                          .OutlineGray9004f,
                                      shape: ButtonShape
                                          .CircleBorder24,
                                      padding: ButtonPadding.PaddingAll5,
                                      fontStyle: ButtonFontStyle
                                          .RobotoBold16,
                                      onTap: () async {
                                        // Obtain shared preferences.
                                        final SharedPreferences prefs = await SharedPreferences.getInstance();

                                        // Stripe.publishableKey = "pk_test_51MpXYISAlfF2QhmqSyuMrYp5YjBtNQ8k3w2bInaIM5yAizV6qnwn0zEY9vpvzgSXUBTOqYuEfN8brTTTIMFD4mR100OUMZL6Mp";
                                        // Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';
                                        // Stripe.urlScheme = 'flutterstripe';
                                        // await Stripe.instance.applySettings();






                                      }
                                    // onTapAddcard(
                                    // context)
                                  )

                                ],
                              ),
                        ],
                      ],
                      onExpansionChanged: ((newState) {
                        if (newState)
                          setState(() {
                            Duration(seconds: 20000);
                            selected = index;
                          });
                        else
                          setState(() {
                            selected = -1;
                          });
                      }),
                    ),
                  ),
                ]);
              },
            )
          ]),
        ),
      ),




    //   body: ListView(
    //     children: [
    //       ExpansionTile(
    //         initiallyExpanded : true,
    //         title: Padding(
    //   padding: getPadding(left: 20, right: 20),
    //     child: Text("Personal Details",
    //         overflow: TextOverflow.ellipsis,
    //         textAlign: TextAlign.left,
    //         style: AppStyle.txtRobotoBold16)),
    //         children: <Widget> [
    //           Container(
    //             width: size.width,
    //             margin: getMargin(top: 10, bottom: 10),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                 Container(
    //                     margin:
    //                     getMargin(left: 20, top: 0, right: 20),
    //                     padding: getPadding(
    //                         left: 15, top: 11, right: 15, bottom: 11),
    //                     decoration: AppDecoration.outlineGray300
    //                         .copyWith(
    //                         borderRadius:
    //                         BorderRadiusStyle.roundedBorder8),
    //                     child: Row(
    //                         mainAxisAlignment:
    //                         MainAxisAlignment.spaceBetween,
    //                         crossAxisAlignment:
    //                         CrossAxisAlignment.start,
    //                         children: [
    //                           Padding(
    //                               padding: getPadding(
    //                                   left: 1, top: 2, bottom: 4),
    //                               child: Text("Date of Birth",
    //                                   overflow: TextOverflow.ellipsis,
    //                                   textAlign: TextAlign.left,
    //                                   style: AppStyle
    //                                       .txtRobotoBold16Bluegray300)),
    //                           Icon(Icons.date_range,)
    //                         ])),
    //                 Container(
    //                   // margin:
    //                   //     getMargin(left: 20, top: 20, right: 20),
    //                   padding: getPadding(
    //                       left: 16, top: 14, right: 16, bottom: 14),
    //                   // decoration: AppDecoration.outlineGray300
    //                   //     .copyWith(
    //                   //         borderRadius:
    //                   //             BorderRadiusStyle.roundedBorder8),
    //                   child: CustomPhoneNumber(
    //                     country: selectedCountry,
    //                     controller: phoneNumberController,
    //                     onTap: (Country country) {
    //                       selectedCountry = country;
    //                     },
    //                   ),
    //                   // child: Row(
    //                   //     crossAxisAlignment:
    //                   //         CrossAxisAlignment.start,
    //                   //     children: [
    //                   //       CustomImageView(
    //                   //           svgPath:
    //                   //               ImageConstant.imgUnitedstatesof,
    //                   //           height: getVerticalSize(15.00),
    //                   //           width: getHorizontalSize(20.00),
    //                   //           margin:
    //                   //               getMargin(top: 2, bottom: 3)),
    //                   //       CustomDropDown(
    //                   //           width: 39,
    //                   //           focusNode: FocusNode(),
    //                   //           icon: Container(
    //                   //               margin: getMargin(left: 7),
    //                   //               child: CustomImageView(
    //                   //                   svgPath: ImageConstant
    //                   //                       .imgArrowdownBlack900)),
    //                   //           hintText: "+1",
    //                   //           margin:
    //                   //               getMargin(left: 4, bottom: 1),
    //                   //           variant: DropDownVariant.None,
    //                   //           items: dropdownItemList,
    //                   //           onChanged: (value) {}),
    //                   //       Padding(
    //                   //           padding: getPadding(
    //                   //               left: 16,
    //                   //               right: 114,
    //                   //               bottom: 1),
    //                   //           child: Text("Mobile Number",
    //                   //               overflow: TextOverflow.ellipsis,
    //                   //               textAlign: TextAlign.left,
    //                   //               style: AppStyle
    //                   //                   .txtRobotoBold16Bluegray300))
    //                   //     ])
    //                 ),
    //                 CustomButton(
    //                     height: 48,
    //                     width: 335,
    //                     text: "Save & Next",
    //                     margin: getMargin(top: 20),
    //                     onTap: () => onTapSavenext(context)),
    //                 SizedBox(height: 20,),                    // Container(
    //                 //     height: getVerticalSize(1.00),
    //                 //     width: size.width,
    //                 //     margin: getMargin(top: 30),
    //                 //     decoration: BoxDecoration(
    //                 //         color: ColorConstant.gray300)),
    //
    //               ]),
    //           )],
    //         ),
    //       ExpansionTile(
    //         title: Padding(
    // padding:
    // getPadding(left: 20, top: 10, right: 20),
    // child: Text("Agent Address",
    // overflow: TextOverflow.ellipsis,
    // textAlign: TextAlign.left,
    // style: AppStyle
    //     .txtRobotoRegular16Black900)),
    //         children: [
    //           Container(
    //               width: size.width,
    //               margin: getMargin(top: 10, bottom: 10),
    //               child: Column(
    //                   mainAxisAlignment:
    //                   MainAxisAlignment.start,
    //                   children: [
    //                     CustomTextFormField(
    //                         width: 335,
    //                         focusNode: FocusNode(),
    //                         controller: controlsTextController,
    //                         hintText: "Address",
    //                         margin: getMargin(top: 10)),
    //                     CustomTextFormField(
    //                         width: 335,
    //                         focusNode: FocusNode(),
    //                         controller:
    //                         controlsTextOneController,
    //                         hintText: "Postcode",
    //                         margin: getMargin(top: 20)),
    //                     CustomTextFormField(
    //                         width: 335,
    //                         focusNode: FocusNode(),
    //                         controller:
    //                         controlsTextTwoController,
    //                         hintText: "City",
    //                         margin: getMargin(top: 20),
    //                         textInputAction:
    //                         TextInputAction.done),
    //                     CustomButton(
    //                         height: 48,
    //                         width: 335,
    //                         text: "Save & Next",
    //                         margin: getMargin(top: 20),
    //                         onTap: () => onTapSavenext(context))
    //                   ])),
    //         ],
    //       ),
    //       ExpansionTile(
    //         title: Padding(
    //             padding:
    //             getPadding(left: 20, top: 14, right: 20),
    //             child: Text("Vehicle Details",
    //                 overflow: TextOverflow.ellipsis,
    //                 textAlign: TextAlign.left,
    //                 style: AppStyle
    //                     .txtRobotoRegular16Black900)),
    //         children: [
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextController,
    //               hintText: "Vehicle Number",
    //               margin: getMargin(top: 21),
    //               textInputType: TextInputType.number),
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextOneController,
    //               hintText: "Vehicle Make",
    //               margin: getMargin(top: 20)),
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextTwoController,
    //               hintText: "Insurance Number",
    //               margin: getMargin(top: 20),
    //               textInputType: TextInputType.number),
    //           Align(
    //               alignment: Alignment.centerLeft,
    //               child: Padding(
    //                   padding: getPadding(left: 20, top: 18),
    //                   child: Row(
    //                       crossAxisAlignment:
    //                       CrossAxisAlignment.start,
    //                       children: [
    //                         CustomIconButton(
    //                             height: 24,
    //                             width: 24,
    //                             margin: getMargin(bottom: 27),
    //                             child: CustomImageView(
    //                                 svgPath: ImageConstant
    //                                     .imgCheckmarkWhiteA700)),
    //                         Container(
    //                             width:
    //                             getHorizontalSize(263.00),
    //                             margin:
    //                             getMargin(left: 9, top: 3),
    //                             child: Text(
    //                                 "I warrant that this is a valid and effective motor\nvehicle insurance policy number of the above\nmentioned vehicle.",
    //                                 maxLines: null,
    //                                 textAlign: TextAlign.left,
    //                                 style: AppStyle
    //                                     .txtRobotoRegular12))
    //                       ]))),
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextThreeController,
    //               hintText: "Upload Registration Certificate",
    //               margin: getMargin(top: 18),
    //               padding: TextFormFieldPadding.PaddingAll14,
    //               textInputAction: TextInputAction.done,
    //               prefix: Container(
    //                   margin: getMargin(
    //                       left: 16,
    //                       top: 15,
    //                       right: 9,
    //                       bottom: 17),
    //                   child: CustomImageView(
    //                       svgPath: ImageConstant
    //                           .imgCameraBlueGray300)),
    //               prefixConstraints: BoxConstraints(
    //                   maxHeight: getVerticalSize(50.00))),
    //           CustomButton(
    //               height: 48,
    //               width: 335,
    //               text: "Save & Next",
    //               margin: getMargin(top: 20),
    //               onTap: () => onTapSavenext(context)),
    //           Container(
    //               height: getVerticalSize(1.00),
    //               width: size.width,
    //               margin: getMargin(top: 20),
    //               decoration: BoxDecoration(
    //                   color: ColorConstant.gray300)),
    //         ],
    //       ),
    //       ExpansionTile(
    //         title: Padding(
    //             padding:
    //             getPadding(left: 20, top: 14, right: 20),
    //             child: Text("PAN Card",
    //                 overflow: TextOverflow.ellipsis,
    //                 textAlign: TextAlign.left,
    //                 style: AppStyle
    //                     .txtRobotoRegular16Black900)),
    //         children: [
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextController,
    //               hintText: "PAN Number",
    //               margin: getMargin(top: 21),
    //               textInputType: TextInputType.number),
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextOneController,
    //               hintText: "Full Name",
    //               margin: getMargin(top: 20)),
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextTwoController,
    //               hintText: "Upload Copy of PAN card",
    //               margin: getMargin(top: 20),
    //               padding: TextFormFieldPadding.PaddingT13,
    //               textInputAction: TextInputAction.done,
    //               prefix: Container(
    //                   margin: getMargin(
    //                       left: 16, top: 15, right: 9, bottom: 17),
    //                   child: CustomImageView(
    //                       svgPath:
    //                       ImageConstant.imgCameraBlueGray300)),
    //               prefixConstraints: BoxConstraints(
    //                   maxHeight: getVerticalSize(50.00))),
    //           CustomButton(
    //               height: 48,
    //               width: 335,
    //               text: "Save & Next",
    //               margin: getMargin(top: 20),
    //               onTap: () => onTapSavenext(context)),
    //           Container(
    //               height: getVerticalSize(1.00),
    //               width: size.width,
    //               margin: getMargin(top: 20),
    //               decoration:
    //               BoxDecoration(color: ColorConstant.gray300)),
    //         ],
    //       ),
    //       ExpansionTile(
    //         title: Padding(
    //             padding:
    //             getPadding(left: 20, top: 14, right: 20),
    //             child: Text("Driving License",
    //                 overflow: TextOverflow.ellipsis,
    //                 textAlign: TextAlign.left,
    //                 style: AppStyle
    //                     .txtRobotoRegular16Black900)),
    //         children: [
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextController,
    //               hintText: "DL Number",
    //               margin: getMargin(top: 19),
    //               textInputType: TextInputType.number),
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextOneController,
    //               hintText: "DL Expiry Date",
    //               margin: getMargin(top: 20)),
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextTwoController,
    //               hintText: "Upload Copy of Driving License",
    //               margin: getMargin(top: 20),
    //               padding: TextFormFieldPadding.PaddingT13,
    //               textInputAction: TextInputAction.done,
    //               prefix: Container(
    //                   margin: getMargin(
    //                       left: 16, top: 15, right: 9, bottom: 17),
    //                   child: CustomImageView(
    //                       svgPath:
    //                       ImageConstant.imgCameraBlueGray300)),
    //               prefixConstraints: BoxConstraints(
    //                   maxHeight: getVerticalSize(50.00))),
    //           CustomButton(
    //               height: 48,
    //               width: 335,
    //               text: "Save & Next",
    //               margin: getMargin(top: 20),
    //               onTap: () => onTapSavenext(context)),
    //           Container(
    //               height: getVerticalSize(1.00),
    //               width: size.width,
    //               margin: getMargin(top: 20),
    //               decoration:
    //               BoxDecoration(color: ColorConstant.gray300)),
    //         ],
    //       ),
    //       ExpansionTile(
    //         title: Padding(
    //             padding:
    //             getPadding(left: 20, top: 14, right: 20),
    //             child: Text("Emergency Contact",
    //                 overflow: TextOverflow.ellipsis,
    //                 textAlign: TextAlign.left,
    //                 style: AppStyle
    //                     .txtRobotoRegular16Black900)),
    //         children: [
    //           CustomTextFormField(
    //               width: 335,
    //               focusNode: FocusNode(),
    //               controller: controlsTextController,
    //               hintText: "Name",
    //               margin: getMargin(top: 19),
    //               textInputAction: TextInputAction.done),
    //           Container(
    //             // margin:
    //             //     getMargin(left: 20, top: 20, right: 20),
    //             padding: getPadding(
    //                 left: 16, top: 14, right: 16, bottom: 14),
    //             // decoration: AppDecoration.outlineGray300
    //             //     .copyWith(
    //             //         borderRadius:
    //             //             BorderRadiusStyle.roundedBorder8),
    //             child: CustomPhoneNumber(
    //               country: selectedCountry,
    //               controller: phoneNumberController,
    //               onTap: (Country country) {
    //                 selectedCountry = country;
    //               },
    //             ),
    //             // child: Row(
    //             //     crossAxisAlignment:
    //             //         CrossAxisAlignment.start,
    //             //     children: [
    //             //       CustomImageView(
    //             //           svgPath:
    //             //               ImageConstant.imgUnitedstatesof,
    //             //           height: getVerticalSize(15.00),
    //             //           width: getHorizontalSize(20.00),
    //             //           margin:
    //             //               getMargin(top: 2, bottom: 3)),
    //             //       CustomDropDown(
    //             //           width: 39,
    //             //           focusNode: FocusNode(),
    //             //           icon: Container(
    //             //               margin: getMargin(left: 7),
    //             //               child: CustomImageView(
    //             //                   svgPath: ImageConstant
    //             //                       .imgArrowdownBlack900)),
    //             //           hintText: "+1",
    //             //           margin:
    //             //               getMargin(left: 4, bottom: 1),
    //             //           variant: DropDownVariant.None,
    //             //           items: dropdownItemList,
    //             //           onChanged: (value) {}),
    //             //       Padding(
    //             //           padding: getPadding(
    //             //               left: 16,
    //             //               right: 114,
    //             //               bottom: 1),
    //             //           child: Text("Mobile Number",
    //             //               overflow: TextOverflow.ellipsis,
    //             //               textAlign: TextAlign.left,
    //             //               style: AppStyle
    //             //                   .txtRobotoBold16Bluegray300))
    //             //     ])
    //           ),
    //           CustomButton(
    //               height: 48,
    //               width: 335,
    //               text: "Save & Next",
    //               margin: getMargin(top: 20, bottom: 5),
    //               onTap: () => onTapSavenext(context))
    //         ],
    //       ),
    //       ExpansionTile(
    //         title: Padding(
    //             padding:
    //             getPadding(left: 20, top: 14, right: 20),
    //             child: Text("Payment Setup",
    //                 overflow: TextOverflow.ellipsis,
    //                 textAlign: TextAlign.left,
    //                 style: AppStyle
    //                     .txtRobotoRegular16Black900)),
    //         children: [],
    //       )
    //     ],
    //   ),
    );
  }

  Future showMessageView() {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
            title: const Text("Logged in successfully"),
            content:Container(
              child: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment:
                                Alignment.centerLeft,
                                child: Container(
                                  // width:
                                  // getHorizontalSize(
                                  //     317),
                                  // margin: getMargin(
                                  //     left: 20,
                                  //     right: 37),
                                    child: Text(
                                        "We accept credit cards from visa, MasterCard, Sodexo, Rupay, American Express, Maestro & Many More",
                                        maxLines: null,
                                        textAlign:
                                        TextAlign
                                            .left,
                                        style: AppStyle
                                            .txtRobotoRegular14Gray900))),
                            CustomTextFormField(
                                width: 300,
                                focusNode: FocusNode(),
                                controller:
                                nameoncardController,
                                hintText: "Name on Card",
                                margin: getMargin(
                                    left: 20,
                                    top: 21,
                                    right: 20)
                            ),
                            CustomTextFormField(
                                width: 300,
                                focusNode: FocusNode(),
                                controller:
                                cardnumberController,
                                hintText: "Card Number",
                                margin: getMargin(
                                    left: 20,
                                    top: 20,
                                    right: 20),
                                textInputType:
                                TextInputType.number),
                            CustomTextFormField(
                                width: 300,
                                focusNode: FocusNode(),
                                controller:
                                expirydateController,
                                hintText: "Expiry Date",
                                margin: getMargin(
                                    left: 20,
                                    top: 20,
                                    right: 20),
                                textInputAction:
                                TextInputAction.done),
                            Align(
                                alignment:
                                Alignment.centerLeft,
                                child: CustomCheckbox(
                                    alignment: Alignment
                                        .centerLeft,
                                    text:
                                    "Save as default card",
                                    value: checkbox,
                                    // margin: getMargin(
                                    //     left: 20,
                                    //     top: 20),
                                    fontStyle:
                                    CheckboxFontStyle.RobotoRegular16,
                                    onChange: (value) {
                                      checkbox = value;
                                    })),
                            ]))),
            ),
            actions: <Widget>[
              CustomButton(
                  width: 300,
                  height:
                  getVerticalSize(48),
                  text: "Add Card",
                  margin: getMargin(
                      left: 20,
                      top: 26,
                      right: 20),
                  variant: ButtonVariant
                      .OutlineGray9004f,
                  shape: ButtonShape
                      .CircleBorder24,
                  padding: ButtonPadding.PaddingAll5,
                  fontStyle: ButtonFontStyle
                      .RobotoBold16,
                  onTap: () async {
                    // Obtain shared preferences.
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setStringList('PaymentItem', <String>[nameoncardController.text.toString(),cardnumberController.text.toString(), expirydateController.text.toString()]);
                  }
                // onTapAddcard(
                // context)
              )
            ],
          );
        });

  }



  onTapSavenext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAddScreen);
  }

  onTapArrowleft14(BuildContext context) {
    Navigator.pop(context);
  }
}
