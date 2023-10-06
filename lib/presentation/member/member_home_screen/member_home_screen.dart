import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meats/presentation/member/member_home_screen/widgets/slider_one_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../member_view_class.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_6.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_floating_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class MemberHomeScreen extends StatefulWidget {
  const MemberHomeScreen({super.key});

  @override
  State<MemberHomeScreen> createState() => _MemberHomeScreenState();
}

class _MemberHomeScreenState extends State<MemberHomeScreen> with TickerProviderStateMixin{
  int silderIndex = 1;

  int silderIndex1 = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController _nestedTabController;
   int selectionValue = 0;

  List<Widget> tabBarList() {
    return [
    Tab(
        child: Container(
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.redAccent, width: 1)),
          child: const Align(
            alignment: Alignment.center,
            child: Text("Restaurant"),
          ),
        ),
      ),

     Tab(
        child: Container(
          width: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.redAccent, width: 1)),
          child: const Align(
            alignment: Alignment.center,
            child: Text("Grocery"),
          ),
        ),
      ),
       Tab(
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.redAccent, width: 1)),
          child: const Align(
            alignment: Alignment.center,
            child: Text("Pharmacy"),
          ),
        ),
      ),

    Tab(
        child: Container(
          width: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.redAccent, width: 1)),
          child: const Align(
            alignment: Alignment.center,
            child: Text("Alcohol"),
          ),
        ),
      ),
    ];
  }


  String? valueAsPerSelection(selectedIndex) {
    String? value;
    switch(selectedIndex) {
      case 0: {
        value = "Eat";
      }
      break;

      case 1: {

        value = "Buy";
      }
      break;

      case 2: {
        value = "Eat";
      }
      break;

      case 3: {
        value = "Buy";
      }
      break;
    }
    return value;
  }


  @override
  void initState() {
    // TODO: implement initState
    _nestedTabController  = TabController(length: tabBarList().length, vsync: this);
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
      return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                 height: getVerticalSize(95.00),
                 leadingWidth: size.width,
                leading: Column(
                  children: [
                    Row(
                      children: [
                        AppbarImage(
                            height: getSize(24.00),
                            width: getSize(24.00),
                            svgPath: ImageConstant.imgLocationGray9000132x32,
                            margin: getMargin(left: 19, top: 6, bottom: 11)),
                    AppbarSubtitle6(
                        text: "Work - Lakewood, CA, USA",
                        margin: getMargin(left: 12)
                    ),
                      ],
                    ),
                    Container(
                        // color: Colors.blue,
                        height: 40,
                        width: size.width,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: TabBar(
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
                        indicatorColor: Colors.transparent,
                        labelColor: Colors.black,
                        tabAlignment: TabAlignment.start,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50), // Creates border
                            color: Colors.white),
                        // labelColor: Colors.black, //<-- selected text color
                        unselectedLabelColor: Colors.grey,//
                        isScrollable: true,
                        dividerColor: Colors.transparent,
                        padding: getPadding(left: 5),
                        indicatorPadding: EdgeInsets.zero,
                        labelPadding: getPadding(left: 5),
                        labelStyle: const TextStyle(fontSize: 18,fontFamily: 'Family Name'),  //For Selected tab
                        unselectedLabelStyle: const TextStyle(fontSize: 15.0,fontFamily: 'Family Name'),
                        //For Un-selected Tabs
                        tabs: tabBarList(),
                      ),
                    ),
                  ],
                ),

                // actions: [
                //   AppbarImage(
                //       height: getSize(18.00),
                //       width: getSize(18.00),
                //       svgPath: ImageConstant.imgSearchBlueGray30018x18,
                //       margin: getMargin(left: 21, top: 10, bottom: 22),
                //       onTap: () => onTapSearch(context)),
                //   AppbarImage(
                //       height: getVerticalSize(20.00),
                //       width: getHorizontalSize(18.00),
                //       svgPath: ImageConstant.imgNotification,
                //       margin:
                //           getMargin(left: 15, top: 10, right: 21, bottom: 20))
                // ],
                styleType: Style.bgFillWhiteA700),
            body: Container(

      //height: 50,
      //width: 800,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: TabBarView(
              controller: _nestedTabController,
              physics: const NeverScrollableScrollPhysics(),
              children:  const <Widget>[
                MemberViewClass(key: ValueKey("1")),
                MemberViewClass(key: ValueKey("2")),
                MemberViewClass(key: ValueKey("3")),
                MemberViewClass(key: ValueKey("4")),
                // SingleChildScrollView(
                //   child:  Padding(
                //     padding: const EdgeInsets.only(left: 15,right: 15),
                //     child: uiRefresh(selectionValue),
                //   ),
                // ),
                // SingleChildScrollView(
                //   child:  Padding(
                //     padding: const EdgeInsets.only(left: 15,right: 15),
                //     child: uiRefresh(selectionValue),
                //   ),
                // ),
              ],),
            )
        ));
  }


  Widget uiRefresh(selectionIndex) {
    return Column(
      children: [
        Container(
            height: getVerticalSize(177.00),
            width: getHorizontalSize(335.00),
            margin: getMargin(top: 25),
            child: Stack(
                alignment:
                Alignment.bottomCenter,
                children: [
                  CarouselSlider.builder(
                      options: CarouselOptions(
                          height:
                          getVerticalSize(
                              177.00),
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll:
                          true,
                          scrollDirection:
                          Axis.horizontal,
                          onPageChanged:
                              (index, reason) {
                             // setState(() {
                              silderIndex1 =
                                  index;
                            // });
                          }),
                      itemCount: 3,
                      itemBuilder: (context,
                          index, realIndex) {
                        return SliderOneItemWidget();
                      }),
                  Align(
                      alignment: Alignment
                          .bottomCenter,
                      child: SizedBox(
                          height:
                          getVerticalSize(
                              7.00),
                          child: AnimatedSmoothIndicator(
                              activeIndex:
                              silderIndex1,
                              count: 3,
                              axisDirection: Axis
                                  .horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 9,
                                  activeDotColor:
                                  ColorConstant
                                      .gray90001,
                                  dotColor:
                                  ColorConstant
                                      .gray300,
                                  dotHeight:
                                  getVerticalSize(
                                      7.00),
                                  dotWidth:
                                  getHorizontalSize(
                                      7.00)))))
                ])),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: getPadding(
                    left: 19, top: 30),
                child: Text(
                    "What you want to ${valueAsPerSelection(selectionIndex)}  ?",
                    overflow:
                    TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle
                        .txtRobotoBold18Black900))),
        // Align(
        //     alignment: Alignment.centerRight,
        //     child: SizedBox(
        //         height: getVerticalSize(136.00),
        //         child: ListView.separated(
        //             padding: getPadding(
        //                 left: 19, top: 17),
        //             scrollDirection:
        //             Axis.horizontal,
        //             physics:
        //             const BouncingScrollPhysics(),
        //             separatorBuilder:
        //                 (context, index) {
        //               return SizedBox(
        //                   height:
        //                   getVerticalSize(
        //                       16.00));
        //             },
        //             itemCount: 4,
        //             itemBuilder:
        //                 (context, index) {
        //               return CategoryItemWidget();
        //             }))),
        // Padding(
        //     padding: getPadding(
        //         left: 19, top: 35, right: 20),
        //     child: Row(
        //         mainAxisAlignment:
        //         MainAxisAlignment
        //             .spaceBetween,
        //         crossAxisAlignment:
        //         CrossAxisAlignment.start,
        //         children: [
        //           Text("Popular Restaurants",
        //               overflow:
        //               TextOverflow.ellipsis,
        //               textAlign: TextAlign.left,
        //               style: AppStyle
        //                   .txtRobotoBold18Black900),
        //           GestureDetector(
        //               onTap: () {
        //                 onTapTxtViewAll(
        //                     context);
        //               },
        //               child: Padding(
        //                   padding: getPadding(
        //                       bottom: 0,right: 0),
        //                   child: Text(
        //                       "View All",
        //                       overflow:
        //                       TextOverflow
        //                           .ellipsis,
        //                       textAlign:
        //                       TextAlign
        //                           .left,
        //                       style: AppStyle
        //                           .txtRobotoRegular14Gray60001)))
        //         ])),
        // Align(
        //     alignment: Alignment.centerRight,
        //     child: Container(
        //         height: getVerticalSize(136.00),
        //         child: ListView.separated(
        //             padding: getPadding(
        //                 left: 19, top: 17),
        //             scrollDirection:
        //             Axis.horizontal,
        //             physics:
        //             const BouncingScrollPhysics(),
        //             separatorBuilder:
        //                 (context, index) {
        //               return SizedBox(
        //                   height:
        //                   getVerticalSize(
        //                       16.00));
        //             },
        //             itemCount: 4,
        //             itemBuilder:
        //                 (context, index) {
        //               return PopCategoryItemWidget();
        //             }))),
        // Container(
        //     height: getVerticalSize(177.00),
        //     width: getHorizontalSize(335.00),
        //     margin: getMargin(top: 30),
        //     child: Stack(
        //         alignment:
        //         Alignment.bottomCenter,
        //         children: [
        //           CarouselSlider.builder(
        //               options: CarouselOptions(
        //                   height:
        //                   getVerticalSize(
        //                       177.00),
        //                   initialPage: 0,
        //                   autoPlay: true,
        //                   viewportFraction: 1.0,
        //                   enableInfiniteScroll:
        //                   true,
        //                   scrollDirection:
        //                   Axis.horizontal,
        //                   onPageChanged:
        //                       (index, reason) {
        //                      // setState(() {
        //                       silderIndex1 =
        //                           index;
        //                      // });
        //                   }),
        //               itemCount: 3,
        //               itemBuilder: (context,
        //                   index, realIndex) {
        //                 return SliderOneItemWidget();
        //               }),
        //           Align(
        //               alignment: Alignment
        //                   .bottomCenter,
        //               child: SizedBox(
        //                   height:
        //                   getVerticalSize(
        //                       7.00),
        //                   child: AnimatedSmoothIndicator(
        //                       activeIndex:
        //                       silderIndex1,
        //                       count: 3,
        //                       axisDirection: Axis
        //                           .horizontal,
        //                       effect: ScrollingDotsEffect(
        //                           spacing: 9,
        //                           activeDotColor:
        //                           ColorConstant
        //                               .gray90001,
        //                           dotColor:
        //                           ColorConstant
        //                               .gray300,
        //                           dotHeight:
        //                           getVerticalSize(
        //                               7.00),
        //                           dotWidth:
        //                           getHorizontalSize(
        //                               7.00)))))
        //         ])),
        // Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Align(
        //             alignment:
        //             Alignment.topLeft,
        //             child: Text(
        //                 "Latest Offer",
        //                 overflow:
        //                 TextOverflow
        //                     .ellipsis,
        //                 textAlign:
        //                 TextAlign
        //                     .left,
        //                 style: AppStyle
        //                     .txtRobotoBold18Black900)),
        //
        //         Align(
        //             alignment:
        //             Alignment.topLeft,
        //             child: GestureDetector(
        //                 onTap: () {
        //                   onTapTxtViewAll(
        //                       context);
        //                 },
        //                 child: Text(
        //                     "View All",
        //                     overflow:
        //                     TextOverflow
        //                         .ellipsis,
        //                     textAlign:
        //                     TextAlign
        //                         .left,
        //                     style: AppStyle
        //                         .txtRobotoRegular14Gray60001))),
        //       ],
        //     ),
        //     Align(
        //         alignment: Alignment.centerRight,
        //         child: Container(
        //             height: getVerticalSize(176.00),
        //             child: ListView.separated(
        //                 padding: getPadding(
        //                     left: 19, top: 17),
        //                 scrollDirection:
        //                 Axis.horizontal,
        //                 physics:
        //                 const BouncingScrollPhysics(),
        //                 separatorBuilder:
        //                     (context, index) {
        //                   return SizedBox(
        //                       height:
        //                       getVerticalSize(
        //                           16.00));
        //                 },
        //                 itemCount: 4,
        //                 itemBuilder:
        //                     (context, index) {
        //                   return LatestCategoryItemWidget();
        //                 }))),
        //
        //   ],
        // ),


      ],
    );
  }

  onTapBtnFloatingactionbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goLiveHomeScreen);
  }

  onTapTxtControlsChipsOne(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.homeGroceryContainerScreen);
  }

  onTapTxtControlsChipsTwo(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.categoryScreen);
  }

  onTapTxtViewAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsScreen);
  }

  onTapSearch(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.searchRestaurantsScreen);
  }
}
