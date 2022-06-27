import 'package:add_wallet/add_walled_to_play/add_wallet.dart';
import 'package:add_wallet/ngt_ui/discover_page.dart';
import 'package:add_wallet/silent_color/silent_color.dart';
import 'package:add_wallet/utills/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => AddWallet();
}
