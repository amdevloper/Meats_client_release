import 'package:flutter/material.dart';
import 'package:meats/presentation/search_dish_screen/search_dish_screen.dart';
import '../../../../presentation/social_home_page/social_home_page.dart';

import '../core/utils/image_constant.dart';
import '../widgets/custom_image_view.dart';
// import 'Delivery/delivery_home_screen/delivery_home_screen.dart';
// import 'Delivery/delivery_new_order_screen/delivery_new_order_screen.dart';
// import 'Delivery/delivery_order_history_page/delivery_order_history_page.dart';
// import 'Influencer/Influencer_account_screen/influencer_account_screen.dart';
// import 'Influencer/Influencer_social_home_page/influencer_social_home_page.dart';
// import 'Influencer/home_screen/influencer_home_screen.dart';
// import 'Influencer/influencer_cart_page/influencer_cart_page.dart';
import 'account_page/account_page.dart';
import 'home_screen/home_screen.dart';
// import 'member/member_home_screen/member_home_screen.dart';
// import 'member/member_search_restaurants_screen/member_search_restaurants_screen.dart';
// import 'member/member_social_home_page/member_social_home_page.dart';
import 'member/cart_delivery_address_not_available_screen/cart_delivery_address_not_available_screen.dart';
import 'member/member_home_screen/member_home_screen.dart';
import 'menu1_page/menu1_page.dart';
import 'menu_screen/menu_screen.dart';
import 'my_orders_page/my_orders_page.dart';

class BottomNavigationTabBar extends StatefulWidget {
  BottomNavigationTabBar({
    Key? key,
    required this.arguments
  }) : super(key: key);

   final dynamic arguments;

  @override
  State<BottomNavigationTabBar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavigationTabBar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  late List bottomBarTabBarArray = [];
  static List<Widget> _widgetOptions = [];




  List<BottomNavigationBarItem> influencerNavTabBars = [
    BottomNavigationBarItem(
      label: "Home",
      icon: CustomImageView(
        svgPath: ImageConstant.imgTicket,
      ),
    ),
    // BottomNavigationBarItem(
    //   label: "Insights",
    //   icon: CustomImageView(
    //     svgPath: ImageConstant.imgBarchart2,
    //   ),
    // ),
    BottomNavigationBarItem(
      label: "Social",
      icon: CustomImageView(
        svgPath: ImageConstant.imgSearchBlueGray300,
    ),
    ),
    BottomNavigationBarItem(
      label: "Cart",
      icon: CustomImageView(
        svgPath: ImageConstant.imgCart,
      ),
    ),
    BottomNavigationBarItem(
      label: "Account",
      icon: CustomImageView(
        svgPath: ImageConstant.imgUser,
      ),
    ),

  ];

  List<BottomNavigationBarItem> esstablishmentNavBars = [
    BottomNavigationBarItem(
      label: "Home",
      icon: CustomImageView(
        svgPath:ImageConstant.imgTicket,
      ),
    ),
    BottomNavigationBarItem(
      label: "My Orders",
      icon: CustomImageView(
        svgPath: ImageConstant.imgAlarm,
      ),
    ),
    BottomNavigationBarItem(
      label: "Social",
      icon: CustomImageView(
        svgPath:ImageConstant.imgSearchBlueGray300,
      ),
    ),
    BottomNavigationBarItem(
      label: "Menu",
      icon: CustomImageView(
        svgPath:ImageConstant.imgFile,
      ),
    ),
    BottomNavigationBarItem(
      label: "Account",
      icon: CustomImageView(
        svgPath:ImageConstant.imgUser,
      ),
    ),
  ];

  List<BottomNavigationBarItem> memberNavBars = [
    BottomNavigationBarItem(
      label: "Home",
      icon: CustomImageView(
        svgPath: ImageConstant.imgTicket,
      ),
    ),
    const BottomNavigationBarItem(
      label: "Search",
      icon: Icon(Icons.search),
    ),
    BottomNavigationBarItem(
      label: "Social",
      icon: CustomImageView(
        svgPath: ImageConstant.imgSearchBlueGray300,
      ),
    ),
    const BottomNavigationBarItem(
      label: "Cart",
        icon: Icon(Icons.shopping_cart)
    ),
    BottomNavigationBarItem(
      label: "Account",
      icon: CustomImageView(
        svgPath: ImageConstant.imgUser,
      ),
    ),
  ];

  List<BottomNavigationBarItem> deliveryNavBars = [
    BottomNavigationBarItem(
      label: "Home",
      icon: CustomImageView(
        svgPath:ImageConstant.imgUser,
      ),
    ),
    BottomNavigationBarItem(
      label: "Live Orders",
      icon: CustomImageView(
        svgPath:ImageConstant.imgComputer,
      ),
    ),
    // BottomNavigationBarItem(
    //   label: "Insights",
    //   icon: CustomImageView(
    //     svgPath:ImageConstant.imgBarchart2,
    //   ),
    // ),
    BottomNavigationBarItem(
      label: "Order History",
      icon: CustomImageView(
        svgPath:ImageConstant.imgClock,
      ),
    ),
    BottomNavigationBarItem(
      label: "Account",
      icon: CustomImageView(
        svgPath:ImageConstant.imgUser,
      ),
    ),
  ];


  bool isAdmin = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _widgetOptions = [
      if(widget.arguments == "Influencer")...[
        // InfluencerHomeScreen(),
        // InfluencerSocialHomePage(),
        // InfluencerCartPage(),
        // InfluencerAccountScreen(),
    ]else if(widget.arguments == "Establishment")...[
        const HomeScreen(),
        const MyOrdersPage(),
        const SocialHomePage(),
        const Menu1Page(),
        AccountPage(),
      ]else if(widget.arguments  == "Member")...[
         const MemberHomeScreen(),
         const SearchDishScreen(),
        const SocialHomePage(),
        CartDeliveryAddressNotAvailableScreen(),
        AccountPage(),
        // MemberScreenSearchRestaurantsScreen(),
        // MemberSocialHomePage(),
        //   InfluencerCartPage(),
        // InfluencerAccountScreen(),
      ]else if(widget.arguments == "Delivery")...[
        // DeliveryHomeScreen(),
        // NewOrderScreen(),
        // DeliveryOrderHistoryPage(),
        // InfluencerAccountScreen(),
      ]

      // Text(
      //   'Index 0: Home',
      //   style: optionStyle,
      // ),
      // Text(
      //   'Index 1: Business',
      //   style: optionStyle,
      // ),
      // Text(
      //   'Index 2: School',
      //   style: optionStyle,
      // ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        // backgroundColor: Colors.orangeAccent,
        selectedItemColor: const Color(0xFFB4E0E28),
        onTap: (value) {
          _selectedIndex = value;
          setState(() {});
        },
        items: widget.arguments == "Influencer" ?
          influencerNavTabBars : widget.arguments == "Establishment"
            ? esstablishmentNavBars : widget.arguments == "Member"
            ? memberNavBars : deliveryNavBars,
      ),
    );
      // bottomNavigationBar: BottomNavigationBar(
      //   items: isAdmin ? adminNavBars : nonAdminNavBars,
      //   // const <BottomNavigationBarItem>[
      //   //     BottomNavigationBarItem(
      //   //       icon: Icon(Icons.home),
      //   //       label: 'Home',
      //   //     ),
      //   //     BottomNavigationBarItem(
      //   //       icon: Icon(Icons.business),
      //   //       label: 'Business',
      //   //     ),
      //   //     BottomNavigationBarItem(
      //   //       icon: Icon(Icons.school),
      //   //       label: 'School',
      //   //     ),
      //   //
      //   // ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),

    // );
  }
}
