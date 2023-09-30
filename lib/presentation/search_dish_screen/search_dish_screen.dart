import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_6.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_search_view.dart';
import '../search_dish_screen/widgets/listpizza_item_widget.dart';
import 'package:flutter/material.dart';

class SearchDishScreen extends StatefulWidget {
  const SearchDishScreen({super.key});

  @override
  State<SearchDishScreen> createState() => _SearchDishScreenState();
}

class _SearchDishScreenState extends State<SearchDishScreen> {
  TextEditingController barsSearchBarsController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // top: false,
      // bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            40.00,
          ),
          leadingWidth: 44,
          leading: AppbarImage(
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            svgPath: ImageConstant.imgLocationGray9000124x24,
            margin: getMargin(
              left: 20,
              top: 8,
              bottom: 8,
            ),
          ),
          title: AppbarSubtitle6(
            text: "Work - Lakewood, CA, USA",
            margin: getMargin(
              left: 12,
            ),
          ),
          actions: [
            // AppbarImage(
            //   height: getVerticalSize(
            //     20.00,
            //   ),
            //   width: getHorizontalSize(
            //     18.00,
            //   ),
            //   svgPath: ImageConstant.imgNotification,
            //   margin: getMargin(
            //     left: 21,
            //     top: 10,
            //     right: 21,
            //     bottom: 10,
            //   ),
            // ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            all: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                onValueChanged: (value) {
                  // setState(() {
                  var data = [{'id': 1, 'descripcion': 'Asier'}, {'id': 2, 'descripcion': 'Pepe'}];
                  var estateSelected = data.firstWhere((dropdown) => dropdown['id'] == 1);
                  print(estateSelected);
                  //   print(value);
                  // });ll
                },
                width: 335,
                focusNode: FocusNode(),
                controller: barsSearchBarsController,
                hintText: "Search",
                fontStyle: SearchViewFontStyle.RobotoRegular16,
                prefix: Container(
                  margin: getMargin(
                    left: 8,
                    top: 10,
                    right: 12,
                    bottom: 10,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    36.00,
                  ),
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      15.00,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                   setState(() {
                     barsSearchBarsController.text = "";
                     });
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    36.00,
                  ),
                ),
              ),
              // Padding(
              //   padding: getPadding(
              //     top: 20,
              //     right: 20,
              //   ),
              //   child: ListView.separated(
              //     shrinkWrap: true,
              //     separatorBuilder: (context, index) {
              //       return Container(
              //         height: getVerticalSize(
              //           1.00,
              //         ),
              //         width: getHorizontalSize(
              //           size.width,
              //         ),
              //         decoration: BoxDecoration(
              //           color: ColorConstant.gray300,
              //         ),
              //       );
              //     },
              //     itemCount: 5,
              //     itemBuilder: (context, index) {
              //       return ListpizzaItemWidget();
              //     },
              //   ),
              // ),
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomBar(
        //   onChanged: (BottomBarEnum type) {},
        // ),
      ),
    );
  }

  ///Handling page based on route
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
}
