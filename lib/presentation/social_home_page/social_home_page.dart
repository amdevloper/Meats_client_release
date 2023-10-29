import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_image_view.dart';
import '../Establishment_Sign_Up/list_establishment_post_item_widget.dart';
import '../menu1_page/widgets/listrectangle4322_one_item_widget.dart';
import '../social_home_page/widgets/listyourstory_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SocialHomePage extends StatefulWidget {
  const SocialHomePage({super.key});

  @override
  State<SocialHomePage> createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> with TickerProviderStateMixin {
  tabBarList() {
    return [Tab(text: "Social"),
      Tab(text: "I am Buying"),
    ];
  }

  late TabController _nestedTabController;


  @override
  void initState() {
    // TODO: implement initState
    _nestedTabController  = TabController(length: tabBarList().length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar:CustomAppBar(
        height: getVerticalSize(95.00),
    leadingWidth: size.width,
    leading: Container(
              // color: Colors.blue,
              height: 40,
              width: size.width,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    onTap: (index) {
                      // print("Amit Amit Amit $index");
                      // selectionValue = index;
                      _nestedTabController.animateTo(index);
                      // setState(() {
                      //
                      //  });
                    },
                    controller: _nestedTabController,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.pink,
                    labelColor: ColorConstant.gray90001,
                    tabAlignment: TabAlignment.start,
                    // indicator: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50), // Creates border
                    //     color: Colors.blue),
                    // labelColor: Colors.black, //<-- selected text color
                    unselectedLabelColor: Colors.grey,//
                    isScrollable: true,
                    dividerColor: Colors.transparent,
                    // padding: getPadding(left: 5),
                    indicatorPadding: EdgeInsets.zero,
                     // labelPadding: getPadding(bottom: 5),
                    labelStyle: const TextStyle(fontSize: 18,fontFamily: 'Family Name'),  //For Selected tab
                    unselectedLabelStyle: const TextStyle(fontSize: 15.0,fontFamily: 'Family Name'),
                    //For Un-selected Tabs
                    tabs: tabBarList(),
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: Colors.grey,
                    width: size.width,
                    height: 1,
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.friendList);

            }, icon: const Icon(
                  Icons.person_outline_sharp,
                  color: Colors.grey,
                )),
              )],),

            body: TabBarView(
        controller: _nestedTabController,
        physics: const NeverScrollableScrollPhysics(),
    children: <Widget>[
      SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child:      Padding(
            padding: getPadding(
                left: 20, top: 17, right: 20),
            child: ListView.separated(
                physics:
                const NeverScrollableScrollPhysics(),
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
                  return
                    // Column(
                    // children: itemList.map((userone){

                    FutureBuilder<List>(
                        future: orderById(),
                        builder: (BuildContext context, AsyncSnapshot<List>snapshot) {
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

                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return Column(
                                children: snapshot.data!.map((userone){
                                  return ListestablishmentPostItemWidget(
                                    listItemArray: userone,
                                  );}).toList());
                          }}
                    );
                }
            ),
          ),
        ),
      ),
      SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child:      Padding(
            padding: getPadding(
                left: 20, top: 17, right: 20),
            child: ListView.separated(
                physics:
                const NeverScrollableScrollPhysics(),
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
                  return
                    // Column(
                    // children: itemList.map((userone){

                    FutureBuilder<List>(
                        future: orderById(),
                        builder: (BuildContext context, AsyncSnapshot<List>snapshot) {
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

                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return Column(
                                children: snapshot.data!.map((userone){
                                  return ListestablishmentPostItemWidget(
                                    listItemArray: userone,
                                  );}).toList());
                          }}
                    );
                }
            ),
          ),
        ),
      ),
    ]),
            floatingActionButton:
            SpeedDial( //Speed dial menu
              // marginBottom: 10, //margin bottom
              icon: Icons.add, //icon on Floating action button
              activeIcon: Icons.close, //icon when menu is expanded on button
              backgroundColor: ColorConstant.gray90001, //background color of button
              foregroundColor: Colors.white, //font color, icon color in button
              activeBackgroundColor: Colors.deepPurpleAccent, //background color when menu is expanded
              activeForegroundColor: Colors.white,
              // buttonSize: 56.0, //button size
              visible: true,
              closeManually: false,
              curve: Curves.bounceIn,
              overlayColor: Colors.black,
              overlayOpacity: 0.5,
              onOpen: () => print('OPENING DIAL'), // action when menu opens
              onClose: () => print('DIAL CLOSED'), //action when menu closes

              elevation: 8.0, //shadow elevation of button
              shape: CircleBorder(), //shape of button

              children: [
                SpeedDialChild( //speed dial child
                  child: Icon(Icons.post_add),
                  backgroundColor: ColorConstant.gray90001,
                  foregroundColor: Colors.white,
                  label: 'Create a post',
                  labelStyle: TextStyle(fontSize: 18.0),
                  onTap: () => onTapBtnFloatingactionbutton(context),
                  onLongPress: () {
                    onTapBtnFloatingactionbutton(context);
                  },
                ),
                SpeedDialChild(
                  child: const Icon(Icons.video_camera_front_rounded),
                  backgroundColor: ColorConstant.gray90001,
                  foregroundColor: Colors.white,
                  label: 'Go Live',
                  labelStyle: const TextStyle(fontSize: 18.0),
                  onTap: () => Navigator.pushNamed(context, AppRoutes.liveHomePage),
                  onLongPress: () => print('SECOND CHILD LONG PRESS'),
                ), //add more menu item childs here
              ],
            ),
            // CustomFloatingButton(
            //     height: 50,
            //     width: 50,
            //     onTap: () {
            //       onTapBtnFloatingactionbutton(context);
            //     },
            //     child: CustomImageView(
            //         svgPath: ImageConstant.imgPlus,
            //         height: getVerticalSize(25.00),
            //         width: getHorizontalSize(25.00)))

        ),
    );

  }

  onTapBtnFloatingactionbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterImageUploadScreen);
  }

  onTapTxtLaPinosPizza(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userProfileScreen);
  }

  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.socialPostMenuScreen);
  }

  onTapTxtThereisanewths(BuildContext context) async {
    var url = 'https://rb.gy/hdotmb';
    if (!await launch(url)) {
      throw 'Could not launch https://rb.gy/hdotmb';
    }
  }

  onTapTxtThereisanewths3(BuildContext context) async {
    var url = 'https://rb.gy/hdotmb';
    if (!await launch(url)) {
      throw 'Could not launch https://rb.gy/hdotmb';
    }
  }

    Future<List> orderById() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
    'GET',
    Uri.parse(
    "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/post/$userId"),
    )..headers.addAll({
    'Content-Type': 'application/json',
    'Authorization': token!,
    });
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    final key = object.keys.elementAt(1);
    List value = object[key];
    // final val = value["items"];
    // List<dynamic> members = List.of(map["members"]);
    return value;
    }
  }
