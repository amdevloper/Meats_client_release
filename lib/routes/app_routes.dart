import 'package:flutter/material.dart';
// import 'package:amit_s_application12/presentation/time_add_screen/time_add_screen.dart';
// import 'package:amit_s_application12/presentation/sign_up_screen/sign_up_screen.dart';
// import 'package:amit_s_application12/presentation/establishment_details_screen/establishment_details_screen.dart';
// import 'package:amit_s_application12/presentation/establishment_location_details_screen/establishment_location_details_screen.dart';
// import 'package:amit_s_application12/presentation/use_current_location_screen/use_current_location_screen.dart';
// import 'package:amit_s_application12/presentation/establishment_location_details1_screen/establishment_location_details1_screen.dart';
// import 'package:amit_s_application12/presentation/menu_details_screen/menu_details_screen.dart';
// import 'package:amit_s_application12/presentation/add_item_screen/add_item_screen.dart';
// import 'package:amit_s_application12/presentation/menu_item_add_screen/menu_item_add_screen.dart';
// import 'package:amit_s_application12/presentation/menu_details1_screen/menu_details1_screen.dart';

// import '../Stripe.dart';
import '../SignUpScreenMember/sign_up_screen_member.dart';
import '../presentation/Delivery/Delivery_Sign_Up/add_money_to_wallet_screen_Delivery/add_money_to_wallet_screen_Delivery.dart';
import '../presentation/Delivery/Delivery_Sign_Up/after_wallet_amount_added_screen_Delivery/after_wallet_amount_added_screen_Delivery.dart';
import '../presentation/Delivery/Delivery_Sign_Up/credit_card_add_screen_Delivery/credit_card_add_screen_Delivery.dart';
import '../presentation/Delivery/Delivery_Sign_Up/freedrinkz_wallet_screen_Delivery/freedrinkz_wallet_screen_Delivery.dart';
import '../presentation/Delivery/Delivery_Sign_Up/money_added_success_screen_Delivery/money_added_success_screen_Delivery.dart';
import '../presentation/Delivery/Delivery_Sign_Up/more_informations_screen_Delivery/more_informations_screen_Delivery.dart';
import '../presentation/Delivery/Delivery_Sign_Up/sign_up_screen_Delivery/sign_up_screen_Delivery.dart';
import '../presentation/Delivery/Delivery_Sign_Up/wallet_setup_screen_Delivery/wallet_setup_screen_Delivery.dart';
import '../presentation/Establishment_Sign_Up/LiveHomePage.dart';
import '../presentation/Establishment_Sign_Up/add_item_screen/add_item_screen.dart';
import '../presentation/Establishment_Sign_Up/establishment_details_screen/establishment_details_screen.dart';
import '../presentation/Establishment_Sign_Up/establishment_location_details1_screen/establishment_location_details1_screen.dart';
import '../presentation/Establishment_Sign_Up/establishment_location_details_screen/establishment_location_details_screen.dart';
import '../presentation/Establishment_Sign_Up/menu_details1_screen/menu_details1_screen.dart';
import '../presentation/Establishment_Sign_Up/menu_details_screen/menu_details_screen.dart';
import '../presentation/Establishment_Sign_Up/menu_item_add1_screen/menu_item_add1_screen.dart';
import '../presentation/Establishment_Sign_Up/menu_item_add_screen/menu_item_add_screen.dart';
import '../presentation/Establishment_Sign_Up/sign_up_screen/sign_up_screen_establishment.dart';
import '../presentation/Establishment_Sign_Up/time_add_screen/time_add_screen.dart';
import '../presentation/Establishment_Sign_Up/use_current_location_screen/use_current_location_screen.dart';
// import '../presentation/Influencer/Influencer_Sign_Up/sign_up_screen_Influencer/sign_up_screen_Influencer.dart';
// import '../presentation/Influencer/Influencer_contact_us_screen/Influencer_contact_us_screen.dart';
// import '../presentation/Influencer/Influencer_get_support_screen/Influencer_get_support_screen.dart';
// import '../presentation/Influencer/Influencer_help_support_screen/Influencer_help_support_screen.dart';
// import '../presentation/Influencer/Influencer_i_am_buying_screen/Influencer_i_am_buying_screen.dart';
// import '../presentation/Influencer/Influencer_live_feed_earning_screen/Influencer_live_feed_earning_screen.dart';
// import '../presentation/Influencer/Influencer_manage_address_screen/Influencer_manage_address_screen.dart';
// import '../presentation/Influencer/Influencer_my_orders_screen/Influencer_my_orders_screen.dart';
// import '../presentation/Influencer/Influencer_order_for_friends_menu_screen/Influencer_order_for_friends_menu_screen.dart';
// import '../presentation/Influencer/Influencer_order_summary_screen/Influencer_order_summary_screen.dart';
// import '../presentation/Influencer/Influencer_other_status_screen/Influencer_other_status_screen.dart';
// import '../presentation/Influencer/Influencer_settings_screen/Influencer_settings_screen.dart';
// import '../presentation/Influencer/edit_profile_screen/influencer_edit_profile_screen.dart';
// import '../presentation/Influencer/home_screen/influencer_home_screen.dart';
// import '../presentation/Influencer/my_profile_page/my_profile_page.dart';
 import '../presentation/about_us_screen/about_us_screen.dart';
import '../presentation/add_status_camera_capture_screen/add_status_camera_capture_screen.dart';
import '../presentation/after_image_upload_screen/after_image_upload_screen.dart';
import '../presentation/after_profile_upload_screen/after_profile_upload_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/bottom_navigation_tab_bar.dart';
import '../presentation/change_password_screen/change_password_screen.dart';
import '../presentation/chat_functions_screen/chat_functions_screen.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/comments_screen/comments_screen.dart';
import '../presentation/contact_us_screen/contact_us_screen.dart';
import '../presentation/crate_group_screen/crate_group_screen.dart';
import '../presentation/create_post_screen/create_post_screen.dart';
import '../presentation/cryptocyrrency_screen/cryptocyrrency_screen.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/faq_s_screen/faq_s_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/gallery_full_view_screen/gallery_full_view_screen.dart';
import '../presentation/go_live_home_screen/go_live_home_screen.dart';
import '../presentation/group_18137_screen/group_18137_screen.dart';
import '../presentation/group_34126_screen/group_34126_screen.dart';
import '../presentation/group_34127_screen/group_34127_screen.dart';
import '../presentation/group_34128_screen/group_34128_screen.dart';
import '../presentation/group_chat_screen/group_chat_screen.dart';
import '../presentation/group_name_and_profile_picture_screen/group_name_and_profile_picture_screen.dart';
import '../presentation/group_video_call_screen/group_video_call_screen.dart';
import '../presentation/groups_screen/groups_screen.dart';
import '../presentation/help_support_screen/help_support_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/image_upload_screen/image_upload_screen.dart';
import '../presentation/launch_screen/launch_screen.dart';
import '../presentation/logout_screen/logout_screen.dart';
import '../presentation/manage_payments_screen/manage_payments_screen.dart';
import '../presentation/manage_timing_screen/manage_timing_screen.dart';
import '../presentation/member/add_to_cart_screen/add_to_cart_screen.dart';
import '../presentation/member/cart_delivery_address_not_available_screen/cart_delivery_address_not_available_screen.dart';
import '../presentation/member/checkout_if_no_any_cards_added_screen/checkout_if_no_any_cards_added_screen.dart';
import '../presentation/member/customize_screen/customize_screen.dart';
import '../presentation/member/restaurants_screen/restaurants_screen.dart';
import '../presentation/menu_screen/menu_screen.dart';
import '../presentation/my_status_menu1_screen/my_status_menu1_screen.dart';
import '../presentation/my_status_menu2_screen/my_status_menu2_screen.dart';
import '../presentation/my_status_menu_screen/my_status_menu_screen.dart';
import '../presentation/my_wall_screen/my_wall_screen.dart';
import '../presentation/my_wallet_screen/my_wallet_screen.dart';
import '../presentation/new_notifications_container_screen/new_notifications_container_screen.dart';
import '../presentation/new_order_details_screen/new_order_details_screen.dart';
import '../presentation/no_reviews_screen/no_reviews_screen.dart';
import '../presentation/notification_one_screen/notification_one_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/notification_two_screen/notification_two_screen.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/order_completed_details_screen/order_completed_details_screen.dart';
import '../presentation/order_rejected_details_screen/order_rejected_details_screen.dart';
import '../presentation/other_status_screen/other_status_screen.dart';
import '../presentation/password_reset_screen/password_reset_screen.dart';
import '../presentation/password_reset_success_screen/password_reset_success_screen.dart';
import '../presentation/popup_screen/popup_screen.dart';
import '../presentation/prepare_order_full_details_screen/prepare_order_full_details_screen.dart';
import '../presentation/privacy_policy_screen/privacy_policy_screen.dart';
import '../presentation/restaurants_all_details_screen/restaurants_all_details_screen.dart';
import '../presentation/restaurants_details_screen/restaurants_details_screen.dart';
import '../presentation/restaurants_edit_screen/restaurants_edit_screen.dart';
import '../presentation/reviews_screen/reviews_screen.dart';
import '../presentation/search_dish_screen/search_dish_screen.dart';
import '../presentation/search_dish_screen/widgets/listpizza_item_widget.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/sign_in_role_screen/sign_in_role_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/social_post_menu_screen/social_post_menu_screen.dart';
import '../presentation/status_from_gallery_screen/status_from_gallery_screen.dart';
import '../presentation/status_from_gallery_search_address_result_screen/status_from_gallery_search_address_result_screen.dart';
import '../presentation/status_from_gallery_search_address_screen/status_from_gallery_search_address_screen.dart';
import '../presentation/status_menu_screen/status_menu_screen.dart';
import '../presentation/terms_screen/terms_screen.dart';
import '../presentation/update_time_screen/update_time_screen.dart';
import '../presentation/user_profile_screen/user_profile_screen.dart';
import '../presentation/video_call_single_screen/video_call_single_screen.dart';
import '../presentation/welcome_screen/welcome_screen.dart';
// import '../presentation/member/Member_Sign_Up/sign_up_screen_Member/sign_up_screen_Member.dart';
// import '../presentation/member/member_home_screen/member_home_screen.dart';

class AppRoutes {

  static const String checkoutIfNoAnyCardsAddedScreen = '/checkout_if_no_any_cards_added_screen';

  static const String customizeScreen = '/customize_screen';

  static const String liveHomePage = '/LiveHomePage';

  static const String cartDeliveryAddressNotAvailableScreen = '/cart_delivery_address_not_available_screen';

  static const String restaurantsScreen = '/restaurants_screen';

  static const String memberHomeScreen = '/home_screen_member';

  static const String influencerHomeScreen =  '/influencer_home_screen';

  static const String bottomNavigationTabBar = '/bottom_navigation_tab_bar';

  static const String launchScreen = '/launch_screen';

  static const String influencerManageAddressScreen = '/Influencer_manage_address_screen';

  static const String  influencerSettingsScreen = '/Influencer_settings_screen';

  static const String  influencerHelpSupportScreen = '/Influencer_help_support_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String newNotificationsPage = '/new_notifications_page';

  static const String newNotificationsContainerScreen =
      '/new_notifications_container_screen';

  static const String influencerGetSupportScreen =
      '/influencer_get_support_screen';

  static const String goLiveHomeScreen = '/go_live_home_screen';

  static const String chatScreen = '/chat_screen';

  static const String chatFunctionsScreen = '/chat_functions_screen';

  static const String videoCallSingleScreen = '/video_call_single_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String passwordResetScreen = '/password_reset_screen';

  static const String passwordResetSuccessScreen =
      '/password_reset_success_screen';

  static const String influencerLiveFeedEarningScreen =
      '/Influencer_live_feed_earning_screen';

  static const String influencerMyOrdersScreen =
      '/Influencer_my_orders_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInRoleScreen = '/sign_in_role_screen';

  static const String crateGroupScreen = '/crate_group_screen';

  static const String groupNameAndProfilePictureScreen =
      '/group_name_and_profile_picture_screen';

  static const String afterProfileUploadScreen = '/after_profile_upload_screen';

  static const String groupsScreen = '/groups_screen';

  static const String groupChatScreen = '/group_chat_screen';

  static const String timeAddScreen = '/time_add_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String establishmentDetailsScreen =
      '/establishment_details_screen';

  static const String establishmentLocationDetailsScreen =
      '/establishment_location_details_screen';

  static const String signUpScreenInfluencer =
      '/sign_up_screen_Influencer';

  static const String signUpScreenEstablishment =
      '/sign_up_screen_establishment';

  static const String signUpScreenDelivery =
      '/sign_up_screen_Delivery';

  static const String signUpScreenInMember =
      '/sign_up_screen_Member';

  static const String moreInformationsScreen =
      '/more_informations_screen_Delivery';

  static const String influencerOrderSummaryScreen =
      '/Influencer_order_summary_screen';

  static const String useCurrentLocationScreen = '/use_current_location_screen';

  static const String myProfilePage = '/my_profile_page';

  static const String establishmentLocationDetails1Screen =
      '/establishment_location_details1_screen';

  static const String popupScreen = '/popup_screen';

  static const String groupVideoCallScreen = '/group_video_call_screen';

  static const String menuScreen = '/menu_screen';

  static const String group34128Screen = '/group_34128_screen';

  static const String group34127Screen = '/group_34127_screen';

  static const String menuDetailsScreen = '/menu_details_screen';

  static const String addItemScreen = '/add_item_screen';

  static const String menuItemAddScreen = '/menu_item_add_screen';

  static const String menuDetails1Screen = '/menu_details1_screen';

  static const String influencerIAmBuyingScreen = '/influencer_i_am_buying_screen';

  static const String influencerOrderForFriendsMenuScreen = '/Influencer_order_for_friends_menu_screen';

  static const String accountPage = '/account_page';

  static const String myWallScreen = '/my_wall_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String manageTimingScreen = '/manage_timing_screen';

  static const String updateTimeScreen = '/update_time_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String noReviewsScreen = '/no_reviews_screen';

  static const String managePaymentsScreen = '/manage_payments_screen';

  static const String influencerEditProfileScreen = '/influencer_edit_profile_screen';

  static const String cryptocyrrencyScreen = '/cryptocyrrency_screen';

  static const String otherStatusScreen = '/other_status_screen';

  static const String statusMenuScreen = '/status_menu_screen';

  static const String myStatusMenuScreen = '/my_status_menu_screen';

  static const String myStatusMenu1Screen = '/my_status_menu1_screen';

  static const String myStatusMenu2Screen = '/my_status_menu2_screen';

  static const String addStatusCameraCaptureScreen =
      '/add_status_camera_capture_screen';

  static const String statusFromGalleryScreen = '/status_from_gallery_screen';

  static const String statusFromGallerySearchAddressScreen =
      '/status_from_gallery_search_address_screen';

  static const String statusFromGallerySearchAddressResultScreen =
      '/status_from_gallery_search_address_result_screen';

  static const String socialHomePage = '/social_home_page';

  static const String socialPostMenuScreen = '/social_post_menu_screen';

  static const String myWalletScreen = '/my_wallet_screen';

  static const String settingsScreen = '/settings_screen';

  static const String helpSupportScreen = '/help_support_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String termsScreen = '/terms_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String faqSScreen = '/faq_s_screen';

  static const String influencerOtherStatusScreen = '/Influencer_other_status_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String logoutScreen = '/logout_screen';

  static const String walletSetupScreen = '/wallet_setup_screen';

  static const String creditCardAddScreen = '/credit_card_add_screen';

  static const String freedrinkzWalletScreen = '/freedrinkz_wallet_screen';

  static const String addMoneyToWalletScreen = '/add_money_to_wallet_screen';

  static const String moneyAddedSuccessScreen = '/money_added_success_screen';

  static const String afterWalletAmountAddedScreen =
      '/after_wallet_amount_added_screen';

  static const String userProfileScreen = '/user_profile_screen';

  static const String createPostScreen = '/create_post_screen';

  static const String afterImageUploadScreen = '/after_image_upload_screen';

  static const String commentsScreen = '/comments_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationTwoScreen = '/notification_two_screen';

  static const String homeScreen = '/home_screen';

  static const String myOrdersPage = '/my_orders_page';

  static const String myOrdersTabContainerPage =
      '/my_orders_tab_container_page';

  static const String newOrderDetailsScreen = '/new_order_details_screen';

  static const String orderPreparingPage = '/order_preparing_page';

  static const String prepareOrderFullDetailsScreen =
      '/prepare_order_full_details_screen';

  static const String group18137Screen = '/group_18137_screen';

  static const String group34126Screen = '/group_34126_screen';

  static const String galleryFullViewScreen = '/gallery_full_view_screen';

  static const String menu1Page = '/menu1_page';

  static const String restaurantsDetailsScreen = '/restaurants_details_screen';

  static const String restaurantsAllDetailsScreen =
      '/restaurants_all_details_screen';
  static const String restaurantsEditScreen = '/restaurants_edit_screen';

  static const String addToCartScreen = '/add_to_cart_screen';

  static const String menuItemAdd1Screen = '/menu_item_add1_screen';

  static const String imageUploadScreen = '/image_upload_screen';

  static const String orderCompletedPage = '/order_completed_page';

  static const String influencerContactUsScreen = '/Influencer_contact_us_screen';

  static const String orderCompletedDetailsScreen =
      '/order_completed_details_screen';

  static const String orderRejectedDetailsScreen =
      '/order_rejected_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String searchDishScreen = '/search_dish_screen';

  static Map<String, WidgetBuilder> routes = {
    liveHomePage:(context) => LiveHomePage(),
    searchDishScreen:(context) => SearchDishScreen(),
    checkoutIfNoAnyCardsAddedScreen:(context) => CheckoutIfNoAnyCardsAddedScreen(),
    cartDeliveryAddressNotAvailableScreen:(context) =>  CartDeliveryAddressNotAvailableScreen(),
    restaurantsDetailsScreen:(context) => RestaurantsDetailsScreen(),
    restaurantsScreen:(context) => RestaurantsScreen(),
    bottomNavigationTabBar:(BuildContext context) => BottomNavigationTabBar(arguments: ModalRoute.of(context)?.settings.arguments,),
    launchScreen: (context) => LaunchScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    newNotificationsContainerScreen: (context) =>
        NewNotificationsContainerScreen(),
    goLiveHomeScreen: (context) => GoLiveHomeScreen(),
    chatScreen: (context) => ChatScreen(),
    chatFunctionsScreen: (context) => ChatFunctionsScreen(),
    videoCallSingleScreen: (context) => VideoCallSingleScreen(),
    welcomeScreen: (context) => const WelcomeScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    passwordResetScreen: (context) => PasswordResetScreen(),
    passwordResetSuccessScreen: (context) => PasswordResetSuccessScreen(),
    signInScreen: (context) => const SignInScreen(),
    signInRoleScreen: (context) => SignInRoleScreen(),
    crateGroupScreen: (context) => CrateGroupScreen(),
    groupNameAndProfilePictureScreen: (context) =>
        GroupNameAndProfilePictureScreen(),
    afterProfileUploadScreen: (context) => AfterProfileUploadScreen(),
    groupsScreen: (context) => GroupsScreen(),
    groupChatScreen: (context) => GroupChatScreen(),
    timeAddScreen: (context) => TimeAddScreen(arguments: ModalRoute.of(context)!.settings.arguments,),
    // signUpScreen: (context) => SignUpScreen(),
    establishmentDetailsScreen: (context) => const EstablishmentDetailsScreen(),
    establishmentLocationDetailsScreen: (context) =>
        EstablishmentLocationDetailsScreen(),
    useCurrentLocationScreen: (context) => UseCurrentLocationScreen(),
    establishmentLocationDetails1Screen: (context) =>
        EstablishmentLocationDetails1Screen(),
    popupScreen: (context) => PopupScreen(),
    groupVideoCallScreen: (context) => GroupVideoCallScreen(),
    menuScreen: (context) => MenuScreen(),
    group34128Screen: (context) => Group34128Screen(),
    group34127Screen: (context) => Group34127Screen(),
    menuDetailsScreen: (context) => MenuDetailsScreen(),
    addItemScreen: (context) => AddItemScreen(),
    menuItemAddScreen: (context) => const MenuItemAddScreen(),
    menuDetails1Screen: (context) => MenuDetails1Screen(),
    myWallScreen: (context) => MyWallScreen(),
    // myProfilePage: (context) => MyProfilePage(),
    editProfileScreen: (context) => EditProfileScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    manageTimingScreen: (context) => ManageTimingScreen(),
    updateTimeScreen: (context) => UpdateTimeScreen(),
    reviewsScreen: (context) => ReviewsScreen(),
    noReviewsScreen: (context) => NoReviewsScreen(),
    managePaymentsScreen: (context) => ManagePaymentsScreen(),
    cryptocyrrencyScreen: (context) => CryptocyrrencyScreen(),
    otherStatusScreen: (context) => OtherStatusScreen(),
    statusMenuScreen: (context) => StatusMenuScreen(),
    myStatusMenuScreen: (context) => MyStatusMenuScreen(),
    myStatusMenu1Screen: (context) => MyStatusMenu1Screen(),
    myStatusMenu2Screen: (context) => MyStatusMenu2Screen(),
    addStatusCameraCaptureScreen: (context) => AddStatusCameraCaptureScreen(),
    statusFromGalleryScreen: (context) => StatusFromGalleryScreen(),
    statusFromGallerySearchAddressScreen: (context) =>
        StatusFromGallerySearchAddressScreen(),
    statusFromGallerySearchAddressResultScreen: (context) =>
        StatusFromGallerySearchAddressResultScreen(),
    socialPostMenuScreen: (context) => SocialPostMenuScreen(),
    myWalletScreen: (context) => MyWalletScreen(),
    settingsScreen: (context) => SettingsScreen(),
    helpSupportScreen: (context) => HelpSupportScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    termsScreen: (context) => TermsScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    faqSScreen: (context) => FaqSScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    logoutScreen: (context) => LogoutScreen(),
    customizeScreen: (context) => CustomizeScreen(),
    walletSetupScreen: (context) => WalletSetupScreen(),
    creditCardAddScreen: (context) => CreditCardAddScreen(),
    freedrinkzWalletScreen: (context) => FreedrinkzWalletScreen(),
    addMoneyToWalletScreen: (context) => AddMoneyToWalletScreen(),
    moneyAddedSuccessScreen: (context) => MoneyAddedSuccessScreen(),
    afterWalletAmountAddedScreen: (context) => AfterWalletAmountAddedScreen(),
    userProfileScreen: (context) => UserProfileScreen(),
    createPostScreen: (context) => CreatePostScreen(),
    afterImageUploadScreen: (context) => const AfterImageUploadScreen(),
    commentsScreen: (context) => CommentsScreen(),
    notificationOneScreen: (context) => NotificationOneScreen(),
    notificationScreen: (context) => NotificationScreen(),
    notificationTwoScreen: (context) => NotificationTwoScreen(),
    homeScreen: (context) => const HomeScreen(),
    newOrderDetailsScreen: (context) => NewOrderDetailsScreen(arguments: ModalRoute.of(context)?.settings.arguments,),
    prepareOrderFullDetailsScreen: (context) => PrepareOrderFullDetailsScreen(arguments: ModalRoute.of(context)?.settings.arguments,),
    group18137Screen: (context) => Group18137Screen(),
    group34126Screen: (context) => Group34126Screen(),
    galleryFullViewScreen: (context) => GalleryFullViewScreen(),
    restaurantsAllDetailsScreen: (context) => RestaurantsAllDetailsScreen(arguments: ModalRoute.of(context)?.settings.arguments,),
    restaurantsEditScreen: (context) => RestaurantsEditScreen(arguments: ModalRoute.of(context)?.settings.arguments,),
    menuItemAdd1Screen: (context) => const MenuItemAdd1Screen(),
    imageUploadScreen: (context) => ImageUploadScreen(),
    orderCompletedDetailsScreen: (context) => OrderCompletedDetailsScreen(arguments: ModalRoute.of(context)?.settings.arguments,),
    orderRejectedDetailsScreen: (context) => OrderRejectedDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    signUpScreenDelivery: (context) => SignUpScreenDelivery(),
    signUpScreenEstablishment: (context) => SignUpScreenEstablishment(),
    addToCartScreen: (context) => AddToCartScreen(),
    // signUpScreenInfluencer: (context) => SignUpScreenInfluencer(),
    signUpScreenInMember: (context) => SignUpScreenMember(),
    moreInformationsScreen:(context) => const MoreInformationsScreen(),
    // influencerHomeScreen:(context) => InfluencerHomeScreen(),
    // influencerEditProfileScreen:(context) => InfluencerEditProfileScreen(),
    // influencerLiveFeedEarningScreen:(context) => InfluencerLiveFeedEarningScreen(),
    // influencerMyOrdersScreen:(context) => InfluencerMyOrdersScreen(),
    // influencerOrderSummaryScreen:(context) => InfluencerOrderSummaryScreen(),
    // influencerGetSupportScreen:(context) => InfluencerGetSupportScreen(),
    // influencerIAmBuyingScreen:(context) => InfluencerIAmBuyingScreen(),
    // influencerOrderForFriendsMenuScreen:(context) => InfluencerOrderForFriendsMenuScreen(),
    // influencerManageAddressScreen:(context) => InfluencerManageAddressScreen(),
    // influencerSettingsScreen:(context) => InfluencerSettingsScreen(),
    // influencerHelpSupportScreen:(context) => InfluencerHelpSupportScreen(),
    // influencerContactUsScreen:(context) => InfluencerContactUsScreen(),
    // influencerOtherStatusScreen:(context) => InfluencerOtherStatusScreen(),
  };
}
