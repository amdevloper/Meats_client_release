import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meats/presentation/lates_offer_list.dart';
import 'package:meats/presentation/member/item_by_restaurant.dart';
import 'package:meats/presentation/member/member_home_screen/widgets/category_item_widget.dart';
import 'package:meats/presentation/member/member_home_screen/widgets/pop_category_item_widget.dart';
import 'package:meats/presentation/member/member_home_screen/widgets/slider_one_item_widget.dart';
import 'package:meats/presentation/member/restaurants_screen/restaurants_screen.dart';
import 'package:meats/presentation/restaurants_details_screen/restaurants_details_screen.dart';
import 'package:meats/routes/app_routes.dart';
import 'package:meats/theme/app_style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'core/utils/color_constant.dart';
import 'core/utils/size_utils.dart';
import 'package:http/http.dart' as http;

class MemberViewClass extends StatefulWidget {
  final ValueKey key;

  const MemberViewClass({required this.key}) : super(key: key);

  @override
  State<MemberViewClass> createState() => _MemberViewClassState();
}

class _MemberViewClassState extends State<MemberViewClass> {
  int silderIndex = 1;

  int silderIndex1 = 1;
  dynamic? restaurentItem;
  String? valueAsPerSelection(selectedIndex) {
    String? value;
    switch (selectedIndex) {
      case 0:
        {
          value = "Buy";
        }
        break;

      case 1:
        {
          value = "Eat";
        }
        break;

      case 2:
        {
          value = "Eat";
        }
        break;

      case 3:
        {
          value = "Buy";
        }
        break;
    }
    return value;
  }

  String? valueAsPerSubelection(selectedIndex) {
    String? value;
    switch (selectedIndex) {
      case 0:
        {
          value = "Grocery";
        }
        break;

      case 1:
        {
          value = "Restaurant";
        }
        break;

      case 2:
        {
          value = "Grocery";
        }
        break;

      case 3:
        {
          value = "Buy";
        }
        break;
    }
    return value;
  }


  Future<Map<String, dynamic>> allRestaurantItems() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    // int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/items"),
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


  Future<Map<String, dynamic>> allRestaurantDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    // int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/all/restaurant"),
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
  void initState() {
    // TODO: implement initState
    super.initState();
    //  Future.delayed(Duration.zero, () async {
    //    allRestaurantItems().then((value)
    //    {
    //      restaurentItem = value;
    //    });
    //   print("restaurentItemrestaurentItem $restaurentItem");
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: FutureBuilder<Map<String, dynamic>>(
            future: allRestaurantDetails(),
            builder: (BuildContext context,
                AsyncSnapshot<Map<String, dynamic>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Column(
                  children: [
                    Container(
                        height: getVerticalSize(177.00),
                        width: getHorizontalSize(335.00),
                        margin: getMargin(top: 11),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: getVerticalSize(177.00),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    // setState(() {
                                    silderIndex1 = index;
                                    // });
                                  }),
                              itemCount: 3,
                              itemBuilder: (context, index, realIndex) {
                                return SliderOneItemWidget();
                              }),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  height: getVerticalSize(7.00),
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: silderIndex1,
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 9,
                                          activeDotColor:
                                              ColorConstant.gray90001,
                                          dotColor: ColorConstant.gray300,
                                          dotHeight: getVerticalSize(7.00),
                                          dotWidth: getHorizontalSize(7.00)))))
                        ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 11, top: 15),
                            child: Text(
                                "What you want to ${valueAsPerSelection(int.parse(widget.key.value))}?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoBold18Black900))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            height: getVerticalSize(136.00),
                            child: FutureBuilder<Map<String, dynamic>>(
    future: allRestaurantItems(),
    builder: (BuildContext context,
    AsyncSnapshot<Map<String, dynamic>> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else {
        return
          ListView.separated(
              padding: getPadding(left: 11, top: 11),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(
                    height: getVerticalSize(16.00));
              },
              itemCount: snapshot.data!["items"].length,
              itemBuilder: (context, index) {
                return CategoryItemWidget(
                  itemList: snapshot.data!["items"],
                  index: index,
                  onTapImgImagePlaceholderOne:
                      (arguments) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            ItemByRestaurant(
                                arguments: arguments)));
                  },

                );
              });

    }
    }),
                            )),
                    Padding(
                        padding: getPadding(left: 11, top: 15, right: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Popular ${valueAsPerSubelection(int.parse(widget.key.value))}",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold18Black900),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                        RestaurantsScreen(
                                          arguments: snapshot.data!["response"]['popular'],)));
                                    // onTapTxtViewAll(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(bottom: 0, right: 0),
                                      child: Text("View All",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular14Gray60001)))
                            ])),
                    Container(
                        height: getVerticalSize(186.00),
                        child: ListView.separated(
                            padding: getPadding(left: 11, top: 11),
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(16.00));
                            },
                            itemCount: snapshot.data!["response"]["popular"].length,
                            itemBuilder: (context, index) {
                              // print("snapshot.data![""] ${snapshot.data!["response"]}");
                              // snapshot.data!["response"].map((userone) {
                                return PopCategoryItemWidget(
                                  listOfRestarunt: snapshot.data!["response"]["popular"][index],
                                  onTapImgImagePlaceholderOne:
                                  (arguments) {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                        RestaurantsDetailsScreen(
                                          arguments: arguments,)));
                                  },
                                );
                              // });
                            })),
                    Container(
                        height: getVerticalSize(177.00),
                        width: getHorizontalSize(335.00),
                        margin: getMargin(top: 30),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: getVerticalSize(177.00),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    // setState(() {
                                    silderIndex1 = index;
                                    // });
                                  }),
                              itemCount: 3,
                              itemBuilder: (context, index, realIndex) {
                                return SliderOneItemWidget();
                              }),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  height: getVerticalSize(7.00),
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: silderIndex1,
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 9,
                                          activeDotColor:
                                              ColorConstant.gray90001,
                                          dotColor: ColorConstant.gray300,
                                          dotHeight: getVerticalSize(7.00),
                                          dotWidth: getHorizontalSize(7.00)))))
                        ])),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("Latest Offer",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold18Black900)),
                            Align(
                                alignment: Alignment.topLeft,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                          RestaurantsScreen(
                                            arguments: snapshot.data!["response"]['latestOffers'],)));
                                      // onTapTxtViewAll(context);
                                    },
                                    child: Text("View All",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Gray60001))),
                          ],
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: getVerticalSize(215.00),
                                child: ListView.separated(
                                    padding: getPadding(left: 19, top: 17),
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16.00));
                                    },
                                    itemCount: snapshot.data!["response"]["latestOffers"].length,
                                    itemBuilder: (context, index) {
                                      return  LatestOfferList(
                                        index: index,
                                        listOfRestarunt: snapshot.data!["response"]["latestOffers"][index],
                                        onTapImgImagePlaceholderOne:
                                            (arguments) {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                              RestaurantsDetailsScreen(
                                                arguments: arguments,)));
                                        },
                                      );
                                      // return LatestCategoryItemWidget();
                                    }))),
                      ],
                    ),
                  ],
                );
              }
            }),
      ),
    );
  }

  // Future<dynamic> createLocation(BuildContext context) async {
  //   try {
  //     prefs = await SharedPreferences.getInstance();
  //     String? token = prefs.getString('token');
  //     int? userId = prefs.getInt('restarantId');
  //
  //     final response = await http.post(
  //       Uri.parse(
  //           'http://ec2-34-227-30-202.compute-1.amazonaws.com/api/update/restaurant/location'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': token!,
  //       },
  //       body: jsonEncode(<dynamic, dynamic>{
  //         "id": userId,
  //         "location":
  //         "${locationAddressTextController.value.text} ${cityTextController.value.text} ${pinTextController.value.text}",
  //         "lat": "124556.899",
  //         "long": "-3454565.8"
  //       }),
  //     );
  //
  //     if (response.statusCode == 200) {
  //       // print("response.statusCode ${response.body}");
  //       return jsonDecode(response.body);
  //     }
  //   } catch (e) {
  //     print("exceptione $e");
  //   }
  // }


  onTapImgImagePlaceholder() {
    Navigator.pushNamed(context, AppRoutes.restaurantsDetailsScreen);
  }

  onTapTxtViewAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsScreen);
  }
}
