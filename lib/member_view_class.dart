import 'package:Meats/presentation/member/member_home_screen/widgets/category_item_widget.dart';
import 'package:Meats/presentation/member/member_home_screen/widgets/latest_category_item_widget.dart';
import 'package:Meats/presentation/member/member_home_screen/widgets/pop_category_item_widget.dart';
import 'package:Meats/presentation/member/member_home_screen/widgets/slider_one_item_widget.dart';
import 'package:Meats/routes/app_routes.dart';
import 'package:Meats/theme/app_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'core/utils/color_constant.dart';
import 'core/utils/size_utils.dart';

class MemberViewClass extends StatefulWidget {
  final ValueKey key;
  const MemberViewClass({required this.key}) : super(key: key);

  @override
  State<MemberViewClass> createState() => _MemberViewClassState();
}

class _MemberViewClassState extends State<MemberViewClass> {
  int silderIndex = 1;

  int silderIndex1 = 1;

  String? valueAsPerSelection(selectedIndex) {
    String? value;
    switch(selectedIndex) {
      case 0: {
        value = "Buy";
      }
      break;

      case 1: {
        value = "Eat";
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

  String? valueAsPerSubelection(selectedIndex) {
    String? value;
    switch(selectedIndex) {
      case 0: {
        value = "Grocery";
      }
      break;

      case 1: {
        value = "Restaurant";
      }
      break;

      case 2: {
        value = "Grocery";
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
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Container(
                height: getVerticalSize(177.00),
                width: getHorizontalSize(335.00),
                margin: getMargin(top: 11),
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
                        left: 11, top: 15),
                    child: Text(
                        "What you want to ${valueAsPerSelection(int.parse(widget.key.value))}?",
                        overflow:
                        TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle
                            .txtRobotoBold18Black900))),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: getVerticalSize(136.00),
                    child: ListView.separated(
                        padding: getPadding(
                            left: 11, top: 11),
                        scrollDirection:
                        Axis.horizontal,
                        physics:
                        const BouncingScrollPhysics(),
                        separatorBuilder:
                            (context, index) {
                          return SizedBox(
                              height:
                              getVerticalSize(
                                  16.00));
                        },
                        itemCount: 4,
                        itemBuilder:
                            (context, index) {
                          return CategoryItemWidget();
                        }))),
            Padding(
                padding: getPadding(
                    left: 11, top: 15, right: 20),
                child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text("Popular ${valueAsPerSubelection(int.parse(widget.key.value))}",
                          overflow:
                          TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtRobotoBold18Black900),
                      GestureDetector(
                          onTap: () {
                            onTapTxtViewAll(
                                context);
                          },
                          child: Padding(
                              padding: getPadding(
                                  bottom: 0,right: 0),
                              child: Text(
                                  "View All",
                                  overflow:
                                  TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign
                                      .left,
                                  style: AppStyle
                                      .txtRobotoRegular14Gray60001)))
                    ])),
            Container(
                height: getVerticalSize(186.00),
                child: ListView.separated(
                    padding: getPadding(
                        left: 11, top: 11),
                    scrollDirection:
                    Axis.horizontal,
                    physics:
                    const BouncingScrollPhysics(),
                    separatorBuilder:
                        (context, index) {
                      return SizedBox(
                          height:
                          getVerticalSize(
                              16.00));
                    },
                    itemCount: 8,
                    itemBuilder:
                        (context, index) {
                      return PopCategoryItemWidget(
                        onTapImgImagePlaceholderOne: onTapImgImagePlaceholder,
                      );
                    })),
            Container(
                height: getVerticalSize(177.00),
                width: getHorizontalSize(335.00),
                margin: getMargin(top: 30),
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment:
                        Alignment.topLeft,
                        child: Text(
                            "Latest Offer",
                            overflow:
                            TextOverflow
                                .ellipsis,
                            textAlign:
                            TextAlign
                                .left,
                            style: AppStyle
                                .txtRobotoBold18Black900)),

                    Align(
                        alignment:
                        Alignment.topLeft,
                        child: GestureDetector(
                            onTap: () {
                              onTapTxtViewAll(
                                  context);
                            },
                            child: Text(
                                "View All",
                                overflow:
                                TextOverflow
                                    .ellipsis,
                                textAlign:
                                TextAlign
                                    .left,
                                style: AppStyle
                                    .txtRobotoRegular14Gray60001))),
                  ],
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: getVerticalSize(196.00),
                        child: ListView.separated(
                            padding: getPadding(
                                left: 19, top: 17),
                            scrollDirection:
                            Axis.horizontal,
                            physics:
                            const BouncingScrollPhysics(),
                            separatorBuilder:
                                (context, index) {
                              return SizedBox(
                                  height:
                                  getVerticalSize(
                                      16.00));
                            },
                            itemCount: 4,
                            itemBuilder:
                                (context, index) {
                                  return PopCategoryItemWidget();
                              // return LatestCategoryItemWidget();
                            }))),

              ],
            ),


          ],
        ),
      ),
    );
  }

  onTapImgImagePlaceholder() {
    Navigator.pushNamed(context, AppRoutes.restaurantsDetailsScreen);
  }


  onTapTxtViewAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsScreen);
  }


}
