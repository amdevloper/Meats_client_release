import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_switch.dart';
import '../Establishment_Sign_Up/time_add_screen/time_add_screen.dart';
import 'package:http/http.dart' as http;

class ManageTimingScreen extends StatefulWidget {
  const ManageTimingScreen({super.key});

  @override
  State<ManageTimingScreen> createState() => _ManageTimingScreenState();
}

class _ManageTimingScreenState extends State<ManageTimingScreen> {

  late SharedPreferences prefs;

  bool setForWeek = false;
  String establishmentTiming = "8:00 AM to 10:30 PM";
  String monday = "8:00 AM to 10:30 PM";
  String tuesday = "8:00 AM to 10:30 PM";
  String wednesday = "8:00 AM to 10:30 PM";
  String thursday = "8:00 AM to 10:30 PM";
  String friday = "8:00 AM to 10:30 PM";
  String saturday = "8:00 AM to 10:30 PM";
  String sunday = "8:00 AM to 10:30 PM";


  int selected = 0; //attention
  int timerSelected = 0; //attention
  bool isMondayTimeSelected = true;
  bool isTuesdayTimeSelected = true;
  bool isWednesdayTimeSelected = true;
  bool isThursdayTimeSelected = true;
  bool isFridayTimeSelected = true;
  bool isSaturdayTimeSelected = true;
  bool isSundayTimeSelected = true;


  List startTimeList = [];
  List endTimeList = [];

  List<String> weekdaysItemList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft28(context)),
                title: AppbarSubtitle1(
                    text: "Manage Timing", margin: getMargin(left: 14))),
            body: Column(children: [
              ListView.builder(
                key: Key('builder ${timerSelected.toString()}'),
                //attention
                padding: const EdgeInsets.only(
                    left: 13.0, right: 13.0, bottom: 25.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: weekdaysItemList.length,
                itemBuilder: (context, index) {
                  return Column(children: <Widget>[
                    const SizedBox(
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
                  ]);
                },
              ),
              CustomButton(
                  height: 60,
                  width: 335,
                  text: "Update",
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
        ));
  }

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


  onTapTxtTime(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.updateTimeScreen);
  }

  onTapArrowleft28(BuildContext context) {
    Navigator.pop(context);
  }
}
