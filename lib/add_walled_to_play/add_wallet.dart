import 'package:add_wallet/main.dart';
import 'package:add_wallet/utills/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddWallet extends State<MyHomePage> {
  final Color scaffoldColor = const Color(0xfff8f8f8);
  final Color textColor1 = const Color(0xff333333);
  final Gradient _gradient = const LinearGradient(
      colors: [Color(0xff0038F5), Color(0xff9F03FF)],
      transform: GradientRotation(45));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: scaffoldColor,
        title: Image.asset(
          'assets/logoimage_2.png',
          height: 37,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: textColor1,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: textColor1,
              size: 24,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add wallet to pay",
                style: kTextStyle(
                    size: 24, color: textColor1, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Easy to sell your Digital Art with 3 step",
                style: kTextStyle(
                    size: 16,
                    color: const Color.fromRGBO(85, 85, 85, 1),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, top: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: _gradient,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "1",
                        style: kTextStyle(
                            size: 14,
                            color: const Color.fromRGBO(252, 252, 252, 1),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Text(
                      "Sellect",
                      style: kTextStyle(
                        size: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(34, 34, 34, 1),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                      endIndent: 10,
                      indent: 10,
                      height: 15,
                    ),
                  ),
                ),
                _itemCircle("2", "Scan"),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                      endIndent: 5,
                      indent: 10,
                      height: 15,
                    ),
                  ),
                ),
                _itemCircle("3", "Coniform"),
              ],
            ),
          ),
          _itemCon("Bank Wallet"),
          _itemCon("Coin Wallet"),
          _itemCon("Wallet connect"),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 70, right: 70),
            child: Image.asset(
              "assets/logo.png",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The",
                style: kTextStyle(
                    color: Colors.black, size: 26, fontWeight: FontWeight.w200),
              ),
              Text(
                "New",
                style: kTextStyle(
                    color: Colors.black, size: 26, fontWeight: FontWeight.w300),
              ),
              Text(
                "Creative",
                style: kTextStyle(
                    color: Colors.black, size: 26, fontWeight: FontWeight.w400),
              ),
              Text(
                "Economy",
                style: kTextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600, size: 26),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: _gradient,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Earn now',
                style: kTextStyle(size: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
            ),
            child: Text(
              'Discover more',
              style: kTextStyle(
                  size: 20, fontWeight: FontWeight.w600, color: textColor1),
            ),
          ),
        ],
      ),
    );
  }

  Container _itemCon(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      alignment: Alignment.center,
      width: 343,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(252, 252, 252, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 13),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(238, 238, 238, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color.fromRGBO(20, 20, 43, 1),
                  size: 25,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: kTextStyle(
                  size: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(85, 85, 85, 1)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemCircle(String text, String textColumn) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(220, 220, 220, 1),
            shape: BoxShape.circle,
          ),
          child: Text(
            text,
            style: kTextStyle(
                size: 14,
                color: const Color.fromRGBO(136, 136, 136, 1),
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Text(
          textColumn,
          style: kTextStyle(
            size: 13,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(136, 136, 136, 1),
          ),
        ),
      ],
    );
  }
}
