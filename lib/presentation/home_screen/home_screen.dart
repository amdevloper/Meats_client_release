import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_switch.dart';
import '../account_page/account_page.dart';
import '../home_screen/widgets/listmenuitems_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../menu1_page/menu1_page.dart';
import '../my_orders_tab_container_page/my_orders_tab_container_page.dart';
import '../new_notifications_page/new_notifications_page.dart';
import '../social_home_page/social_home_page.dart';

// class ChartData {
//   ChartData(this.x, this.y);
//   final double x;
//   final double? y;
// }

//Class which is used as type for the data source.
class SalesData {
  SalesData(this.xValue, this.yValue);

  final int xValue;
  final int yValue;
}


// class ChartData {
//   ChartData(this.x, this.y);
//
//   final int x;
//   final int y;
// }

// class SalesData {
//   SalesData(this.month, this.order);
//
//   dynamic month;
//   dynamic order;
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  TextEditingController barsSearchBarsController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();


  // List<_SalesData> data = <_SalesData>[];
  // List<int> xValues = [1, 2, 3, 4, 5];
  // List<int> yValues = [35, 28, 34, 32, 40];


  // var data;
  var ordersdelivereddata;
  var barChart;
  bool isSwitchOnline = true;
  var barChartOrder;
  Map<String, dynamic> barChartDat = Map();

  @override
  void initState() {
    // TODO: implement initState
    // getStatastic();
    // getStatasti();
    // getStatasticn();
    // getData();
    super.initState();
  }

  void getData() {
    Iterable<String> keys = barChartDat.keys;
    for (final key in keys) {
      // SalesData(key, yValues[i])
      print(key);
    }

    Iterable<dynamic> values = barChartDat.values;
    for (final value in values) {
      print(values);
    }


    for (int i = 0; i < barChartDat.length; i++) {
      // Adding data to the user-defined type list.
      // data.add(_SalesData(barChartDat[i], yValues[i]));
    }
  }

  Future<Map<String, dynamic>> todaysOrderStatastic() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/order-stats"),
    )..headers.addAll({
        'Content-Type': 'application/json',
        'Authorization': token!,
      });
    var params = {
      "id": userId,
    };

    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    print(object);
    // ordersdelivereddata = await json.decode(await response.stream.bytesToString());
    return object;

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
  }

  Future<Map<String, dynamic>> getStatasticn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');

    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/order/in-time-stats"),
    )..headers.addAll({
        'Content-Type': 'application/json',
        'Authorization': token!,
      });
    var params = {
      "restaurant_id": userId,
    };
    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    // print(await response.stream.bytesToString());

    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    print(object);
    // ordersdelivereddata = await json.decode(await response.stream.bytesToString());
    return object;

    // print(barChartOrder["response"]["inTimeOrders"]);

    // if (response.statusCode == 200) {
    //     // If the server did return a 200 OK response,
    //     // then parse the JSON.
    //     return response.body;
    //   } else {
    //     // If the server did not return a 200 OK response,
    //     // then throw an exception.
    //     throw Exception('Failed to load album');
    //   }
  }

  Future<Map<String, dynamic>> fetchData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');

    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/orders/delivered"),
    )..headers.addAll({
        'Content-Type': 'application/json',
        'Authorization': token!,
      });
    var params = {
      "id": userId,
    };
    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    // print(await json.decode(await response.stream.bytesToString()));
    Map<String, dynamic> object =
        await json.decode(await response.stream.bytesToString());
    barChartDat = object["orderStats"]["deliveredOrders"];

    return object;
  }

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(35, 35),
      // SalesData(36, 36),
      // SalesData(37, 37),
      // SalesData(38, 38),
      // SalesData(39, 39),
      // SalesData(40, 40),
      // SalesData(41, 41)
    ];
    final date = DateFormat('MMMMd').format(DateTime.now());
    return SafeArea(
        // top: false,
        // bottom: false,
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      resizeToAvoidBottomInset: false,
      body: Container(
          width: size.width,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    // height: getVerticalSize(45.00),
                    width: size.width,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgNotification,
                          height: getVerticalSize(20.00),
                          width: getHorizontalSize(18.00),
                          alignment: Alignment.topRight,
                          margin: getMargin(top: 10, right: 21)),
                      CustomAppBar(
                          height: getVerticalSize(45.00),
                          title: Row(children: [
                            CustomSwitch(
                                margin: getMargin(left: 19, top: 4, bottom: 9),
                                value: isSwitchOnline,
                                onChanged: (value) async {
                                  await createdEstablishmentAddItems();
                                  setState(()  {
                                    isSwitchOnline = value;

                                  });
                                }),
                            AppbarSubtitle3(
                                text: isSwitchOnline ?"Online" : "Offline",
                                margin: getMargin(left: 8, top: 9, bottom: 16))
                          ]),
                          actions: [
                            // AppbarImage(
                            //     height: getVerticalSize(20.00),
                            //     width: getHorizontalSize(18.00),
                            //     svgPath: ImageConstant.imgNotification,
                            //     margin: getMargin(
                            //         left: 21,
                            //         top: 14,
                            //         right: 21,
                            //         bottom: 11))
                          ],
                          styleType: Style.bgFillWhiteA700)
                    ])),
                Expanded(
                    child: SingleChildScrollView(
                        child: Container(
                            width: size.width,
                            margin: getMargin(top: 1),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Container(
                                  //     height: getVerticalSize(1.00),
                                  //     width: size.width,
                                  //     decoration: BoxDecoration(
                                  //         color: ColorConstant.gray300)),
                                  Container(
                                      height: size.height + 50,
                                      width: size.width,
                                      margin: getMargin(top: 1),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  645.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  374.00),
                                                          margin: getMargin(
                                                              top: 20),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 19, right: 20),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Text(
                                                                              "Today Order Statistics",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoBold18Black900),
                                                                          FutureBuilder<
                                                                              Map<String, dynamic>>(
                                                                            future:
                                                                                todaysOrderStatastic(),
                                                                            builder:
                                                                                (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
                                                                              if (snapshot.connectionState == ConnectionState.waiting) {
                                                                                return CircularProgressIndicator();
                                                                              } else if (snapshot.hasError) {
                                                                                return Text('Error: ${snapshot.error}');
                                                                              } else {
                                                                                return Container(
                                                                                    height: getVerticalSize(117.00),
                                                                                    width: getHorizontalSize(335.00),
                                                                                    margin: getMargin(top: 14),
                                                                                    child: Stack(alignment: Alignment.topLeft, children: [
                                                                                      Align(alignment: Alignment.topLeft, child: Text("Total Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300)),
                                                                                      Align(
                                                                                          alignment: Alignment.topLeft,
                                                                                          child: Padding(
                                                                                            padding: getPadding(top: 25),
                                                                                            child: Text("${snapshot.requireData["orderStats"]["totalOrders"]}".toString(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900),
                                                                                          )),
                                                                                      CustomImageView(
                                                                                          svgPath: ImageConstant.imgVectorBlueGray30010x5,
                                                                                          height: getVerticalSize(10.00),
                                                                                          width: getHorizontalSize(5.00),
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: getMargin(left: 141, top: 3),
                                                                                          onTap: () {
                                                                                            onTapImgVector(context);
                                                                                          }),
                                                                                      CustomImageView(svgPath: ImageConstant.imgVectorBlueGray30010x5, height: getVerticalSize(10.00), width: getHorizontalSize(5.00), alignment: Alignment.topRight, margin: getMargin(top: 3)),
                                                                                      Align(
                                                                                          alignment: Alignment.centerRight,
                                                                                          child: Container(
                                                                                              width: getHorizontalSize(192.00),
                                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                Padding(padding: getPadding(left: 58), child: Text("${snapshot.requireData["orderStats"]["rejectedOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900)),
                                                                                                Padding(
                                                                                                    padding: getPadding(top: 29),
                                                                                                    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                      CustomImageView(svgPath: ImageConstant.imgVectorBlueGray30010x5, height: getVerticalSize(10.00), width: getHorizontalSize(5.00), margin: getMargin(top: 1, bottom: 4)),
                                                                                                      Padding(padding: getPadding(left: 52), child: Text("Completed Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300)),
                                                                                                      CustomImageView(svgPath: ImageConstant.imgVectorBlueGray30010x5, height: getVerticalSize(10.00), width: getHorizontalSize(5.00), margin: getMargin(left: 15, top: 1, bottom: 4))
                                                                                                    ]))
                                                                                              ]))),
                                                                                      Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(top: 1, right: 34), child: Text("Rejected Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300))),
                                                                                      Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(bottom: 26), child: Text("In Progress Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300))),
                                                                                      Align(alignment: Alignment.bottomLeft, child: Text("${snapshot.requireData["orderStats"]["inProgressOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900)),
                                                                                      Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(right: 117), child: Text("${snapshot.requireData["orderStats"]["completedOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900))),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: Container(
                                                                                              height: getVerticalSize(111.00),
                                                                                              width: getHorizontalSize(335.00),
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                Align(alignment: Alignment.center, child: Container(height: getVerticalSize(1.00), width: getHorizontalSize(335.00), decoration: BoxDecoration(color: ColorConstant.gray300))),
                                                                                                Align(alignment: Alignment.center, child: Container(height: getVerticalSize(111.00), width: getHorizontalSize(1.00), decoration: BoxDecoration(color: ColorConstant.gray300)))
                                                                                              ])))
                                                                                    ]));
                                                                              }
                                                                            },
                                                                          ),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 141, top: 102),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgVectorBlueGray30010x5, height: getVerticalSize(10.00), width: getHorizontalSize(5.00)),
                                                                                    CustomImageView(
                                                                                        svgPath: ImageConstant.imgVectorBlueGray30010x5,
                                                                                        height: getVerticalSize(10.00),
                                                                                        width: getHorizontalSize(5.00),
                                                                                        onTap: () {
                                                                                          onTapImgVectorFive(context);
                                                                                        })
                                                                                  ])))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            5.00),
                                                                        width: getHorizontalSize(
                                                                            374.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                174),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray200,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(2.00))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child:
                                                                        FutureBuilder<
                                                                            Map<String,
                                                                                dynamic>>(
                                                                          future:
                                                                              fetchData(),
                                                                          builder: (BuildContext
                                                                                  context,
                                                                              AsyncSnapshot<Map<String, dynamic>>
                                                                                  snapshot) {
                                                                            if (snapshot.connectionState ==
                                                                                ConnectionState.waiting) {
                                                                              return CircularProgressIndicator();
                                                                            } else if (snapshot.hasError) {
                                                                              return Text("Error : ${snapshot.error}");
                                                                            } else {
                                                                              return Container(
                                                                                  width: getHorizontalSize(size.width),
                                                                                  padding: getPadding(left: 12, right: 12),
                                                                                  // height: getVerticalSize(250),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Padding(
                                                                                          padding: getPadding(top: 4, bottom: 14),
                                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Text("Delivered Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold18Black900),
                                                                                            Padding(padding: getPadding(top: 4), child: Text("$date", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium10)),
                                                                                            Padding(padding: getPadding(top: 16), child: Text("Total Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300)),
                                                                                            Padding(padding: getPadding(top: 8), child: Text("${snapshot.requireData["orderStats"]["totalOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900))
                                                                                          ])),
                                                                                      Container(height: getVerticalSize(56.00), width: getHorizontalSize(1.00), margin: getMargin(left: 31, top: 61), decoration: BoxDecoration(color: ColorConstant.gray300)),
                                                                                      Padding(
                                                                                          padding: getPadding(left: size.width / 4.1, bottom: 14),
                                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            CustomButton(height: 32, width: 96, text: "This Month", variant: ButtonVariant.OutlineGray300_1, shape: ButtonShape.CustomBorderLR20, padding: ButtonPadding.PaddingT8, fontStyle: ButtonFontStyle.RobotoRegular12,
                                                                                                alignment: Alignment.centerRight),
                                                                                            Padding(padding: getPadding(top: 28), child: Text("Total Earning", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300)),
                                                                                            Padding(padding: getPadding(top: 7), child: Text("\$ ${snapshot.requireData["orderStats"]["totalEarnings"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900))
                                                                                          ]))
                                                                                    ]),
                                                                                    Padding(
                                                                                        padding: getPadding(top: 8),
                                                                                        child: Row(children: [
                                                                                          Container(height: getVerticalSize(9.00), width: getHorizontalSize(16.00), margin: getMargin(top: 3, bottom: 2), decoration: BoxDecoration(color: ColorConstant.gray90001, borderRadius: BorderRadius.circular(getHorizontalSize(4.00)), border: Border.all(color: ColorConstant.gray90001, width: getHorizontalSize(1.00)))),
                                                                                          Padding(padding: getPadding(left: 5), child: Text("Total number of delivered orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Gray900))
                                                                                        ])),
                                                                                    Padding(
                                                                                        padding: getPadding(left: 1, bottom: 0),
                                                                                        child: SfCartesianChart(
                                                                                            // primaryYAxis: NumericAxis(rangePadding: ChartRangePadding.auto),
                                                                                            primaryXAxis: CategoryAxis(
                                                                                              interval: 1,
                                                                                            ),
                                                                                            series: <ChartSeries>[
                                                                                          // Renders column chart
                                                                                          ColumnSeries<SalesData, int>(
                                                                                            color: ColorConstant.gray90001,
                                                                                              dataSource: chartData,
                                                                                              xValueMapper: (SalesData data, _) => data.xValue,
                                                                                              yValueMapper: (SalesData data, _) => data.yValue),
                                                                                        ])),

                                                                                    //     child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    //       Padding(
                                                                                    //           padding: getPadding(bottom: 20),
                                                                                    //           child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    //             Text("400", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10),
                                                                                    //             Padding(padding: getPadding(top: 23), child: Text("300", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //             Padding(padding: getPadding(top: 23), child: Text("200", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //             Padding(padding: getPadding(top: 23), child: Text("100", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //             Padding(padding: getPadding(top: 23), child: Text("0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10))
                                                                                    //           ])),
                                                                                    //       Padding(
                                                                                    //           padding: getPadding(left: 4, top: 6),
                                                                                    //           child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    //             Container(
                                                                                    //                 width: getHorizontalSize(312.00),
                                                                                    //                 padding: getPadding(left: 13, right: 13),
                                                                                    //                 decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup974), fit: BoxFit.cover)),
                                                                                    //                 child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                    //                   Container(height: getVerticalSize(104.00), width: getHorizontalSize(4.00), margin: getMargin(top: 35), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(53.00), width: getHorizontalSize(4.00), margin: getMargin(left: 23, top: 85), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(134.00), width: getHorizontalSize(4.00), margin: getMargin(left: 23, top: 5), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(27.00), width: getHorizontalSize(4.00), margin: getMargin(left: 21, top: 112), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(9.00), width: getHorizontalSize(4.00), margin: getMargin(left: 23, top: 130), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(104.00), width: getHorizontalSize(4.00), margin: getMargin(left: 25, top: 35), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(24.00), width: getHorizontalSize(4.00), margin: getMargin(left: 23, top: 115), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(27.00), width: getHorizontalSize(4.00), margin: getMargin(left: 23, top: 112), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(53.00), width: getHorizontalSize(4.00), margin: getMargin(left: 21, top: 85), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(83.00), width: getHorizontalSize(4.00), margin: getMargin(left: 23, top: 56), decoration: BoxDecoration(color: ColorConstant.gray90001)),
                                                                                    //                   Container(height: getVerticalSize(9.00), width: getHorizontalSize(4.00), margin: getMargin(left: 25, top: 130, right: 8), decoration: BoxDecoration(color: ColorConstant.gray90001))
                                                                                    //                 ])),
                                                                                    //             Padding(
                                                                                    //                 padding: getPadding(top: 13),
                                                                                    //                 child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    //                   Text("01", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10),
                                                                                    //                   Padding(padding: getPadding(left: 17), child: Text("02", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("03", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("04", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("05", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("06", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("07", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("08", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("09", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("10", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10)),
                                                                                    //                   Padding(padding: getPadding(left: 15), child: Text("11", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10))
                                                                                    //                 ]))
                                                                                    //           ]))
                                                                                    //     ]))
                                                                                  ]));
                                                                            }
                                                                          },
                                                                        ))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  5.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  374.00),
                                                          margin: getMargin(
                                                              top: 15),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray200,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          2.00)))),
                                                      // FutureBuilder<
                                                      //         Map<String, dynamic>>(
                                                      //     future:
                                                      //         todaysOrderStatastic(),
                                                      //     builder: (BuildContext
                                                      //             context,
                                                      //         AsyncSnapshot<
                                                      //                 Map<String,
                                                      //                     dynamic>>
                                                      //             snapshot) {
                                                      //       if (snapshot
                                                      //               .connectionState ==
                                                      //           ConnectionState
                                                      //               .waiting) {
                                                      //         return CircularProgressIndicator();
                                                      //       } else if (snapshot
                                                      //           .hasError) {
                                                      //         return Text(
                                                      //             'Error: ${snapshot.error}');
                                                      //       } else {
                                                      //        return Align(
                                                      //             alignment:
                                                      //                 Alignment
                                                      //                     .centerRight,
                                                      //             child: Padding(
                                                      //                 padding: getPadding(top: 14),
                                                      //                 child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                      //                   Padding(
                                                      //                       padding:
                                                      //                           getPadding(top: 6),
                                                      //                       child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                      //                         Text("Order Preparation Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold18Black900),
                                                      //                         Padding(padding: getPadding(top: 2), child: Text("$date", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium10)),
                                                      //                         Padding(
                                                      //                             padding: getPadding(top: 15),
                                                      //                             child: RichText(
                                                      //                                 text: TextSpan(children: [
                                                      //                                   TextSpan(text: "${snapshot.requireData["response"]["ordersPreparedPercentage"]}", style: TextStyle(color: ColorConstant.gray90001, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500)),
                                                      //                                   TextSpan(text: " orders prepared in time", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500))
                                                      //                                 ]),
                                                      //                                 textAlign: TextAlign.left)),
                                                      //                         Padding(
                                                      //                             padding: getPadding(top: 7),
                                                      //                             child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                      //                               Padding(
                                                      //                                   padding: getPadding(bottom: 13),
                                                      //                                   child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                      //                                     Text("In Time Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300),
                                                      //                                     Padding(padding: getPadding(top: 2), child: Text("${snapshot.requireData["response"]["inTimeOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900))
                                                      //                                   ])),
                                                      //                               Container(height: getVerticalSize(56.00), width: getHorizontalSize(1.00), margin: getMargin(left: 74, top: 8), decoration: BoxDecoration(color: ColorConstant.gray300))
                                                      //                             ]))
                                                      //                       ])),
                                                      //                   Padding(
                                                      //                       padding:
                                                      //                           getPadding(left: 10, bottom: 13),
                                                      //                       child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                      //                         Align(
                                                      //                             alignment: Alignment.centerRight,
                                                      //                             child: Container(
                                                      //                                 margin: getMargin(left: 59),
                                                      //                                 padding: getPadding(left: 9, top: 8, right: 9, bottom: 8),
                                                      //                                 decoration: AppDecoration.outlineGray3002.copyWith(borderRadius: BorderRadiusStyle.customBorderLR20),
                                                      //                                 child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                      //                                   Text("This month", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Black900),
                                                      //                                   CustomImageView(svgPath: ImageConstant.imgVectorBlueGray3003x6, height: getVerticalSize(3.00), width: getHorizontalSize(6.00), margin: getMargin(left: 7, top: 6, bottom: 5))
                                                      //                                 ]))),
                                                      //                         Padding(padding: getPadding(top: 51), child: Text("Delayed Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300)),
                                                      //                         Padding(padding: getPadding(top: 2), child: Text("${barChartOrder["response"]["delayedOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900))
                                                      //                       ]))
                                                      //                 ])));
                                                      //       }
                                                      //     }),




                                Align(
                                    alignment:
                                    Alignment
                                        .centerRight,
                                    child: Padding(
                                        padding: getPadding(top: 3),
                                        child: FutureBuilder<Map<String, dynamic>>(
                                                future: getStatasticn(),
                                                builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>>snapshot) {
                                                  if (snapshot.connectionState == ConnectionState.waiting) {
                                                    return CircularProgressIndicator();
                                                  } else if (snapshot.hasError) {
                                                    return Text('Error: ${snapshot.error}');
                                                  } else {
                                         return Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                            Padding(
                                                padding:
                                                getPadding(top: 1),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                  Text("Order Preparation Time", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold18Black900),
                                                  Padding(padding: getPadding(top: 2), child: Text("$date", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium10)),
                                                  Padding(
                                                      padding: getPadding(left: 50,top: 15),
                                                      child: RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(text: "${snapshot.requireData["response"]["ordersPreparedPercentage"]}", style: TextStyle(color: ColorConstant.gray90001, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500)),
                                                            TextSpan(text: " orders prepared in time", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500))
                                                          ]),
                                                          textAlign: TextAlign.left)),
                                                  Padding(
                                                      padding: getPadding(top: 7),
                                                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                        Padding(
                                                            padding: getPadding(bottom: 13),
                                                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                              Text("In Time Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300),
                                                              Padding(padding: getPadding(top: 2), child: Text("${snapshot.requireData["response"]["inTimeOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900))
                                                            ])),
                                                        Container(height: getVerticalSize(56.00), width: getHorizontalSize(1.00), margin: getMargin(left: 74, top: 8), decoration: BoxDecoration(color: ColorConstant.gray300))
                                                      ]))
                                                ])),
                                            Padding(
                                                padding:
                                                getPadding(left: 10, bottom: 13),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                  Align(
                                                      alignment: Alignment.centerRight,
                                                      child: Container(
                                                          margin: getMargin(left: 59),
                                                          padding: getPadding(left: 12, top: 8, bottom: 8),
                                                          decoration: AppDecoration.outlineGray3002.copyWith(borderRadius: BorderRadiusStyle.customBorderLR20),
                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                            Text("This month", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Black900),
                                                          ]))),
                                                  Padding(padding: getPadding(top: 51), child: Text("Delayed Orders", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14Bluegray300)),
                                                  Padding(padding: getPadding(top: 2), child: Text("${snapshot.requireData["response"]["delayedOrders"]}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray900))
                                                ])),
                                          ]);
                                                  }
                                                  },
                                        ))),

                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  5.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  374.00),
                                                          margin:
                                                              getMargin(top: 8),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray200,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          2.00)))),
                                                      // Align(
                                                      //     alignment: Alignment
                                                      //         .centerRight,
                                                      //     child: Padding(
                                                      //         padding: getPadding(
                                                      //             left:
                                                      //                 19,
                                                      //             top:
                                                      //                 14),
                                                      //         child: Row(
                                                      //             mainAxisAlignment:
                                                      //                 MainAxisAlignment
                                                      //                     .spaceBetween,
                                                      //             crossAxisAlignment:
                                                      //                 CrossAxisAlignment.start,
                                                      //             children: [
                                                      //               Container(
                                                      //                   height: getVerticalSize(39.00),
                                                      //                   width: getHorizontalSize(216.00),
                                                      //                   margin: getMargin(top: 6),
                                                      //                   child: Stack(alignment: Alignment.bottomLeft, children: [
                                                      //                     Align(alignment: Alignment.topCenter, child: Text("Top 5 orders in your menu", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoBold18Black900)),
                                                      //                     Align(alignment: Alignment.bottomLeft, child: Text("Nov, 21", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium10))
                                                      //                   ])),
                                                      //               CustomButton(
                                                      //                   height: 32,
                                                      //                   width: 96,
                                                      //                   text: "This month",
                                                      //                   margin: getMargin(bottom: 13),
                                                      //                   variant: ButtonVariant.OutlineGray300_1,
                                                      //                   shape: ButtonShape.CustomBorderLR20,
                                                      //                   padding: ButtonPadding.PaddingT8,
                                                      //                   fontStyle: ButtonFontStyle.RobotoRegular12,
                                                      //                   suffixWidget: Container(margin: getMargin(left: 7), child: CustomImageView(svgPath: ImageConstant.imgVectorBlueGray3003x6)))
                                                      //             ]))),
                                                      // Align(
                                                      //     alignment:
                                                      //         Alignment
                                                      //             .center,
                                                      //     child: Container(
                                                      //         height: getVerticalSize(295.00),
                                                      //         child: ListView.separated(
                                                      //             padding: getPadding(left: 19, top: 6, right: 21, bottom: 13),
                                                      //             scrollDirection: Axis.horizontal,
                                                      //             physics: BouncingScrollPhysics(),
                                                      //             separatorBuilder: (context, index) {
                                                      //               return Container(
                                                      //                   height: getVerticalSize(286.00),
                                                      //                   width: getHorizontalSize(1.00),
                                                      //                   decoration: BoxDecoration(color: ColorConstant.gray300));
                                                      //             },
                                                      //             itemCount: 3,
                                                      //             itemBuilder: (context, index) {
                                                      //               return ListmenuitemsItemWidget();
                                                      //             })))
                                                    ])),
                                            // Align(
                                            //     alignment:
                                            //         Alignment.center,
                                            //     child: Container(
                                            //         height:
                                            //             getVerticalSize(
                                            //                 150.00),
                                            //         width: size.width))
                                          ]))
                                ]))))
              ])),
      // bottomNavigationBar:
      //     CustomBottomBar(onChanged: (BottomBarEnum type) {
      //   Navigator.pushNamed(
      //       navigatorKey.currentContext!, getCurrentRoute(type));
      // }),
      // floatingActionButton: CustomFloatingButton(
      //     height: 50,
      //     width: 50,
      //     child: CustomImageView(
      //         svgPath: ImageConstant.imgRefreshWhiteA700,
      //         height: getVerticalSize(25.00),
      //         width: getHorizontalSize(25.00)))
    ));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.newNotificationsPage;
      case BottomBarEnum.Myorders:
        return AppRoutes.myOrdersTabContainerPage;
      case BottomBarEnum.Social:
        return AppRoutes.socialHomePage;
      case BottomBarEnum.Menu:
        return AppRoutes.menu1Page;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.newNotificationsPage:
        return NewNotificationsPage();
      case AppRoutes.myOrdersTabContainerPage:
        return MyOrdersTabContainerPage();
      case AppRoutes.socialHomePage:
        return SocialHomePage();
      case AppRoutes.menu1Page:
        return Menu1Page();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }


  Future<dynamic> createdEstablishmentAddItems() async {

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
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/update/restaurant/status'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },

      body: jsonEncode(<dynamic,dynamic>{
        "status" : isSwitchOnline ? "closed" : "open",
        "id": userId
      }),
    );

    // if (response.statusCode == 200) {
    //   // Navigator.pop(context);
    // } else {
    //   throw Exception('Failed to create restaurant.');
    // }
  }


  onTapImgVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newOrderDetailsScreen);
  }

  onTapImgVectorFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myWalletScreen);
  }
}
