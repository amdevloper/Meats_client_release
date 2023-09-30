import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import 'custom_image_view.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgTicket,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgAlarm,
      title: "My Orders",
      type: BottomBarEnum.Myorders,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchBlueGray300,
      title: "Social",
      type: BottomBarEnum.Social,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFile,
      title: "Menu",
      type: BottomBarEnum.Menu,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      title: "Account",
      type: BottomBarEnum.Account,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              padding: getPadding(
                left: 9,
                top: 5,
                right: 9,
                bottom: 5,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getVerticalSize(
                      20.00,
                    ),
                    width: getHorizontalSize(
                      22.00,
                    ),
                    color: ColorConstant.blueGray300,
                    margin: getMargin(
                      top: 4,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12.copyWith(
                        color: ColorConstant.blueGray300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              padding: getPadding(
                left: 21,
                top: 6,
                right: 21,
                bottom: 6,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    color: ColorConstant.blueGray300,
                    margin: getMargin(
                      top: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12.copyWith(
                        color: ColorConstant.blueGray300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          onChanged!(bottomMenuList[index].type);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Myorders,
  Social,
  Menu,
  Account,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
