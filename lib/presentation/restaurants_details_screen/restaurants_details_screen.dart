import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../ItemsAfterModel.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../main.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart';
import '../member/browse_menu_dialog/browse_menu_dialog.dart';
import '../member/listReview_item_widget.dart';
import '../member/menu_open_screen/widgets/expandablelistspecialtyvegfourteen_item_widget.dart';
import '../member/menu_open_screen/widgets/listrectangle4322_item_widget.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable
class RestaurantsDetailsScreen extends StatefulWidget {
  final dynamic? arguments;

  const RestaurantsDetailsScreen({super.key, this.arguments});

  @override
  State<RestaurantsDetailsScreen> createState() =>
      _RestaurantsDetailsScreenState();
}

class _RestaurantsDetailsScreenState extends State<RestaurantsDetailsScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  TextEditingController barsSearchBarsController = TextEditingController();
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _reviewController = TextEditingController();
  double ratingValue = 0;
  List<ItemsAfterModel> itemList = <ItemsAfterModel>[];
  double cartItemAmount = 0;
  late TabController _nestedTabController;
  int selected = 0; //attention
  int sellectedSubTask  = 0;
  dynamic valNew;
  Map<String, dynamic> restaurantApplicationData = {};
  bool isFollow = false;
  // Future<Map<String, dynamic>> restaruntById() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? token = prefs.getString('token');
  //   int? userId = prefs.getInt('restarantId');
  //   // try {
  //   var request = http.Request(
  //     'GET',
  //     Uri.parse(
  //         "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/restaurant"),
  //   )..headers.addAll({
  //     'Content-Type': 'application/json',
  //     'Authorization': token!,
  //   });
  //   var params = {"id": userId};
  //   request.body = jsonEncode(params);
  //   http.StreamedResponse response = await request.send();
  //   Map<String, dynamic> object =
  //   await json.decode(await response.stream.bytesToString());
  //   // cusineData = await cusineDataFunction();
  //
  //   return object;
  // }


  List<Widget> tabBarList() {
    return [
      Tab(
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(50),
          //     border: Border.all(color: Colors.redAccent, width: 1)),
          child: const Align(
            alignment: Alignment.center,
            child: Text("Posts"),
          ),
        ),
      ),
      Tab(
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(50),
          //     border: Border.all(color: Colors.redAccent, width: 1)),
          child: const Align(
            alignment: Alignment.center,
            child: Text("Review"),
          ),
        ),
      ),
      Tab(
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(50),
          //     border: Border.all(color: Colors.redAccent, width: 1)),
          child: const Align(
            alignment: Alignment.center,
            child: Text("Menu"),
          ),
        ),
      ),
    ];
  }

  Map<String, dynamic> reviewItems = {};

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero, () async {
      //your async 'await' codes goes here
      // reviewItems = await getReview();
      // restaurantApplicationData = await restaruntById();
      // print("Amit Amit Amit ${restaurantApplicationData["response"]}");
      // print("reviewItemsreviewItemsreviewItems $reviewItems");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _nestedTabController =
        TabController(length: tabBarList().length, vsync: this);
    Future.delayed(Duration.zero, () async {
      itemList = await objectBox.getItemList();
    });

    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(30.00),
              centerTitle: true,
              title: Container(
                  width: size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 18, top: 8, right: 20),
                            child: Row(children: [
                              AppbarImage(
                                  height: getSize(24.00),
                                  width: getSize(24.00),
                                  svgPath: ImageConstant.imgArrowleft,
                                  onTap: () => onTapArrowleft54(context)),
                              // AppbarImage(
                              //     height: getVerticalSize(20.00),
                              //     width: getHorizontalSize(16.00),
                              //     svgPath: ImageConstant.imgUpload,
                              //     margin:
                              //         getMargin(left: 297, top: 2, bottom: 2))
                            ])),
                        Container(
                            height: getVerticalSize(1.00),
                            width: size.width,
                            margin: getMargin(top: 14),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray300))
                      ])),
              styleType: Style.bgFillWhiteA700_1),
          body: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(left: 20),
                        child: Row(children: [
                          Text(
                              widget.arguments["name"] ?? ' ',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold24),
                          Container(
                              width: getHorizontalSize(40.00),
                              height: 20,
                              margin: getMargin(left: 6, top: 9, bottom: 5),
                              // padding: getPadding(
                              //     left: 8, top: 8, right: 8, bottom: 1),
                              decoration: AppDecoration.txtFillTealA400
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder4),
                              child: Center(
                                child: Text(widget.arguments["status"] ?? ' ',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12WhiteA700),
                              )),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ElevatedButton(onPressed: () async {
                              await addFollowers().then((value)
                              {
                                isFollow = value;
                                setState(() {
                                });
                              });
                            },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: isFollow ? Colors.blue : Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(
                                        20,
                                      ))),
                              child: Text(isFollow ? "Follow" : "Unfollow",),
                            ),
                          )
                          // CustomButton(
                          //     height: 50,
                          //     width: 96,
                          //     text: isFollow ? "Follow" : "Unfollow",
                          //     margin: getMargin(right: 20),
                          //     variant: isFollow ? ButtonVariant.FillRed300 : ButtonVariant.FillBluegray300,
                          //     alignment: Alignment.topRight,
                          // onTap: () async {
                          //  await addFollowers().then((value)
                          //   {
                          //     isFollow = value;
                          //     setState(() {
                          //     });
                          //   });
                          // },),
                        ])),
                    Padding(
                        padding: getPadding(left: 20, top: 9),
                        child: Text("Pizza, Italian",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16)),
            if(widget.arguments["rating"] != null) ...[
              Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Positioned(
                        right: 5,
                        bottom: 5,
                        child: Container(
                          margin: getMargin(bottom: 5, right: 25),
                          width: 45,
                          height: 23,
                          decoration: AppDecoration.outlineIndigo900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder47),
                          child: Row(
                            children: [
                              const SizedBox(width: 5),
                               Text(widget.arguments["rating"] ?? ''),
                              const SizedBox(width: 5),
                              CustomImageView(svgPath: ImageConstant.imgStar),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ],
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 20, top: 6, right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 1),
                                      child: Text(widget.arguments["location"] ?? '',
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular14Bluegray300)),
                                  // Spacer(),
                                  // CustomImageView(
                                  //     svgPath:
                                  //         ImageConstant
                                  //             .imgLightbulb,
                                  //     height: getSize(
                                  //         21.00),
                                  //     width: getSize(
                                  //         21.00),
                                  //     onTap:
                                  //         () {
                                  //       onTapImgLightbulb(
                                  //           context);
                                  //     }),
                                  // CustomImageView(
                                  //     svgPath:
                                  //         ImageConstant
                                  //             .imgBookmarkGray90001,
                                  //     height: getVerticalSize(
                                  //         20.00),
                                  //     width: getHorizontalSize(
                                  //         16.00),
                                  //     margin: getMargin(
                                  //         left:
                                  //             15))
                                ]))),
                    Padding(
                        padding: getPadding(left: 20, top: 4),
                        child: Text(widget.arguments["radius"] ?? '',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14)),
                    Container(
                        height: getVerticalSize(1.00),
                        width: size.width,
                        margin: getMargin(top: 12),
                        decoration:
                            BoxDecoration(color: ColorConstant.gray300)),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 20, top: 10, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "${widget.arguments?["posts"]?.length ?? 0} ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            TextSpan(
                                                text: "Posts",
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray300,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w500))
                                          ]),
                                          textAlign: TextAlign.left)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtfollowers(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(bottom: 1),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "${widget.arguments?["followers"]?.length  ?? 0} ",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                TextSpan(
                                                    text: "Followers",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .blueGray300,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ]),
                                              textAlign: TextAlign.left))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtfollowing(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 1),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "${ widget.arguments?["following"]?.length ?? 0}",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                TextSpan(
                                                    text: " following",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .blueGray300,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ]),
                                              textAlign: TextAlign.left)))
                                ]))),
                    Container(
                        height: getVerticalSize(1.00),
                        width: size.width,
                        margin: getMargin(top: 10),
                        decoration:
                            BoxDecoration(color: ColorConstant.gray300)),
                    TabBar(
                      // onTap: (index) {
                      //   setState(() {
                      //     sellectedSubTask = index;
                      // });},
                      controller: _nestedTabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: ColorConstant.gray90001,
                      labelColor: Colors.black,
                      tabAlignment: TabAlignment.start,
                      unselectedLabelColor: Colors.grey,
                      //
                      isScrollable: true,
                      dividerColor: Colors.grey,
                      padding: getPadding(left: 5),
                      indicatorPadding: EdgeInsets.zero,
                      // labelPadding: getPadding(left: 5),
                      labelStyle: const TextStyle(
                          fontSize: 18, fontFamily: 'Family Name'),
                      //For Selected tab
                      unselectedLabelStyle: const TextStyle(
                          fontSize: 15.0, fontFamily: 'Family Name'),
                      tabs: tabBarList(),
                    ),
                    Container(
                        height: getVerticalSize(1.00),
                        width: size.width,
                        margin: getMargin(top: 7),
                        decoration: BoxDecoration(
                            color: ColorConstant.gray300,
                            borderRadius: BorderRadius.circular(
                                getHorizontalSize(1.00)))),

                  ]),
              Container(
                width: size.width,
                height: size.height / 1.81,
                child: TabBarView(controller: _nestedTabController, children: [
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                        // height: getVerticalSize(size.height/2.5),
                        width: getHorizontalSize(size.width),
                        margin: getMargin(left: 10),
                        child: Stack(alignment: Alignment.center, children: [
                          // CustomImageView(
                          //     svgPath: ImageConstant.imgVector,
                          //     height: getSize(25.00),
                          //     width: getSize(25.00),
                          //     alignment: Alignment.topRight,
                          //     margin:
                          //     getMargin(top: 1, right: 20)),
                          Align(
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgImageplaceholder27x27,
                                          height: getSize(27.00),
                                          width: getSize(27.00),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(13.00))),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 3, bottom: 4),
                                          child: Text(widget.arguments["name"] ?? ' ',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoBold16Gray900)),
                                      // Spacer(),
                                      // Container(
                                      //     height: getVerticalSize(
                                      //         20.00),
                                      //     width:
                                      //     getHorizontalSize(
                                      //         1.00),
                                      //     margin: getMargin(
                                      //         top: 4, bottom: 2),
                                      //     decoration: BoxDecoration(
                                      //         color: ColorConstant
                                      //             .whiteA700,
                                      //         borderRadius:
                                      //         BorderRadius.circular(
                                      //             getHorizontalSize(
                                      //                 10.00)),
                                      //         border: Border.all(
                                      //             color:
                                      //             ColorConstant
                                      //                 .gray900,
                                      //             width:
                                      //             getHorizontalSize(
                                      //                 1.00),
                                      //             strokeAlign:
                                      //             BorderSide.strokeAlignCenter)))
                                    ]),
                                    CustomImageView(
                                        imagePath: ImageConstant.noImg,
                                        height: getVerticalSize(200.00),
                                        width: getHorizontalSize(335.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(10.00)),
                                        margin: getMargin(left: 1, top: 11)),
                                    Container(
                                        width: getHorizontalSize(318.00),
                                        margin: getMargin(left: 1, top: 13),
                                        child: Text(
                                            widget.arguments["description"] ?? ' ',
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400))),
                                    // Container(
                                    //     width: getHorizontalSize(318.00),
                                    //     margin: getMargin(left: 1, top: 13),
                                    //     child: RichText(
                                    //         text: TextSpan(children: [
                                    //           TextSpan(
                                    //               text: "Download App now: ",
                                    //               style: TextStyle(
                                    //                   color:
                                    //                   ColorConstant.gray900,
                                    //                   fontSize: getFontSize(12),
                                    //                   fontFamily: 'Roboto',
                                    //                   fontWeight:
                                    //                   FontWeight.w400)),
                                    //           TextSpan(
                                    //               text: "https://rb.gy/hdotmb",
                                    //               style: TextStyle(
                                    //                   color: ColorConstant
                                    //                       .indigo900,
                                    //                   fontSize: getFontSize(12),
                                    //                   fontFamily: 'Roboto',
                                    //                   fontWeight:
                                    //                   FontWeight.w400))
                                    //         ]),
                                    //         textAlign: TextAlign.left)),

                                    Padding(
                                        padding: getPadding(left: 1, top: 8),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 8, bottom: 2),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: widget.arguments!["likes"] ?? "0",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700)),
                                                        TextSpan(
                                                            text: " ",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text: "Likes",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .blueGray300,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 31,
                                                      top: 8,
                                                      bottom: 2),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: widget.arguments!["comments"] ?? "0",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700)),
                                                        TextSpan(
                                                            text: " ",
                                                            style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        TextSpan(
                                                            text: "Comments",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .blueGray300,
                                                                fontSize:
                                                                    getFontSize(
                                                                        12),
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left)),
                                              // Spacer(),
                                              // CustomImageView(
                                              //     svgPath:
                                              //     ImageConstant
                                              //         .imgComputerBlueGray300,
                                              //     height: getSize(
                                              //         26.00),
                                              //     width: getSize(
                                              //         26.00))
                                            ]))
                                  ]))
                        ])),
                  ),
                  SingleChildScrollView(
                    child: Container(
                        // height: getVerticalSize(size.height/1.55),
                        width: getHorizontalSize(size.width),
                        padding: getPadding(top: 6, bottom: 6),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 6, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("Write a Review",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium18)),
                                        GestureDetector(
                                          onTap: () {
                                            showMessageView();
                                          },
                                          child: const Icon(Icons.edit,color: Colors.grey,),
                                        )
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 3),
                                      child: Text(
                                          "Share your experience to help others",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular14Bluegray300))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 16),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(1.00)))),

                              // Container(
                              //     height: getVerticalSize(1.00),
                              //     width: size.width,
                              //     decoration:
                              //     BoxDecoration(color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 19, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Average Rating",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold18),
                                        const Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Positioned(
                                            right: 5,
                                            bottom: 5,
                                            child: Container(
                                              margin: getMargin(
                                                  bottom: 5, right: 5),
                                              width: 45,
                                              height: 23,
                                              decoration: AppDecoration
                                                  .outlineIndigo900
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder47),
                                              child: Row(
                                                children: [
                                                  const SizedBox(width: 5),
                                                  const Text("4.5"),
                                                  const SizedBox(width: 5),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: getPadding(
                                                left: 7, top: 1, bottom: 3),
                                            child: Text(
                                                "${reviewItems!.length ?? ''} Reviews",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14))
                                      ])),

                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    ListReviewItemWidget(
                                      index: index,
                                      listOfItem: reviewItems!,
                                      // addItems:(value,id) => addItems(value, id),
                                      // removeItem:(value,id) => objectBox.removeItem(userone["category"], userone["name"], userone["about"], userone["originalPrice"], userone["discountPrice"], userone["image"], value, id),
                                      // addItems:(value,id) =>  objectBox.itemList(userone["category"], userone["name"], userone["about"], userone["originalPrice"], userone["discountPrice"], userone["image"], value)
                                      // addCustomizationPage: () =>  Navigator.pushNamed(context, AppRoutes.customizeScreen),
                                    );
                                  }),

                              // Padding(
                              //     padding: getPadding(top: 25),
                              //     child: Row(
                              //         mainAxisAlignment: MainAxisAlignment.center,
                              //         crossAxisAlignment: CrossAxisAlignment.start,
                              //         children: [
                              //           Padding(
                              //               padding: getPadding(bottom: 37),
                              //               child: Column(
                              //                   mainAxisAlignment:
                              //                   MainAxisAlignment.start,
                              //                   children: [
                              //                     CustomImageView(
                              //                         imagePath:
                              //                         ImageConstant.imgEllipse78,
                              //                         height: getSize(40.00),
                              //                         width: getSize(40.00),
                              //                         radius: BorderRadius.circular(
                              //                             getHorizontalSize(20.00))),
                              //                     CustomImageView(
                              //                         imagePath:
                              //                         ImageConstant.imgEllipse78,
                              //                         height: getSize(40.00),
                              //                         width: getSize(40.00),
                              //                         radius: BorderRadius.circular(
                              //                             getHorizontalSize(20.00)),
                              //                         margin: getMargin(top: 66)),
                              //                     CustomImageView(
                              //                         imagePath:
                              //                         ImageConstant.imgEllipse78,
                              //                         height: getSize(40.00),
                              //                         width: getSize(40.00),
                              //                         radius: BorderRadius.circular(
                              //                             getHorizontalSize(20.00)),
                              //                         margin: getMargin(top: 66)),
                              //                     CustomImageView(
                              //                         imagePath:
                              //                         ImageConstant.imgEllipse78,
                              //                         height: getSize(40.00),
                              //                         width: getSize(40.00),
                              //                         radius: BorderRadius.circular(
                              //                             getHorizontalSize(20.00)),
                              //                         margin: getMargin(top: 66))
                              //                   ])),
                              //           // Padding(
                              //           //     padding: getPadding(left: 12),
                              //           //     child: Column(
                              //           //         crossAxisAlignment:
                              //           //         CrossAxisAlignment.start,
                              //           //         mainAxisAlignment:
                              //           //         MainAxisAlignment.start,
                              //           //         children: [
                              //           //           Row(children: [
                              //           //             Text("Hanna.BO",
                              //           //                 overflow: TextOverflow.ellipsis,
                              //           //                 textAlign: TextAlign.left,
                              //           //                 style: AppStyle
                              //           //                     .txtRobotoRegular16Black900),
                              //           //             Padding(
                              //           //                 padding: getPadding(
                              //           //                     left: 142, top: 3),
                              //           //                 child: Text("Sep 09, 2022",
                              //           //                     overflow:
                              //           //                     TextOverflow.ellipsis,
                              //           //                     textAlign: TextAlign.left,
                              //           //                     style: AppStyle
                              //           //                         .txtRobotoRegular12))
                              //           //           ]),
                              //           //           Padding(
                              //           //               padding: getPadding(top: 3),
                              //           //               child: Row(children: [
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 6)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4))
                              //           //               ])),
                              //           //           Container(
                              //           //               width: getHorizontalSize(260.00),
                              //           //               margin: getMargin(top: 9),
                              //           //               child: Text(
                              //           //                   "Awesome, Good quality food love to order\nagain",
                              //           //                   maxLines: null,
                              //           //                   textAlign: TextAlign.left,
                              //           //                   style: AppStyle
                              //           //                       .txtRobotoRegular14Gray600)),
                              //           //           Padding(
                              //           //               padding: getPadding(top: 28),
                              //           //               child: Row(children: [
                              //           //                 Text("Hanna.BO",
                              //           //                     overflow:
                              //           //                     TextOverflow.ellipsis,
                              //           //                     textAlign: TextAlign.left,
                              //           //                     style: AppStyle
                              //           //                         .txtRobotoRegular16Black900),
                              //           //                 Padding(
                              //           //                     padding: getPadding(
                              //           //                         left: 142, top: 3),
                              //           //                     child: Text("Sep 09, 2022",
                              //           //                         overflow: TextOverflow
                              //           //                             .ellipsis,
                              //           //                         textAlign:
                              //           //                         TextAlign.left,
                              //           //                         style: AppStyle
                              //           //                             .txtRobotoRegular12))
                              //           //               ])),
                              //           //           Padding(
                              //           //               padding: getPadding(top: 3),
                              //           //               child: Row(children: [
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 6)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4))
                              //           //               ])),
                              //           //           Container(
                              //           //               width: getHorizontalSize(260.00),
                              //           //               margin: getMargin(top: 9),
                              //           //               child: Text(
                              //           //                   "Awesome, Good quality food love to order\nagain",
                              //           //                   maxLines: null,
                              //           //                   textAlign: TextAlign.left,
                              //           //                   style: AppStyle
                              //           //                       .txtRobotoRegular14Gray600)),
                              //           //           Padding(
                              //           //               padding: getPadding(top: 28),
                              //           //               child: Row(children: [
                              //           //                 Text("Hanna.BO",
                              //           //                     overflow:
                              //           //                     TextOverflow.ellipsis,
                              //           //                     textAlign: TextAlign.left,
                              //           //                     style: AppStyle
                              //           //                         .txtRobotoRegular16Black900),
                              //           //                 Padding(
                              //           //                     padding: getPadding(
                              //           //                         left: 142, top: 3),
                              //           //                     child: Text("Sep 09, 2022",
                              //           //                         overflow: TextOverflow
                              //           //                             .ellipsis,
                              //           //                         textAlign:
                              //           //                         TextAlign.left,
                              //           //                         style: AppStyle
                              //           //                             .txtRobotoRegular12))
                              //           //               ])),
                              //           //           Padding(
                              //           //               padding: getPadding(top: 3),
                              //           //               child: Row(children: [
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 6)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4))
                              //           //               ])),
                              //           //           Container(
                              //           //               width: getHorizontalSize(260.00),
                              //           //               margin: getMargin(top: 9),
                              //           //               child: Text(
                              //           //                   "Awesome, Good quality food love to order\nagain",
                              //           //                   maxLines: null,
                              //           //                   textAlign: TextAlign.left,
                              //           //                   style: AppStyle
                              //           //                       .txtRobotoRegular14Gray600)),
                              //           //           Padding(
                              //           //               padding: getPadding(top: 28),
                              //           //               child: Row(children: [
                              //           //                 Text("Hanna.BO",
                              //           //                     overflow:
                              //           //                     TextOverflow.ellipsis,
                              //           //                     textAlign: TextAlign.left,
                              //           //                     style: AppStyle
                              //           //                         .txtRobotoRegular16Black900),
                              //           //                 Padding(
                              //           //                     padding: getPadding(
                              //           //                         left: 142, top: 3),
                              //           //                     child: Text("Sep 09, 2022",
                              //           //                         overflow: TextOverflow
                              //           //                             .ellipsis,
                              //           //                         textAlign:
                              //           //                         TextAlign.left,
                              //           //                         style: AppStyle
                              //           //                             .txtRobotoRegular12))
                              //           //               ])),
                              //           //           Padding(
                              //           //               padding: getPadding(top: 3),
                              //           //               child: Row(children: [
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 6)),
                              //           //                 CustomImageView(
                              //           //                     svgPath:
                              //           //                     ImageConstant.imgStar,
                              //           //                     height: getSize(9.00),
                              //           //                     width: getSize(9.00),
                              //           //                     margin: getMargin(left: 4))
                              //           //               ])),
                              //           //           Container(
                              //           //               width: getHorizontalSize(260.00),
                              //           //               margin: getMargin(top: 9),
                              //           //               child: Text(
                              //           //                   "Awesome, Good quality food love to order\nagain",
                              //           //                   maxLines: null,
                              //           //                   textAlign: TextAlign.left,
                              //           //                   style: AppStyle
                              //           //                       .txtRobotoRegular14Gray600))
                              //           //         ]))
                              //         ])),
                              // Spacer(),
                              // CustomImageView(
                              //     svgPath: ImageConstant.imgRectangle,
                              //     height: getVerticalSize(5.00),
                              //     width: getHorizontalSize(48.00),
                              //     radius:
                              //     BorderRadius.circular(getHorizontalSize(2.00)),
                              //     margin: getMargin(bottom: 5))
                            ])),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: size.height / 0.6,
                      child: Column(
                        children: [
                          Padding(
                            padding: getPadding(left: 11, top: 11, right: 11),
                            child: FutureBuilder<Map<String, dynamic>>(
                                future: orderById(),
                                builder: (BuildContext context,
                                    AsyncSnapshot<Map<String, dynamic>>
                                        snapshot) {
                                  // List? listVal;
                                  // snapshot.data?.map((key, userone){
                                  //   // print(key);
                                  //   // print(userone);
                                  //   // listVal = userone;
                                  //   // var listItems = userone["items"];
                                  //   // print(listItems);
                                  //   // // final key = userone.keys.elementAt(0);
                                  //   // Map<String, dynamic> value = userone[key];
                                  //
                                  //
                                  //
                                  //   return userone;
                                  // });

                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  } else {
                                    valNew =
                                        json.decode(snapshot.data!["items"]);
                                    return SingleChildScrollView(
                                      child: Container(
                                        height: size.height,
                                        width: size.width,
                                        child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          // itemCount: 1,
                                          itemCount: valNew.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            var keys = valNew[index];
                                            final key = keys.keys.elementAt(0);
                                            List<dynamic> value = keys[key];
                                            print(key);
                                            print(value[0]);
// value[].first
//                                             var firstListSet = value.toSet();



                                            // for (var el in value.toSet()) {
                                            //   bool isContains = itemList.toSet().any((e) => el.contains(e));
                                            //   if(isContains) {
                                            //     print("amamamamama $el");
                                            //   }
                                            // }
                                            //
                                            // value.where((i) => itemList.contains(i)).map((obj) {
                                            //   print('Amitmmmmm ${obj.id}');
                                            //   return obj;
                                            // }).toList();

                                            //  Future.delayed(Duration.zero, () async {
                                            //   //your async 'await' codes goes here
                                            // var second = itemList.toSet();
                                            //   // itemList = objectBox.getItemList();
                                            //
                                            // print("reviewItemsreviewItemsreviewItems $second");
                                            //  });


                                            // print("firstListSetfirstListSet $firstListSet");
                                            // print("secondListSetsecondListSet $itemList");


                                            // print(firstListSet.intersection(itemList));



                                            return Theme(
                                              data: index == 0 ? Theme.of(context).copyWith(dividerColor: Colors.transparent) : Theme.of(context).copyWith(dividerColor: Colors.grey), //new
                                              child: ExpansionTile(
                                                  key: Key(index.toString()),
                                                  //attention
                                                  initiallyExpanded:
                                                      index == selected,
                                                  // leading: Text("$key"),
                                                  title: Text(
                                                    "$key",
                                                    style: const TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  children: [
                                                    Column(
                                                      children:
                                                          value.map((userone) {
                                                        return Listrectangle4322ItemWidget(
                                                            index: index,
                                                            itemArray: userone,
                                                            // addItems:(value,id) => addItems(value, id),
                                                            removeItem:
                                                                (value, id) {
                                                              setState(() {
                                                                objectBox.removeItem(
                                                                    userone[
                                                                        "category"],
                                                                    userone[
                                                                        "name"],
                                                                    userone[
                                                                        "about"],
                                                                    userone[
                                                                        "originalPrice"],
                                                                    userone[
                                                                        "discountPrice"],
                                                                    userone[
                                                                        "image"],
                                                                    value,
                                                                    id);
                                                              });
                                                            },
                                                            addItems:
                                                                (value, id) async {
                                                               // setState(() {
                                                                objectBox.afterItemList(
                                                                    userone[
                                                                        "category"],
                                                                    userone[
                                                                        "name"],
                                                                    userone[
                                                                        "about"],
                                                                    userone[
                                                                        "originalPrice"],
                                                                    userone[
                                                                        "discountPrice"],
                                                                    userone[
                                                                        "image"],
                                                                    value,
                                                                    id);
                                                               // });




                                                              itemList = await objectBox.getItemList();
                                                              cartItemAmount = 0;
                                                              for (int i = 0; i < itemList.length; i++) {
                                                                print("Amititititi ${itemList[i].originalPrice}");
                                                                cartItemAmount = cartItemAmount + double.parse(itemList[i].originalPrice) ;
                                                              }
                                                              // value.map((userone) {
                                                              //   cartItemAmount = double.parse(userone["originalPrice"]);
                                                              // }).toList();
                                                            }
                                                            // addCustomizationPage: () =>  Navigator.pushNamed(context, AppRoutes.customizeScreen),
                                                             );
                                                      }).toList(),
                                                    ),
                                                  ]),
                                            );

                                            // // String key = values.keys.elementAt(index);
                                            // return  Column(
                                            //   children: <Widget>[
                                            //      ListTile(
                                            //       title:  Text("$key"),
                                            //       subtitle:  Text("${value[0]["name"]}"),
                                            //     ),
                                            //      const Divider(
                                            //       height: 2.0,
                                            //     ),
                                            //   ],
                                            // );
                                          },
                                        ),
                                      ),
                                    );
                                    // return ListView.builder(
                                    //   shrinkWrap: true,
                                    //   physics: NeverScrollableScrollPhysics(),
                                    //   itemCount: listVal!.length,
                                    //   itemBuilder:(context, index){
                                    //     return Column(
                                    //       children: [
                                    //         Text(listVal![0]),
                                    //         Text(listVal![1])
                                    //       ],
                                    //     );
                                    //       // _buildList(listVal![index]);
                                    //     },);
                                  }
                                }),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
               ]),
              ),
            // sellectedSubTask == 2 &&
                floatingActionButton: (itemList.isNotEmpty) ?
            Container(
              height: 80,
              width: size.width ,
              // margin:
              // getMargin(top: 23, bottom: 80),
              padding: getPadding(
                  left: 20, top: 0, right: 20, bottom: 0),
              decoration: AppDecoration.fillIndigo900,
              child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: getPadding(
                            left: 7, top: 10, bottom: 4),
                        child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Text("${itemList.length} Items",
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRobotoRegular10),
                              Padding(
                                  padding: getPadding(top: 3),
                                  child: Row(children: [
                                    Text("\$ $cartItemAmount",
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                        TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium16WhiteA700),
                                    Padding(
                                        padding: getPadding(
                                            left: 5,
                                            top: 3,
                                            bottom: 3),
                                        child: Text("+ Taxes",
                                            overflow:
                                            TextOverflow
                                                .ellipsis,
                                            textAlign:
                                            TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular10))
                                  ]))
                            ])),
                    CustomButton(
                      height: 48,
                      width: 175,
                      text: "View Cart",
                      margin: getMargin(top: 1),
                      variant: ButtonVariant.FillWhiteA700,
                      shape: ButtonShape.CircleBorder24,
                      padding: ButtonPadding.PaddingAll13,
                      fontStyle:
                      ButtonFontStyle.RobotoBold16Gray90001,
                      onTap: () {
                        Navigator.pushNamed(
                            context,
                            AppRoutes
                                .cartDeliveryAddressNotAvailableScreen);
                      },
                    )
                  ])) : Container(),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
          // bottomNavigationBar:
          //     CustomBottomBar(onChanged: (BottomBarEnum type) {})
        ));
  }

  Future showMessageView() {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
            // backgroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: const Center(child: Text("Rating")),
            content: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    padding: getPadding(left: 20, right: 20, bottom: 29),
                    // decoration: AppDecoration.fillWhiteA700.copyWith(
                    //     borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),

                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            // allowHalfRating: true,
                            itemCount: 5,
                            // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              ratingValue = rating;
                              print(rating);
                            },
                          ),
                          // CustomImageView(
                          //     svgPath: ImageConstant.imgGroup,
                          //     height: getVerticalSize(25.00),
                          //     width: getHorizontalSize(185.00),
                          //     margin: getMargin(top: 48)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Add Review",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoRegular16Gray900))),
                          CustomTextFormField(
                              width: 295,
                              focusNode: FocusNode(),
                              controller: _reviewController,
                              hintText: "Write a Review here",
                              margin: getMargin(top: 13),
                              fontStyle: TextFormFieldFontStyle.RobotoRegular16,
                              textInputAction: TextInputAction.done,
                              maxLines: 7),
                          CustomButton(
                            height: 48,
                            width: 290,
                            text: "Add Review",
                            margin: getMargin(top: 13),
                            shape: ButtonShape.CircleBorder24,
                            padding: ButtonPadding.PaddingAll13,
                            fontStyle: ButtonFontStyle.RobotoBold16,
                            onTap: () => addReview(context),
                          ),
                          Padding(
                              padding: getPadding(top: 18),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancel",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold16Bluegray300),
                              ))
                        ]))
              ]),
            ),
          );
          // actions: <Widget>[
          //   TextButton(
          //     onPressed: ()
          //     {
          //       Navigator.of(context).pop();
          //     },
          //     child: Text("ok"),
          //   ),
          // ],
          // );
        });
  }

  Future<Map<String, dynamic>> orderById() async {
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
    var params = {"id": userId};
    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    final key = object.keys.elementAt(1);
    Map<String, dynamic> value = object[key];
    final val = value["items"];
    // var b = json.decode(value);
    // print("print in the $b");
    // List<dynamic> members = List.of(map["members"]);
    return value;
  }

  Future<Map<String, dynamic>> getReview() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/review/$userId"),
    )..headers.addAll({
        'Content-Type': 'application/json',
        'Authorization': token!,
      });
    // var params = {
    // "id" : "17102"
    // };
    // request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    final key = object.keys.elementAt(1);
    print("responcessss ${object.values.elementAt(1).length}");
    Map<String, dynamic> value = object[key];
    // final val = value["items"];
    // var b = json.decode(value);
    // print("print in the $b");
    // List<dynamic> members = List.of(map["members"]);
    return value;
  }

  onTapBrowsemenu(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: BrowseMenuDialog(),
              backgroundColor: Colors.transparent,
            ));
  }

  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homeGroceryPage:
  //       return HomeGroceryPage();
  //     case AppRoutes.insightsPage:
  //       return InsightsPage();
  //     case AppRoutes.socialPostMenuTabContainerPage:
  //       return SocialPostMenuTabContainerPage();
  //     case AppRoutes.cartPage:
  //       return CartPage();
  //     case AppRoutes.myProfilePage:
  //       return MyProfilePage();
  //     default:
  //       return HomeGroceryPage();
  //   }
  // }

  Future<dynamic> addFollowers() async {
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
      Uri.parse(
          'http://ec2-34-227-30-202.compute-1.amazonaws.com/api/restaurant/add-follower'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },
      body: jsonEncode(<dynamic, dynamic>{
        "restaurant_id": userId,
        "followerId" : widget.arguments["menu"]
       }),
    );

    if (response.statusCode == 200) {
      return true;
      // Navigator.pop(context);
    } else {
      throw Exception('Follower no');
    }
  }


  Future<dynamic> addReview(BuildContext context) async {
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
      Uri.parse(
          'http://ec2-34-227-30-202.compute-1.amazonaws.com/api/create/review'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },
      body: jsonEncode(<dynamic, dynamic>{
        "name": "Amit Mane",
        "restaurant_id": userId,
        "review": _reviewController.value.text,
        "rating": ratingValue
      }),
    );

    if (response.statusCode == 200) {
      Navigator.pop(context);
    } else {
      throw Exception('Failed to create restaurant.');
    }
  }

  addItems(int itemValue, int id) async {
    print("click event $itemValue $id");
    // await objectBox.itemList(itemCategoryTextController.value.text,itemNameTextController.value.text,aboutTextController.value.text,originalPriceCategoryTextController.value.text,discountPriceTextController.value.text,"string");

    await objectBox.updateItem(id, itemValue);
  }

  removePageClick(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsAllDetailsScreen);
  }

  onTapImgLightbulb(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goLiveHomeScreen);
  }

  onTapTxtfollowers(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.followersScreen);
  }

  onTapTxtfollowing(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.followers1Screen);
  }

  onTapTxtPartialsTabsTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewsScreen);
  }

  onTapTxtNopizzalovercan(BuildContext context) async {
    var url = 'https://rb.gy/hdotmb';
    if (!await launch(url)) {
      throw 'Could not launch https://rb.gy/hdotmb';
    }
  }

  onTapArrowleft54(BuildContext context) {
    Navigator.pop(context);
  }
}
