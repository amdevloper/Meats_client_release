import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import '../my_orders_page/widgets/listlanguage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../order_completed_details_screen/order_completed_details_screen.dart';
import '../order_completed_page/widgets/listlanguage1_item_widget.dart';
import '../prepare_order_full_details_screen/prepare_item_widget.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({Key? key}) : super(key: key);

  @override
  State<MyOrdersPage> createState() => _State();
}

class _State extends State<MyOrdersPage> with TickerProviderStateMixin {

  TextEditingController group318Controller = TextEditingController();
  TextEditingController rejectedResionController = TextEditingController();


  late TabController _nestedTabController;
  List<String> dropdownItemList = ["Influencer", "Establishment", "Member", "Delivery"];

  List<dynamic> newOrderArray = [];
  List<dynamic> preparingOrderArray = [];
  List<dynamic> comparingOrderArray = [];
  late final SharedPreferences prefs;

  Future<void> todaysOrderStatastic() async {
    newOrderArray.removeRange(0, newOrderArray.length);
    preparingOrderArray.removeRange(0, preparingOrderArray.length);
    comparingOrderArray.removeRange(0, comparingOrderArray.length);

    print(newOrderArray.length);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/all-orders"),
    )..headers.addAll({
      'Content-Type': 'application/json',
      'Authorization': token!,
    });
    var params = {
      "id" : userId
    };

    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());

    for(final val in object["response"]) {
      if(val["status"] == "order placed") {
        newOrderArray!.add(val);
      }
    }
    for(final val in object["response"]) {
      // if(val["status"] == "Rejected" || val["status"] == "Accepted") {
      if(val["status"] == "Accepted") {
        preparingOrderArray!.add(val);
      }
    }
    for(final val in object["response"]) {
      // if(val["status"] == "Preparing") {
      if(val["status"] == "Rejected" || val["status"] == "Ready") {
        comparingOrderArray!.add(val);
      }
    }
  }

@override
void initState() {
    // TODO: implement initState
  WidgetsBinding.instance.addPostFrameCallback((_){
    _openPreferences();
    _asyncMethod();
  });
    super.initState();
  }

  _openPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  _asyncMethod() async {
   await todaysOrderStatastic();
      setState(() {
      });
  }

  @override
  Widget build(BuildContext context) {
    tabBarList() {
      return [
        Tab(text: "New Order (${newOrderArray.length})"),
        Tab(text: "Preparing (${preparingOrderArray.length})"),
        Tab(text: "Completed (${comparingOrderArray.length})"),
      ];
    }
    _nestedTabController  = TabController(length: tabBarList().length, vsync: this);
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            appBar: CustomAppBar(
              height: getVerticalSize(84.00),
              leadingWidth: size.width,
              leading: Column(
              children: [
              Text(
              "My Orders",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium14,
              ),
              Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                MediaQuery.of(context).size.width,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
              ),
            ),
              ),
              Stack(
                  children: <Widget> [
                     SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TabBar(
                              controller: _nestedTabController,
                              indicatorColor: Colors.black,
                              labelColor: Colors.black,
                              isScrollable: true,
                              labelStyle: const TextStyle(fontSize: 13.0,fontFamily: 'Family Name'),  //For Selected tab
                              unselectedLabelStyle: const TextStyle(fontSize: 10.0,fontFamily: 'Family Name'), //For Un-selected Tabs
                              tabs: tabBarList(),
                            ),
                          ],
                        ),
                      ),
              Positioned(
                  right: 5,
                  bottom: 1,
                  child:
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          MediaQuery.of(context).size.width,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray300,
                        ),
                      ),
                    ),
                   ),
                  ]
              ),

              ])),
            backgroundColor: Colors.transparent,
            body:
            TabBarView(
              controller: _nestedTabController,
              // physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                SingleChildScrollView(
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15, top: 15),
                    child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20.00));
                              },
                              itemCount: newOrderArray.length,
                              itemBuilder: (context, index) {
                                return ListlanguageNewOrderItemWidget(
                                    objectForOrderList: newOrderArray,
                                    index: index,
                                    onTapTxtLanguage: () =>
                                        onTapTxtLanguage(context),
                                    onUIRefresh: _asyncMethod,
                                    onTapReject: () =>
                                        showMessageView(context));
                              }),
                    ),
                  ),
                SingleChildScrollView(
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15, top: 15),
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(20.00));
                        },
                        itemCount: preparingOrderArray.length,
                        itemBuilder: (context, index) {
                          return PrepaireItemWidget(
                              objectForOrderList: preparingOrderArray,
                              index: index,
                              onTapTxtLanguage: () => onTapTxtLanguage(context));
                        }),
                  ),
                ),
                SingleChildScrollView(
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15, top: 15),
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(20.00));
                        },
                        itemCount: comparingOrderArray.length,
                        itemBuilder: (context, index) {
                          return Listlanguage1ItemWidget(
                              objectForOrderList: comparingOrderArray,
                              index: index,
                              onTapTxtLanguage: () => onTapOrderTxtLanguage(context, index, comparingOrderArray));
                        }),
                  ),
                )
              ],)


            ));
  }

  Future showMessageView(BuildContext context) {
    String? rejectedId = prefs.getString('rejectedId');
    String? rejectedTime = prefs.getString('rejectedTime');

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 430,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        335.00,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Order Reject",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium24Black900,
                          ),
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              333.00,
                            ),
                            margin: getMargin(
                              top: 15,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray300,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 19,
                              top: 18,
                              right: 27,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order ID: $rejectedId",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14,
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "$rejectedTime",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12Bluegray500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                267.00,
                              ),
                              margin: getMargin(
                                left: 19,
                                top: 17,
                              ),
                              child: Text(
                                "Are you sure you want to reject this order ?",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular16Gray900,
                              ),
                            ),
                          ),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: rejectedResionController,
                              hintText: "Select rejection result",
                              margin: getMargin(top: 19),
                              // isClickEnabled: true,
                              variant:
                              TextFormFieldVariant.OutlineIndigo900,
                              // fontStyle:
                              //     TextFormFieldFontStyle.RobotoMedium16,
                              textInputType: TextInputType.emailAddress),

                          CustomButton(
                            onTap: (){
                              submitRejectRequest(context);
                            },
                            height: 48,
                            width: 290,
                            text: "Submit",
                            margin: getMargin(
                              top: 28,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                            child: Padding(
                              padding: getPadding(
                                top: 18,
                                bottom: 53,
                              ),
                              child: Text(
                                "Cancel",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoBold16Bluegray300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

    Future<dynamic> submitRejectRequest(BuildContext context) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      int? userId = prefs.getInt('restarantId');
      String? rejectedId = prefs.getString('rejectedId');


      final response = await http.post(
        Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/reject/order'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': token!,
        },
        body: jsonEncode({
          "status" : "Rejected",
          "reject_reason" : rejectedResionController.value.text,
          "restaurant_id" : userId,
          "orderId" : rejectedId
        }),
      );
      if (response.statusCode == 200) {
        // Map<dynamic, dynamic> data = jsonDecode(response.body);
        // setState(() async {
           Navigator.of(context).pop();
           await _asyncMethod();
        // });
      }
    }
  Future<dynamic> submitAcceptRequest(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    String? orderId = prefs.getString('acceptOrderId');


    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/update/order'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token!,
      },
      body: jsonEncode({
        "status" : "Accepted",
        "id" : orderId,
        "time" : "30"
      }),
    );
    if (response.statusCode == 200) {

      // setState(() async {
        await _asyncMethod();
      // });
    }
  }

  onTapTxtLanguage(BuildContext context) {
    submitAcceptRequest(context);
  }

  onTapOrderTxtLanguage(BuildContext context, index, comparingOrderArray) async {
    print("hkhkhkhkhkhkhkhk ${comparingOrderArray[index]}");
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderCompletedDetailsScreen(arguments: comparingOrderArray[index],),
        ));
  }

  onTapReject(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.group18137Screen);
  }
}
