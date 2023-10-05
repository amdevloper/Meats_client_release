import 'dart:convert';

import 'package:Meats/presentation/restaurants_details_screen/restaurants_details_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../restaruntListView.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_6.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_floating_button.dart';
import '../../../widgets/custom_image_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
import 'package:http/http.dart' as http;

import 'member_home_screen/widgets/slider_one_item_widget.dart';


// ignore_for_file: must_be_immutable
class ItemByRestaurant extends StatefulWidget {
  final dynamic? arguments;

  const ItemByRestaurant({super.key, this.arguments});

  @override
  State<ItemByRestaurant> createState() => _ItemByRestaurantState();
}

class _ItemByRestaurantState extends State<ItemByRestaurant> {

  int silderIndex = 1;

  int silderIndex1 = 1;
  List restarentArray = [];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final TextEditingController _textEditingController = TextEditingController();


  Future<Map<String, dynamic>> itemByRestaurant() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    // int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/restaurant?item=${widget.arguments.toString().toLowerCase()}"),
    )..headers.addAll({
      'Content-Type': 'application/json',
      'Authorization': token!,
    });
    // var params = {"id": userId};
    // request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object;
  }


  @override
  Widget build(BuildContext context) {
    print("snapshot.data![""] ${widget.arguments}");
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(40.00),
              centerTitle: true,
              title: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: getPadding(left: 18, top: 8, right: 20),
                        child: Row(children: [
                          AppbarImage(
                              height: getSize(24.00),
                              width: getSize(24.00),
                              svgPath: ImageConstant.imgArrowleft,
                              onTap: () => onTapArrowleft41(context)),
                          AppbarSubtitle6(
                              text: "Restaurant",
                              margin: getMargin(left: 13, top: 1, bottom: 3)),
                          // AppbarImage(
                          //     height: getSize(18.00),
                          //     width: getSize(18.00),
                          //     svgPath:
                          //         ImageConstant.imgSearchBlueGray30018x18,
                          //     margin: getMargin(left: 168, top: 2, bottom: 4),
                          //     onTap: () => onTapSearch1(context)),
                          // AppbarImage(
                          //     height: getVerticalSize(20.00),
                          //     width: getHorizontalSize(18.00),
                          //     svgPath: ImageConstant.imgNotification,
                          //     margin: getMargin(left: 15, top: 2, bottom: 2))
                        ])),
                    // Container(
                    //     height: getVerticalSize(1.00),
                    //     width: getHorizontalSize(374.00),
                    //     margin: getMargin(left: 1, top: 14),
                    //     decoration:
                    //         BoxDecoration(color: ColorConstant.gray300))
                    const SizedBox(height: 10,),
                    // SearchBar(
                    //   controller: _textEditingController,
                    //   // elevation: MaterialStateProperty.all(20.0),
                    //   constraints: const BoxConstraints(
                    //     maxWidth: 370,
                    //   ),
                    //   // side: MaterialStateProperty.all(const BorderSide(color: Colors.pinkAccent)),
                    //   shape: MaterialStateProperty.all(const ContinuousRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(50)),
                    //     // side: BorderSide(color: Colors.pinkAccent),
                    //   )),
                    //   // overlayColor: MaterialStateProperty.all(Colors.pinkAccent),
                    //   // shadowColor: MaterialStateProperty.all(Colors.pinkAccent),
                    //   backgroundColor: MaterialStateProperty.all(Colors.white),
                    //   hintText: 'Type keyword',
                    //   hintStyle: MaterialStateProperty.all(const TextStyle(color: Colors.grey)),
                    //   textStyle: MaterialStateProperty.all(
                    //       const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)
                    //   ),
                    //   onChanged: (String value) {
                    //     print('value: $value');
                    //   },
                    //   onTap: () {
                    //     print('tapped');
                    //     // The code below only works with SearchAnchor
                    //     // _searchController.openView();
                    //   },
                    //   onSubmitted: (value) {
                    //     // print('submitted: ${_textEditingController.value.text}');
                    //   },
                    //   leading: const Icon(Icons.search),
                    //   trailing: [
                    //     IconButton(
                    //       icon: const Icon(Icons.keyboard_voice),
                    //       onPressed: () {
                    //         print('Use voice command');
                    //       },
                    //     ),
                    //     // IconButton(
                    //     //   icon: const Icon(Icons.camera_alt),
                    //     //   onPressed: () {
                    //     //     print('Use image search');
                    //     //   },
                    //     // ),
                    //   ],
                    // ),
                  ]),
              styleType: Style.bgFillWhiteA700_1),
          body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Padding(
                        padding:
                        getPadding(left: 20, top: 10, right: 19),
                        child: FutureBuilder<Map<String, dynamic>>(
    future: itemByRestaurant(),
    builder: (BuildContext context,
    AsyncSnapshot<Map<String, dynamic>> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else {
        return GridView.builder(
            shrinkWrap: true,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(235.00),
                crossAxisCount: 2,
                mainAxisSpacing: getHorizontalSize(19.00),
                crossAxisSpacing: getHorizontalSize(19.00)),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snapshot.data!["response"].length,
            itemBuilder: (context, index) {
              return RestaurantListView(
                index: index,
                listOfRestarunt: snapshot.data!["response"][index],
                onTapImgImagePlaceholderOne:
                    (arguments) {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                      RestaurantsDetailsScreen(
                          arguments: arguments)));
                },

                // onTapImgImagePlaceholderOne: onTapImgImagePlaceholder,
                // index: index,
                // images: imagesV,
                // onImageRemove:(value) =>  imageRemove(value),
              );
            });
    }
    })
                        )),
                  ))),
          // bottomNavigationBar:
          //     CustomBottomBar(onChanged: (BottomBarEnum type) {}),
          // floatingActionButton: CustomFloatingButton(
          //     height: 50,
          //     width: 50,
          //     onTap: () {
          //       onTapBtnFloatingactionbutton(context);
          //     },
          //     child: CustomImageView(
          //         svgPath: ImageConstant.imgRefreshWhiteA700,
          //         height: getVerticalSize(25.00),
          //         width: getHorizontalSize(25.00)))
        );
  }

  onTapBtnFloatingactionbutton(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.goLiveHomeScreen);
  }

  onTapImgImagePlaceholder() {
    Navigator.pushNamed(context, AppRoutes.restaurantsDetailsScreen);
  }

  onTapImgImagePlaceholderOne() {
    Navigator.pushNamed(context, AppRoutes.restaurantsDetailsScreen);
  }

  onTapArrowleft41(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSearch1(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.searchRestaurantsScreen);
  }
}
