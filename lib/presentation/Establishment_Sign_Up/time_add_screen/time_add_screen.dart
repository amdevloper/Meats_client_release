import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_checkbox.dart';
import '../../../widgets/custom_image_view.dart';

class TimeAddScreen extends StatefulWidget {
  final dynamic arguments;
   TimeAddScreen({Key? key, required this.arguments}) : super(key: key);

  @override
  State<TimeAddScreen> createState() => _TimeAddScreenState();
}

class _TimeAddScreenState extends State<TimeAddScreen> {
  bool checkbox = false;

String startTime = "Start Time";
String startTimePeriod = "AM";
String endTime = "End Time";
String endTimePeriod = "PM";

var timeData = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
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
                          onTap: () => onTapArrowleft13(context)),
                    ])),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: size.width,
                padding: getPadding(left: 18, top: 19, right: 18, bottom: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Update Establishment Hours",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtInterBold24),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 12),
                              child: Text(widget.arguments,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold16Gray90001))),
                      Padding(
                          padding: getPadding(left: 1, top: 41),
                          child: Text(
                              "Add or modify your establishment hours here.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16Gray900)),
                      GestureDetector(
                        onTap: ()  async {
                          // TimeOfDay? pickedTime;
                          // print("Amit hjjhjh");
                          //   TimeOfDay initialTime = TimeOfDay.now();
                          //   pickedTime = await showTimePicker(
                          //     context: context,
                          //     initialTime: initialTime,
                          //   ).then((value) {
                          //     print(value?.format(context));
                          //
                          //     if (pickedTime != null && pickedTime != initialTime) {
                          //       setState(() {
                          //         //   selectedTime = picked_s;
                          //
                          //
                          //       });


                              // }
                              // setState(() {
                              //   //   selectedTime = picked_s;
                              // });

                            // });
                          TimeOfDay? timePick = await showTimePicker(
                          context: context, initialTime: new TimeOfDay.now());
                         if (timePick != null) {
                           setState(() {
                            List<String> words = timePick.format(context).split(" ");
                            print(words);
                            startTime = words[0];
                            startTimePeriod = words[1];
    });
    }
  },
                        child: Container(
                            margin: getMargin(
                                top: 20,
                                right: 2, left: 13),
                            padding: getPadding(
                                left: 6,
                                top: 7,
                                right: 6,
                                bottom: 7),
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
                                      child:  Text(startTime,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtRobotoRegular16),),
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
                                          left: 20,
                                          top: 7,
                                          bottom: 9,
                                      right: 20),
                                      child: Text(
                                          startTimePeriod,
                                          overflow: TextOverflow
                                              .ellipsis,
                                          textAlign: TextAlign
                                              .left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray900))
                                ])),
                      ),
                      GestureDetector(
                        onTap: ()  async {
                          TimeOfDay? timePick = await showTimePicker(
                              context: context,
                              initialTime: new TimeOfDay.now());
                          if (timePick != null) {
                            setState(() {
                              List<String> words = timePick.format(context)
                                  .split(" ");
                              print(words);
                              endTime = words[0];
                              endTimePeriod = words[1];
                            });
                          }
                        },
                        child: Container(
                            margin: getMargin(
                                top: 20,
                                right: 2, left: 13),
                            padding: getPadding(
                                left: 6,
                                top: 7,
                                right: 6,
                                bottom: 7),
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
                                    child:  Text(endTime,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                        AppStyle.txtRobotoRegular16),),
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
                                          left: 20,
                                          top: 7,
                                          bottom: 9,
                                          right: 20),
                                      child: Text(
                                          endTimePeriod,
                                          overflow: TextOverflow
                                              .ellipsis,
                                          textAlign: TextAlign
                                              .left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray900))
                                ])),
                      ),
                      // Padding(
                      //     padding: getPadding(left: 1, top: 20, right: 1),
                      //     child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Container(
                      //               padding: getPadding(
                      //                   left: 16,
                      //                   top: 14,
                      //                   right: 16,
                      //                   bottom: 14),
                      //               decoration: AppDecoration.outlineGray300
                      //                   .copyWith(
                      //                       borderRadius: BorderRadiusStyle
                      //                           .roundedBorder8),
                      //               child: GestureDetector(
                      //                 onTap: () async {
                      //                   TimeOfDay initialTime = TimeOfDay.now();
                      //                   TimeOfDay? pickedTime = await showTimePicker(
                      //                     context: context,
                      //                     initialTime: initialTime,
                      //                   );
                      //                   if (pickedTime != null && pickedTime != initialTime) {}
                      //                     setState(() {
                      //                     //   selectedTime = picked_s;
                      //                     });
                      //                 },
                      //                 child: Row(
                      //                     mainAxisAlignment:
                      //                         MainAxisAlignment.center,
                      //                     children: [
                      //                       Text("Start Time",
                      //                           overflow: TextOverflow.ellipsis,
                      //                           textAlign: TextAlign.left,
                      //                           style:
                      //                               AppStyle.txtRobotoRegular16),
                      //                       CustomImageView(
                      //                           svgPath: ImageConstant
                      //                               .imgArrowrightBlueGray30012x6,
                      //                           height: getVerticalSize(12.00),
                      //                           width: getHorizontalSize(6.00),
                      //                           margin: getMargin(
                      //                               left: 123,
                      //                               top: 4,
                      //                               right: 4,
                      //                               bottom: 2))
                      //                     ]),
                      //               )),
                      //           Container(
                      //               padding: getPadding(
                      //                   left: 13,
                      //                   top: 14,
                      //                   right: 13,
                      //                   bottom: 14),
                      //               decoration: AppDecoration.outlineGray300
                      //                   .copyWith(
                      //                       borderRadius: BorderRadiusStyle
                      //                           .roundedBorder8),
                      //               child: Row(
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.center,
                      //                   children: [
                      //                     Text("AM",
                      //                         overflow: TextOverflow.ellipsis,
                      //                         textAlign: TextAlign.left,
                      //                         style: AppStyle
                      //                             .txtRobotoRegular16Gray900),
                      //                     CustomImageView(
                      //                         svgPath: ImageConstant
                      //                             .imgArrowrightBlueGray30012x6,
                      //                         height: getVerticalSize(12.00),
                      //                         width: getHorizontalSize(6.00),
                      //                         margin: getMargin(
                      //                             left: 20,
                      //                             top: 4,
                      //                             right: 1,
                      //                             bottom: 2))
                      //                   ]))
                      //         ])),
                      // Padding(
                      //     padding: getPadding(left: 1, top: 20, right: 1),
                      //     child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Container(
                      //               padding: getPadding(
                      //                   left: 16,
                      //                   top: 14,
                      //                   right: 16,
                      //                   bottom: 14),
                      //               decoration: AppDecoration.outlineGray300
                      //                   .copyWith(
                      //                       borderRadius: BorderRadiusStyle
                      //                           .roundedBorder8),
                      //               child: Row(
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.center,
                      //                   children: [
                      //                     Text("End Time",
                      //                         overflow: TextOverflow.ellipsis,
                      //                         textAlign: TextAlign.left,
                      //                         style:
                      //                             AppStyle.txtRobotoRegular16),
                      //                     CustomImageView(
                      //                         svgPath: ImageConstant
                      //                             .imgArrowrightBlueGray30012x6,
                      //                         height: getVerticalSize(12.00),
                      //                         width: getHorizontalSize(6.00),
                      //                         margin: getMargin(
                      //                             left: 131,
                      //                             top: 4,
                      //                             right: 4,
                      //                             bottom: 2))
                      //                   ])),
                      //           Container(
                      //               padding: getPadding(
                      //                   left: 13,
                      //                   top: 14,
                      //                   right: 13,
                      //                   bottom: 14),
                      //               decoration: AppDecoration.outlineGray300
                      //                   .copyWith(
                      //                       borderRadius: BorderRadiusStyle
                      //                           .roundedBorder8),
                      //               child: Row(
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.center,
                      //                   children: [
                      //                     Text("PM",
                      //                         overflow: TextOverflow.ellipsis,
                      //                         textAlign: TextAlign.left,
                      //                         style: AppStyle
                      //                             .txtRobotoRegular16Gray900),
                      //                     CustomImageView(
                      //                         svgPath: ImageConstant
                      //                             .imgArrowrightBlueGray30012x6,
                      //                         height: getVerticalSize(12.00),
                      //                         width: getHorizontalSize(6.00),
                      //                         margin: getMargin(
                      //                             left: 22,
                      //                             top: 4,
                      //                             right: 1,
                      //                             bottom: 2))
                      //                   ]))
                      //         ])),
                      Padding(
                          padding: getPadding(left: 1, top: 20),
                          child: Row(children: [
                            CustomCheckbox(
                                text: "Set for all week days.",
                                iconSize: 24,
                                value: checkbox,
                                onChange: (value) {
                                  setState(() {
                                    checkbox = value;
                                  });
                                }),
                          ])),
                      CustomButton(
                          height: 48,
                          width: 335,
                          text: "Save",
                          margin: getMargin(left: 1, top: 30, bottom: 5),
                          isButtonDisable: isButtonDisable(),
                          onTap: () {
                            onTapSave(context);
                          }
                      )
                    ])),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle,
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(48.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(2.00)),
                          margin: getMargin(bottom: 3))
                    ]))));
  }


  bool isButtonDisable() {
   if(startTime == "Start Time" || endTime == "End Time") {
     return true;
   }
     return false;
}

  onTapSave(BuildContext context) {
    timeData =
     [ "${startTime + " " + startTimePeriod}",
       "${endTime + " " + endTimePeriod}",
        checkbox];
    Navigator.pop(context,timeData);
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }
}
