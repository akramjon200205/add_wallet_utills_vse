// import 'package:flutter/material.dart';

// class Routes {
//   static const subscriptInfoPage = '/';
//   static const auctionPage = '/auctionPage';
//   static const discoverPage = '/discoverPage';

//   static Route<dynamic> generateRoute(RouteSettings routeSettings) {
//     try {
//       Map<String, dynamic>? args = routeSettings.arguments as Map<String, dynamic>?;
//       args ?? <String, dynamic>{};
//       switch (routeSettings.name) {
//         case subscriptInfoPage:
//           return MaterialPageRoute(builder: (context) => const SubscriptInfoPage());
//         case auctionPage:
//           return MaterialPageRoute(builder: (context) => const AuctionPage());
//         case discoverPage:
//           return MaterialPageRoute(builder: (context) => DiscoverPage(args?['title'] ?? ''));
//         default:
//           return MaterialPageRoute(builder: (context) => const AuctionPage());
//       }
//     } catch (e) {
//       return MaterialPageRoute(builder: (context) => const AuctionPage());
//     }
//   }
// }