import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_switch.dart';
import '../Establishment_Sign_Up/menu_item_add1_screen/menu_item_add1_screen.dart';
import '../menu1_page/widgets/listrectangle4322_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'package:http/http.dart' as http;

import '../restaurants_all_details_screen/restaurants_all_details_screen.dart';
import '../restaurants_edit_screen/restaurants_edit_screen.dart';

class Menu1Page extends StatefulWidget {
  const Menu1Page({Key? key}) : super(key: key);

  @override
  State<Menu1Page> createState() => _Menu1PageState();
}

class _Menu1PageState extends State<Menu1Page> {
  bool isSwitched = false;
  int selected = 0; //attention
  var cusineData;
  dynamic valNew;

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
    var params = {
      "id": userId
    };
    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    final key = object.keys.elementAt(1);
    Map<String, dynamic> value = object[key];
    final val = value["items"];
    // List<dynamic> members = List.of(map["members"]);
    return value;
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
    cusineData = await cusineDataFunction();

    return object;
  }

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
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50.00),
                centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 20, right: 21),
                              child: Row(children: [
                                AppbarSubtitle3(
                                    text: "Menu",
                                    margin: getMargin(
                                        bottom: 15, left: size.width / 3)),
                                // AppbarImage(
                                //     height: getVerticalSize(20.00),
                                //     width: getHorizontalSize(18.00),
                                //     svgPath: ImageConstant.imgNotification,
                                //     margin: getMargin(left: 275))
                              ])),
                          // Container(
                          //     height: getVerticalSize(1.00),
                          //     width: size.width,
                          //     margin: getMargin(top: 16),
                          //     decoration:
                          //         BoxDecoration(color: ColorConstant.gray300))
                        ])),
                styleType: Style.bgFillWhiteA700_2),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 11),
                        child: FutureBuilder<Map<String, dynamic>>(
                            future: restaruntById(),
                            builder: (BuildContext context,
                                AsyncSnapshot<Map<String, dynamic>> snapshotValue) {
                              if (snapshotValue.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshotValue.hasError) {
                                return Text("Error : ${snapshotValue.error}");
                              } else {
    String? cusineValue;
    // print("length chech it ${cusineData["cuisines"].length}");
    // print("value chech it ${cusineData["cuisines"]}");

    // for(int i = 0; i > cusineData["cuisines"].length; i++)
    // {
    // if(snapshotValue.data!["response"]["cuisine"]['id'] = cusineData["cuisines"][0]['id']) {
    // cusineValue = cusineData[1];
    // }
    // }


     for (var el in cusineData["cuisines"])
     {
       if(snapshotValue.data!["response"]["cuisine"][0] == el['id']) {
         cusineValue = el["cuisine"];
     }
     }


                                // snapshotValue.data!["response"]
                                // var data = snapshotValue.data!["response"]["cuisine"];
                                // print(data);
                                // int index = cusineData["cuisines"][0].indexWhere((item)
                                // {
                                //   print("hihihih ${item["id"]}");
                                //   item["id"] == "59901";
                                // });



                                // var data = snapshotValue.data!["response"]["cuisine"];
                                // print(data);
                                // var estateSelected = cusineData["cuisines"][0]..firstWhere((dropdown) => dropdown['id'] == "59901");
                                // print(estateSelected);
                                // // print("${snapshotValue.data!["response"]}");
                                return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getVerticalSize(149.00),
                                          width: getHorizontalSize(374.00),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: GestureDetector(
                                                        onTap: () async {
                                                          // onTapControlsSteppers(
                                                          //     context);
                                                          final result = await Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) => RestaurantsEditScreen(arguments: [ snapshotValue.data!["response"], cusineValue]),
                                                              ));

                                                        },
                                                        child: Container(
                                                            height:
                                                            getVerticalSize(32.00),
                                                            width: getHorizontalSize(
                                                                83.00),
                                                            margin:
                                                            getMargin(right: 20),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .gray300,
                                                                borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        16.00)),
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .gray300,
                                                                    width:
                                                                    getHorizontalSize(
                                                                        1.00))),
                                                            child:  Padding(
                                                              padding: const EdgeInsets.all(7.0),
                                                              child: Text("Edit",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: AppStyle
                                                                      .txtRobotoMedium16Gray900),
                                                            )))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 19,
                                                                      right:
                                                                          47),
                                                              child: Row(
                                                                  children: [
                                                                    Text(
                                                                         "${snapshotValue.data!["response"]["name"]}",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoBold24Gray900),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            35.00),
                                                                        height: 20,
                                                                        padding: EdgeInsets.all(3),
                                                                        margin: getMargin(left: 7),
                                                                        decoration: AppDecoration.txtFillTealA400.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtRoundedBorder4),
                                                                        child: Text(
                                                                            "${snapshotValue.data!["response"]["status"]}",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium12WhiteA700)),
                                                                    Spacer(),
                                                                    // Padding(
                                                                    //     padding: getPadding(
                                                                    //         top:
                                                                    //             4,
                                                                    //         bottom:
                                                                    //             5),
                                                                    //     child: Text(
                                                                    //         "Edit",
                                                                    //         overflow:
                                                                    //             TextOverflow.ellipsis,
                                                                    //         textAlign: TextAlign.left,
                                                                    //         style: AppStyle.txtRobotoMedium16Gray900))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 19,
                                                                      top: 9),
                                                              child: Text(
                                                                // "cuisine",
                                                                  cusineValue ?? '',
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular16Gray900)),

                                                          Row(
                                                            children: [
                                                              if(snapshotValue.data!["response"]["rating"] != null) ...[
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            20,
                                                                        top:
                                                                            10),
                                                                child:
                                                                    Positioned(
                                                                  right: 5,
                                                                  bottom: 5,
                                                                  child:
                                                                      Container(
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            5,
                                                                        right:
                                                                            5),
                                                                    width: 45,
                                                                    height: 23,
                                                                    decoration: AppDecoration
                                                                        .outlineIndigo900
                                                                        .copyWith(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.roundedBorder47),
                                                                    child: Row(
                                                                      children: [
                                                                        const SizedBox(
                                                                            width:
                                                                                5),
                                                                         Text(
                                                                            snapshotValue.data!["response"]["rating"]),
                                                                        const SizedBox(
                                                                            width:
                                                                                5),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgStar),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              ],
                                                              GestureDetector(
                                                                  onTap: () async {
                                                                    // onTapTxtText(
                                                                    //     context);
                                                                    final result = await Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) => RestaurantsAllDetailsScreen(arguments: [snapshotValue.data!["response"], cusineValue]),
                                                                        ));

                                                                  },
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              11,
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "Read More",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoMedium14))),
                                                            ],
                                                          ),

                                                          // CustomButton(
                                                          //     height: 19,
                                                          //     width: 46,
                                                          //     text: "4.5",
                                                          //     margin: getMargin(
                                                          //         left: 18, top: 7),
                                                          //     variant: ButtonVariant
                                                          //         .OutlineGray300,
                                                          //     shape: ButtonShape
                                                          //         .RoundedBorder9,
                                                          //     padding: ButtonPadding
                                                          //         .PaddingT1,
                                                          //     fontStyle: ButtonFontStyle
                                                          //         .RobotoRegular12Gray900,
                                                          //     suffixWidget: Container(
                                                          //         margin: getMargin(
                                                          //             left: 4),
                                                          //         child: CustomImageView(
                                                          //             svgPath:
                                                          //             ImageConstant
                                                          //                 .imgStar))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 19,
                                                                      top: 7),
                                                              child: Text(
                                                                  "${snapshotValue.data!["response"]["location"]}",

                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular14)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      374.00),
                                                              margin: getMargin(
                                                                  top: 19),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .gray300))
                                                        ]))
                                              ])),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  top: 11, right: 20),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    // CustomButton(
                                                    //     height: 32,
                                                    //     width: 95,
                                                    //     text: "Breakfast",
                                                    //     variant: ButtonVariant
                                                    //         .OutlineGray300_1,
                                                    //     shape: ButtonShape
                                                    //         .CustomBorderLR20,
                                                    //     padding:
                                                    //         ButtonPadding.PaddingT8,
                                                    //     fontStyle: ButtonFontStyle
                                                    //         .RobotoRegular12,
                                                    //     suffixWidget: Container(
                                                    //         margin: getMargin(left: 10),
                                                    //         child: CustomImageView(
                                                    //             svgPath: ImageConstant
                                                    //                 .imgVectorBlueGray300))),
                                                    CustomButton(
                                                        height: 32,
                                                        width: 102,
                                                        text: "+ Add Item",
                                                        variant: ButtonVariant
                                                            .FillGray90001,
                                                        shape: ButtonShape
                                                            .CircleBorder16,
                                                        padding: ButtonPadding
                                                            .PaddingAll5,
                                                        fontStyle:
                                                            ButtonFontStyle
                                                                .RobotoMedium16,
                                                        onTap: () =>
                                                            onTapAdditem(
                                                                context))
                                                  ]))),
                                      Padding(
                                        padding: getPadding(
                                            left: 11, top: 11, right: 11),
                                        child: FutureBuilder<
                                                Map<String, dynamic>>(
                                            future: orderById(),
                                            builder: (BuildContext context,
                                                AsyncSnapshot<
                                                        Map<String, dynamic>>
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
                                                return Text(
                                                    'Error: ${snapshot.error}');
                                              } else {
                                                valNew =
                                                    json.decode(snapshot.data!["items"]);

                                                return SingleChildScrollView(
                                                  child: Container(
                                                    // height: size.height,
                                                    width: size.width,
                                                    child: ListView.builder(
                                                      physics:
                                                          const BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      // itemCount: 1,
                                                      itemCount: valNew.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        var keys = valNew[index];
                                                        final key = keys.keys
                                                            .elementAt(0);
                                                        List<dynamic> value =
                                                            keys[key];
                                                        print(key);
                                                        print(value[0]);

                                                        return ExpansionTile(
                                                            key: Key(index
                                                                .toString()),
                                                            //attention
                                                            initiallyExpanded:
                                                                index ==
                                                                    selected,
                                                            // leading: Text("$key"),
                                                            title: Text(
                                                              "$key",
                                                              style: const TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            children: [
                                                              Column(
                                                                children: value
                                                                    .map(
                                                                        (userone) {
                                                                  return Listrectangle4322OneItemWidget(
                                                                    index:
                                                                        index,
                                                                    listValues:
                                                                        userone,
                                                                    onClick:(value) async {

                                                                      final result = await Navigator.push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (context) => MenuItemAdd1Screen(arguments: [value , "edit"]),
                                                                          ));


                                                                    } ,
                                                                  );
                                                                }).toList(),
                                                              ),
                                                            ]);
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

                                      // Padding(
                                      //     padding:
                                      //         getPadding(left: 20, top: 40, right: 20),
                                      //     child: Row(
                                      //         mainAxisAlignment:
                                      //             MainAxisAlignment.spaceBetween,
                                      //         crossAxisAlignment:
                                      //             CrossAxisAlignment.start,
                                      //         children: [
                                      //           Text("Exotic Veg (01)",
                                      //               overflow: TextOverflow.ellipsis,
                                      //               textAlign: TextAlign.left,
                                      //               style: AppStyle
                                      //                   .txtRobotoRegular16Gray60001),
                                      //           CustomImageView(
                                      //               svgPath: ImageConstant.imgArrowdown,
                                      //               height: getVerticalSize(6.00),
                                      //               width: getHorizontalSize(12.00),
                                      //               margin:
                                      //                   getMargin(top: 6, bottom: 6))
                                      //         ])),
                                      // Padding(
                                      //     padding: getPadding(top: 17),
                                      //     child: Row(
                                      //         mainAxisAlignment:
                                      //             MainAxisAlignment.center,
                                      //         crossAxisAlignment:
                                      //             CrossAxisAlignment.start,
                                      //         children: [
                                      //           CustomImageView(
                                      //               imagePath: ImageConstant
                                      //                   .imgImageplaceholder,
                                      //               height: getSize(50.00),
                                      //               width: getSize(50.00),
                                      //               radius: BorderRadius.circular(
                                      //                   getHorizontalSize(10.00)),
                                      //               margin: getMargin(bottom: 52)),
                                      //           Padding(
                                      //               padding: getPadding(left: 10),
                                      //               child: Column(
                                      //                   mainAxisAlignment:
                                      //                       MainAxisAlignment.start,
                                      //                   children: [
                                      //                     Row(
                                      //                         mainAxisAlignment:
                                      //                             MainAxisAlignment
                                      //                                 .center,
                                      //                         crossAxisAlignment:
                                      //                             CrossAxisAlignment
                                      //                                 .start,
                                      //                         children: [
                                      //                           Padding(
                                      //                               padding: getPadding(
                                      //                                   top: 3),
                                      //                               child: Column(
                                      //                                   crossAxisAlignment:
                                      //                                       CrossAxisAlignment
                                      //                                           .start,
                                      //                                   mainAxisAlignment:
                                      //                                       MainAxisAlignment
                                      //                                           .start,
                                      //                                   children: [
                                      //                                     Container(
                                      //                                         width: getHorizontalSize(
                                      //                                             15.00),
                                      //                                         padding: getPadding(
                                      //                                             all:
                                      //                                                 4),
                                      //                                         decoration: AppDecoration
                                      //                                             .outlineTeal3001
                                      //                                             .copyWith(
                                      //                                                 borderRadius: BorderRadiusStyle
                                      //                                                     .roundedBorder2),
                                      //                                         child: Column(
                                      //                                             mainAxisSize: MainAxisSize
                                      //                                                 .min,
                                      //                                             mainAxisAlignment:
                                      //                                                 MainAxisAlignment.start,
                                      //                                             children: [
                                      //                                               Container(
                                      //                                                   height: getSize(7.00),
                                      //                                                   width: getSize(7.00),
                                      //                                                   decoration: BoxDecoration(color: ColorConstant.teal300, borderRadius: BorderRadius.circular(getHorizontalSize(3.00))))
                                      //                                             ])),
                                      //                                     Padding(
                                      //                                         padding: getPadding(
                                      //                                             top:
                                      //                                                 6),
                                      //                                         child: Text(
                                      //                                             "Cheesy-7 Pizza",
                                      //                                             overflow: TextOverflow
                                      //                                                 .ellipsis,
                                      //                                             textAlign: TextAlign
                                      //                                                 .left,
                                      //                                             style:
                                      //                                                 AppStyle.txtRobotoMedium14))
                                      //                                   ])),
                                      //                           CustomButton(
                                      //                               height: 32,
                                      //                               width: 83,
                                      //                               text: "Edit",
                                      //                               margin: getMargin(
                                      //                                   left: 95,
                                      //                                   bottom: 9),
                                      //                               variant: ButtonVariant
                                      //                                   .OutlineGray300_1,
                                      //                               shape: ButtonShape
                                      //                                   .CircleBorder16,
                                      //                               padding:
                                      //                                   ButtonPadding
                                      //                                       .PaddingAll5,
                                      //                               fontStyle:
                                      //                                   ButtonFontStyle
                                      //                                       .RobotoMedium16Gray900)
                                      //                         ]),
                                      //                     Padding(
                                      //                         padding:
                                      //                             getPadding(top: 2),
                                      //                         child: Row(
                                      //                             mainAxisAlignment:
                                      //                                 MainAxisAlignment
                                      //                                     .center,
                                      //                             children: [
                                      //                               Container(
                                      //                                   width:
                                      //                                       getHorizontalSize(
                                      //                                           169.00),
                                      //                                   child: RichText(
                                      //                                       text: TextSpan(
                                      //                                           children: [
                                      //                                             TextSpan(
                                      //                                                 text: "An Exotic Combination of White Mozzarella, Cream, ",
                                      //                                                 style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400)),
                                      //                                             TextSpan(
                                      //                                                 text: "Read More",
                                      //                                                 style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w400))
                                      //                                           ]),
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left)),
                                      //
                                      //                               // LiteRollingSwitch(
                                      //                               //   value: true,
                                      //                               //   width: 90,
                                      //                               //   // textOn: 'In',
                                      //                               //   // textOff: 'Out',
                                      //                               //   colorOn: Colors.deepOrange,
                                      //                               //   colorOff: Colors.blueGrey,
                                      //                               //   iconOn: Icons.lightbulb_outline,
                                      //                               //   // iconOff: Icons.power_settings_new,
                                      //                               //   // animationDuration: const Duration(milliseconds: 300),
                                      //                               //   onChanged: (bool state) {
                                      //                               //     print('turned ${(state) ? 'on' : 'off'}');
                                      //                               //   },
                                      //                               //   onDoubleTap: () {},
                                      //                               //   onSwipe: () {},
                                      //                               //   onTap: () {},
                                      //                               // ),
                                      //
                                      //                               // CustomSwitch(
                                      //                               //   value: isSwitched,
                                      //                               //   // activeColor: Colors.blue,
                                      //                               //   onChanged: (value) {
                                      //                               //     print("VALUE : $value");
                                      //                               //     setState(() {
                                      //                               //       isSwitched = value;
                                      //                               //     });
                                      //                               //   },
                                      //                               // ),
                                      //                               CustomSwitch(
                                      //                                   margin:
                                      //                                       getMargin(
                                      //                                           left:
                                      //                                               49,
                                      //                                           bottom:
                                      //                                               1),
                                      //                                   value: isSwitched,
                                      //                                   onChanged:
                                      //                                       (value) {
                                      //                                     setState(() {
                                      //                                       isSwitched = value;
                                      //                                     });
                                      //                                       })
                                      //                             ])),
                                      //                     Padding(
                                      //                         padding:
                                      //                             getPadding(top: 6),
                                      //                         child: Row(
                                      //                             mainAxisAlignment:
                                      //                                 MainAxisAlignment
                                      //                                     .center,
                                      //                             crossAxisAlignment:
                                      //                                 CrossAxisAlignment
                                      //                                     .end,
                                      //                             children: [
                                      //                               Padding(
                                      //                                   padding:
                                      //                                       getPadding(
                                      //                                           top: 1),
                                      //                                   child: Text(
                                      //                                       "\$5.66",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoMedium14Gray90001)),
                                      //                               Padding(
                                      //                                   padding:
                                      //                                       getPadding(
                                      //                                           left: 5,
                                      //                                           top: 2,
                                      //                                           bottom:
                                      //                                               1),
                                      //                                   child: Text(
                                      //                                       "\$8.66",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoMedium12
                                      //                                           .copyWith(
                                      //                                               decoration:
                                      //                                                   TextDecoration.lineThrough))),
                                      //                               Padding(
                                      //                                   padding:
                                      //                                       getPadding(
                                      //                                           left:
                                      //                                               80,
                                      //                                           top: 5,
                                      //                                           bottom:
                                      //                                               3),
                                      //                                   child: Text(
                                      //                                       "Customization",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular8)),
                                      //                               Padding(
                                      //                                   padding: getPadding(
                                      //                                       left: 11),
                                      //                                   child: Text(
                                      //                                       "In Stock",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray90001))
                                      //                             ]))
                                      //                   ]))
                                      //         ])),
                                      // Container(
                                      //     height: getVerticalSize(1.00),
                                      //     width: size.width,
                                      //     margin: getMargin(top: 16),
                                      //     decoration: BoxDecoration(
                                      //         color: ColorConstant.gray300,
                                      //         borderRadius: BorderRadius.circular(
                                      //             getHorizontalSize(1.00)))),
                                      // Container(
                                      //     height: getVerticalSize(611.00),
                                      //     width: size.width,
                                      //     margin: getMargin(top: 17),
                                      //     child: Stack(
                                      //         alignment: Alignment.topCenter,
                                      //         children: [
                                      //           Align(
                                      //               alignment: Alignment.bottomCenter,
                                      //               child: Container(
                                      //                   width: size.width,
                                      //                   child: Column(
                                      //                       mainAxisSize:
                                      //                           MainAxisSize.min,
                                      //                       mainAxisAlignment:
                                      //                           MainAxisAlignment.end,
                                      //                       children: [
                                      //                         Padding(
                                      //                             padding: getPadding(
                                      //                                 left: 20,
                                      //                                 top: 20,
                                      //                                 right: 20),
                                      //                             child: Row(
                                      //                                 mainAxisAlignment:
                                      //                                     MainAxisAlignment
                                      //                                         .spaceBetween,
                                      //                                 children: [
                                      //                                   Text(
                                      //                                       "Macaroni & Cheese (2)",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray60001),
                                      //                                   CustomImageView(
                                      //                                       svgPath:
                                      //                                           ImageConstant
                                      //                                               .imgArrowrightBlueGray300,
                                      //                                       height:
                                      //                                           getVerticalSize(
                                      //                                               12.00),
                                      //                                       width:
                                      //                                           getHorizontalSize(
                                      //                                               6.00),
                                      //                                       margin: getMargin(
                                      //                                           top: 2,
                                      //                                           bottom:
                                      //                                               2))
                                      //                                 ])),
                                      //                         Container(
                                      //                             height:
                                      //                                 getVerticalSize(
                                      //                                     1.00),
                                      //                             width: size.width,
                                      //                             margin: getMargin(
                                      //                                 top: 20),
                                      //                             decoration: BoxDecoration(
                                      //                                 color:
                                      //                                     ColorConstant
                                      //                                         .gray300,
                                      //                                 borderRadius:
                                      //                                     BorderRadius.circular(
                                      //                                         getHorizontalSize(
                                      //                                             1.00)))),
                                      //                         Padding(
                                      //                             padding: getPadding(
                                      //                                 left: 20,
                                      //                                 top: 19,
                                      //                                 right: 20),
                                      //                             child: Row(
                                      //                                 mainAxisAlignment:
                                      //                                     MainAxisAlignment
                                      //                                         .spaceBetween,
                                      //                                 children: [
                                      //                                   Text(
                                      //                                       "Pasta Veg (4)",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray60001),
                                      //                                   CustomImageView(
                                      //                                       svgPath:
                                      //                                           ImageConstant
                                      //                                               .imgArrowrightBlueGray300,
                                      //                                       height:
                                      //                                           getVerticalSize(
                                      //                                               12.00),
                                      //                                       width:
                                      //                                           getHorizontalSize(
                                      //                                               6.00),
                                      //                                       margin: getMargin(
                                      //                                           top: 2,
                                      //                                           bottom:
                                      //                                               2))
                                      //                                 ])),
                                      //                         Container(
                                      //                             height:
                                      //                                 getVerticalSize(
                                      //                                     1.00),
                                      //                             width: size.width,
                                      //                             margin: getMargin(
                                      //                                 top: 20),
                                      //                             decoration: BoxDecoration(
                                      //                                 color:
                                      //                                     ColorConstant
                                      //                                         .gray300,
                                      //                                 borderRadius:
                                      //                                     BorderRadius.circular(
                                      //                                         getHorizontalSize(
                                      //                                             1.00)))),
                                      //                         Padding(
                                      //                             padding: getPadding(
                                      //                                 left: 20,
                                      //                                 top: 19,
                                      //                                 right: 20),
                                      //                             child: Row(
                                      //                                 mainAxisAlignment:
                                      //                                     MainAxisAlignment
                                      //                                         .spaceBetween,
                                      //                                 children: [
                                      //                                   Text(
                                      //                                       "Garlic Sticks (2)",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray60001),
                                      //                                   CustomImageView(
                                      //                                       svgPath:
                                      //                                           ImageConstant
                                      //                                               .imgArrowrightBlueGray300,
                                      //                                       height:
                                      //                                           getVerticalSize(
                                      //                                               12.00),
                                      //                                       width:
                                      //                                           getHorizontalSize(
                                      //                                               6.00),
                                      //                                       margin: getMargin(
                                      //                                           top: 2,
                                      //                                           bottom:
                                      //                                               2))
                                      //                                 ])),
                                      //                         Container(
                                      //                             height:
                                      //                                 getVerticalSize(
                                      //                                     1.00),
                                      //                             width: size.width,
                                      //                             margin: getMargin(
                                      //                                 top: 20),
                                      //                             decoration: BoxDecoration(
                                      //                                 color:
                                      //                                     ColorConstant
                                      //                                         .gray300,
                                      //                                 borderRadius:
                                      //                                     BorderRadius.circular(
                                      //                                         getHorizontalSize(
                                      //                                             1.00)))),
                                      //                         Padding(
                                      //                             padding: getPadding(
                                      //                                 left: 20,
                                      //                                 top: 19,
                                      //                                 right: 20),
                                      //                             child: Row(
                                      //                                 mainAxisAlignment:
                                      //                                     MainAxisAlignment
                                      //                                         .spaceBetween,
                                      //                                 children: [
                                      //                                   Text(
                                      //                                       "Garlic Bread (4)",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray60001),
                                      //                                   CustomImageView(
                                      //                                       svgPath:
                                      //                                           ImageConstant
                                      //                                               .imgArrowrightBlueGray300,
                                      //                                       height:
                                      //                                           getVerticalSize(
                                      //                                               12.00),
                                      //                                       width:
                                      //                                           getHorizontalSize(
                                      //                                               6.00),
                                      //                                       margin: getMargin(
                                      //                                           top: 2,
                                      //                                           bottom:
                                      //                                               2))
                                      //                                 ])),
                                      //                         Container(
                                      //                             height:
                                      //                                 getVerticalSize(
                                      //                                     1.00),
                                      //                             width: size.width,
                                      //                             margin: getMargin(
                                      //                                 top: 20),
                                      //                             decoration: BoxDecoration(
                                      //                                 color:
                                      //                                     ColorConstant
                                      //                                         .gray300,
                                      //                                 borderRadius:
                                      //                                     BorderRadius.circular(
                                      //                                         getHorizontalSize(
                                      //                                             1.00)))),
                                      //                         Padding(
                                      //                             padding: getPadding(
                                      //                                 left: 20,
                                      //                                 top: 19,
                                      //                                 right: 20),
                                      //                             child: Row(
                                      //                                 mainAxisAlignment:
                                      //                                     MainAxisAlignment
                                      //                                         .spaceBetween,
                                      //                                 children: [
                                      //                                   Text(
                                      //                                       "Quesadillas (2)",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray60001),
                                      //                                   CustomImageView(
                                      //                                       svgPath:
                                      //                                           ImageConstant
                                      //                                               .imgArrowrightBlueGray300,
                                      //                                       height:
                                      //                                           getVerticalSize(
                                      //                                               12.00),
                                      //                                       width:
                                      //                                           getHorizontalSize(
                                      //                                               6.00),
                                      //                                       margin: getMargin(
                                      //                                           top: 2,
                                      //                                           bottom:
                                      //                                               2))
                                      //                                 ])),
                                      //                         Container(
                                      //                             height:
                                      //                                 getVerticalSize(
                                      //                                     1.00),
                                      //                             width: size.width,
                                      //                             margin: getMargin(
                                      //                                 top: 20),
                                      //                             decoration: BoxDecoration(
                                      //                                 color:
                                      //                                     ColorConstant
                                      //                                         .gray300,
                                      //                                 borderRadius:
                                      //                                     BorderRadius.circular(
                                      //                                         getHorizontalSize(
                                      //                                             1.00)))),
                                      //                         Padding(
                                      //                             padding: getPadding(
                                      //                                 left: 20,
                                      //                                 top: 19,
                                      //                                 right: 20),
                                      //                             child: Row(
                                      //                                 mainAxisAlignment:
                                      //                                     MainAxisAlignment
                                      //                                         .spaceBetween,
                                      //                                 children: [
                                      //                                   Text(
                                      //                                       "Taco’s (3)",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray60001),
                                      //                                   CustomImageView(
                                      //                                       svgPath:
                                      //                                           ImageConstant
                                      //                                               .imgArrowrightBlueGray300,
                                      //                                       height:
                                      //                                           getVerticalSize(
                                      //                                               12.00),
                                      //                                       width:
                                      //                                           getHorizontalSize(
                                      //                                               6.00),
                                      //                                       margin: getMargin(
                                      //                                           top: 2,
                                      //                                           bottom:
                                      //                                               2))
                                      //                                 ]))
                                      //                       ]))),
                                      //           Align(
                                      //               alignment: Alignment.topCenter,
                                      //               child: Container(
                                      //                   width: size.width,
                                      //                   child: Column(
                                      //                       mainAxisSize:
                                      //                           MainAxisSize.min,
                                      //                       mainAxisAlignment:
                                      //                           MainAxisAlignment.start,
                                      //                       children: [
                                      //                         Padding(
                                      //                             padding: getPadding(
                                      //                                 left: 20,
                                      //                                 right: 20),
                                      //                             child: Row(
                                      //                                 mainAxisAlignment:
                                      //                                     MainAxisAlignment
                                      //                                         .spaceBetween,
                                      //                                 crossAxisAlignment:
                                      //                                     CrossAxisAlignment
                                      //                                         .start,
                                      //                                 children: [
                                      //                                   Text(
                                      //                                       "Classic Veg (02)",
                                      //                                       overflow:
                                      //                                           TextOverflow
                                      //                                               .ellipsis,
                                      //                                       textAlign:
                                      //                                           TextAlign
                                      //                                               .left,
                                      //                                       style: AppStyle
                                      //                                           .txtRobotoRegular16Gray60001),
                                      //                                   CustomImageView(
                                      //                                       svgPath:
                                      //                                           ImageConstant
                                      //                                               .imgArrowdown,
                                      //                                       height:
                                      //                                           getVerticalSize(
                                      //                                               6.00),
                                      //                                       width: getHorizontalSize(
                                      //                                           12.00),
                                      //                                       margin: getMargin(
                                      //                                           top: 6,
                                      //                                           bottom:
                                      //                                               6))
                                      //                                 ])),
                                      //                         // Padding(
                                      //                         //     padding: getPadding(
                                      //                         //         left: 20,
                                      //                         //         top: 17,
                                      //                         //         right: 20),
                                      //                         //     child: ListView
                                      //                         //         .separated(
                                      //                         //             physics:
                                      //                         //                 NeverScrollableScrollPhysics(),
                                      //                         //             shrinkWrap:
                                      //                         //                 true,
                                      //                         //             separatorBuilder:
                                      //                         //                 (context,
                                      //                         //                     index) {
                                      //                         //               return Container(
                                      //                         //                   height: getVerticalSize(
                                      //                         //                       1.00),
                                      //                         //                   width: getHorizontalSize(
                                      //                         //                       275.00),
                                      //                         //                   decoration: BoxDecoration(
                                      //                         //                       color:
                                      //                         //                           ColorConstant.gray300,
                                      //                         //                       borderRadius: BorderRadius.circular(getHorizontalSize(1.00))));
                                      //                         //             },
                                      //                         //             itemCount: 2,
                                      //                         //             itemBuilder:
                                      //                         //                 (context,
                                      //                         //                     index) {
                                      //                         //               return Listrectangle4322OneItemWidget();
                                      //                         //             })),
                                      //                         Container(
                                      //                             height:
                                      //                                 getVerticalSize(
                                      //                                     1.00),
                                      //                             width: size.width,
                                      //                             margin: getMargin(
                                      //                                 top: 20),
                                      //                             decoration: BoxDecoration(
                                      //                                 color:
                                      //                                     ColorConstant
                                      //                                         .gray300,
                                      //                                 borderRadius:
                                      //                                     BorderRadius.circular(
                                      //                                         getHorizontalSize(
                                      //                                             1.00))))
                                      //                       ])))
                                      //         ]))
                                    ]);
                              }
                            }))))));
  }

  // Widget _buildList(List list) {
  //   if (list.subMenu.isEmpty)
  //     return Builder(
  //         builder: (context) {
  //           return ListTile(
  //               onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategory(list.name))),
  //               leading: SizedBox(),
  //               title: Text("list.name")
  //           );
  //         }
  //     );
  //   return ExpansionTile(
  //     leading: Icon(list.icon),
  //     title: Text(
  //       list.name,
  //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //     ),
  //     children: list.subMenu.map(_buildList).toList(),
  //   );
  // }
// }

  onTapControlsSteppers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsEditScreen);
  }

  onTapTxtText(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.restaurantsAllDetailsScreen);



  }

  onTapAdditem(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MenuItemAdd1Screen(arguments: ['' , "add"]),
        ));

  }
}
