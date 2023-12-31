import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../widgets/app_bar/appbar_image.dart';
import '../../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

class DrivingLicenseScreen extends StatefulWidget {
  const DrivingLicenseScreen({Key? key}) : super(key: key);

  @override
  State<DrivingLicenseScreen> createState() => _DrivingLicenseScreenState();
}

class _DrivingLicenseScreenState extends State<DrivingLicenseScreen> {
  int selected = 0; //attention


  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

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
                height: getVerticalSize(48.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 12, bottom: 12),
                    onTap: () => onTapArrowleft19(context)),
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
                padding: EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(children: <Widget>[
                    if(index != 0)...[
                      Divider(
                        height: 17.0,
                        color: Colors.grey,
                      ),],
                    ExpansionTile(
                      key: Key(index.toString()),
                      //attention
                      initiallyExpanded: index == selected,
                      //attention
                      shape: Border(),
                      leading: Icon(
                        Icons.person,
                        size: 50.0,
                        color: Colors.black,
                      ),
                      title: Text('ExpansionTile ${index}',
                          style: TextStyle(
                              color: Color(0xFF09216B),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        'Software Engineer',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Text(
                            'DETAİL ${index} \n' + 'Expanded',
                          ),
                        )
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
                  ]);
                },
              )
            ]),
          ),
        ),
      ),
    );








    // Form(
            //     key: _formKey,
            //     child: Container(
            //         width: size.width,
            //         padding: getPadding(top: 18, bottom: 18),
            //         child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               CustomRadioButton(
            //                   text: "Personal Details",
            //                   iconSize: 24,
            //                   value: "msg_personal_details" "",
            //                   groupValue: radioGroup,
            //                   fontStyle: RadioFontStyle.RobotoRegular16,
            //                   onChange: (value) {
            //                     radioGroup = value;
            //                   }),
            //               Container(
            //                   height: getVerticalSize(1.00),
            //                   width: size.width,
            //                   margin: getMargin(top: 18),
            //                   decoration:
            //                       BoxDecoration(color: ColorConstant.gray300)),
            //               Padding(
            //                   padding: getPadding(top: 18),
            //                   child: CustomRadioButton(
            //                       text: "Agent Address",
            //                       iconSize: 24,
            //                       value: "lbl_agent_address" "",
            //                       groupValue: radioGroup1,
            //                       margin: getMargin(top: 18),
            //                       onChange: (value) {
            //                         radioGroup1 = value;
            //                       })),
            //               Container(
            //                   height: getVerticalSize(1.00),
            //                   width: size.width,
            //                   margin: getMargin(top: 18),
            //                   decoration:
            //                       BoxDecoration(color: ColorConstant.gray300)),
            //               Padding(
            //                   padding: getPadding(top: 18),
            //                   child: CustomRadioButton(
            //                       text: "Vehicle Details",
            //                       iconSize: 24,
            //                       value: "lbl_vehicle_details" "",
            //                       groupValue: radioGroup2,
            //                       margin: getMargin(top: 18),
            //                       onChange: (value) {
            //                         radioGroup2 = value;
            //                       })),
            //               Container(
            //                   height: getVerticalSize(1.00),
            //                   width: size.width,
            //                   margin: getMargin(top: 18),
            //                   decoration:
            //                       BoxDecoration(color: ColorConstant.gray300)),
            //               Padding(
            //                   padding: getPadding(left: 20, top: 18, right: 20),
            //                   child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Padding(
            //                             padding: getPadding(top: 1, bottom: 3),
            //                             child: Text("PAN Card ",
            //                                 overflow: TextOverflow.ellipsis,
            //                                 textAlign: TextAlign.left,
            //                                 style:
            //                                     AppStyle.txtRobotoBold16)),
            //                         CustomIconButton(
            //                             height: 24,
            //                             width: 24,
            //                             shape: IconButtonShape.CircleBorder12,
            //                             child: CustomImageView(
            //                                 svgPath: ImageConstant
            //                                     .imgCheckmarkWhiteA700))
            //                       ])),
            //               Container(
            //                   height: getVerticalSize(1.00),
            //                   width: size.width,
            //                   margin: getMargin(top: 18),
            //                   decoration:
            //                       BoxDecoration(color: ColorConstant.gray300)),
            //               Padding(
            //                   padding: getPadding(left: 20, top: 19, right: 20),
            //                   child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Driving License",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtRobotoBold16),
            //                         CustomImageView(
            //                             svgPath: ImageConstant.imgArrowdown,
            //                             height: getVerticalSize(6.00),
            //                             width: getHorizontalSize(12.00),
            //                             margin: getMargin(top: 5, bottom: 7))
            //                       ])),
            //               CustomTextFormField(
            //                   width: 335,
            //                   focusNode: FocusNode(),
            //                   controller: controlsTextController,
            //                   hintText: "DL Number",
            //                   margin: getMargin(top: 19),
            //                   textInputType: TextInputType.number),
            //               CustomTextFormField(
            //                   width: 335,
            //                   focusNode: FocusNode(),
            //                   controller: controlsTextOneController,
            //                   hintText: "DL Expiry Date",
            //                   margin: getMargin(top: 20)),
            //               CustomTextFormField(
            //                   width: 335,
            //                   focusNode: FocusNode(),
            //                   controller: controlsTextTwoController,
            //                   hintText: "Upload Copy of Driving License",
            //                   margin: getMargin(top: 20),
            //                   padding: TextFormFieldPadding.PaddingT13,
            //                   textInputAction: TextInputAction.done,
            //                   prefix: Container(
            //                       margin: getMargin(
            //                           left: 16, top: 15, right: 9, bottom: 17),
            //                       child: CustomImageView(
            //                           svgPath:
            //                               ImageConstant.imgCameraBlueGray300)),
            //                   prefixConstraints: BoxConstraints(
            //                       maxHeight: getVerticalSize(50.00))),
            //               CustomButton(
            //                   height: 48,
            //                   width: 335,
            //                   text: "Save & Next",
            //                   margin: getMargin(top: 20),
            //                   onTap: () => onTapSavenext(context)),
            //               Container(
            //                   height: getVerticalSize(1.00),
            //                   width: size.width,
            //                   margin: getMargin(top: 20),
            //                   decoration:
            //                       BoxDecoration(color: ColorConstant.gray300)),
            //               Padding(
            //                   padding: getPadding(
            //                       left: 20, top: 16, right: 20, bottom: 5),
            //                   child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Emergency Contact",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle
            //                                 .txtRobotoRegular16Black900),
            //                         CustomImageView(
            //                             svgPath: ImageConstant
            //                                 .imgArrowrightBlueGray30012x6,
            //                             height: getVerticalSize(12.00),
            //                             width: getHorizontalSize(6.00),
            //                             margin: getMargin(top: 2, bottom: 4))
            //                       ]))
            //             ]))),
            // bottomNavigationBar: Container(
            //     width: size.width,
            //     padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
            //     decoration: AppDecoration.fillWhiteA700
            //         .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
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
            //         ]))));
  }

  onTapSavenext(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.emergencyContactScreen);
  }

  onTapArrowleft19(BuildContext context) {
    Navigator.pop(context);
  }
}
