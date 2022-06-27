import 'package:add_wallet/main.dart';
import 'package:add_wallet/utills/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SilectColor extends State<MyHomePage> {
  final Color scaffoldColor = const Color(0xfff8f8f8);
  final Color textColor1 = const Color(0xff333333);
  final Gradient _gradient = const LinearGradient(
      colors: [Color(0xff0038F5), Color(0xff9F03FF)],
      transform: GradientRotation(45));
  @override
  Widget build(BuildContext context) {
    var data =
        'Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset("assets/app_logo.png", height: 37),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'assets/main_image.png',
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Silent Color",
                    style: kTextStyle(
                        color: textColor1,
                        size: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ]),
                    child: Icon(
                      Icons.favorite_border,
                      color: textColor1,
                      size: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ]),
                    child: Icon(
                      Icons.file_upload_outlined,
                      color: textColor1,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xffFF9C00),
                      Color(0xffFFDB03),
                    ], transform: GradientRotation(60)),
                  ),
                  child: Text(
                    "H",
                    style: kTextStyle(size: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                label: Text(
                  '@openart',
                  style: kTextStyle(
                      size: 16, color: textColor1, fontWeight: FontWeight.bold),
                ),
                style: buttonStyle(
                  color: Colors.white,
                  shadowColor: Colors.black12,
                  elevation: 10,
                  padding: const EdgeInsets.fromLTRB(4, 4, 10, 4),
                  borderRadius: 20,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              data,
              style: kTextStyle(
                  color: textColor1,
                  size: 13,
                  fontWeight: FontWeight.w500,
                  height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                _itemTip('#color'),
                _itemTip('#circle'),
                _itemTip('#black'),
                _itemTip('#art'),
              ],
            ),
          ),
          _itemView(Icons.wb_incandescent, 'View on Etherscan'),
          _itemView(Icons.star_border, 'View on IPFS'),
          _itemView(Icons.data_usage, 'View IPFS Metadata'),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200]!,
                  blurRadius: 20,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Current Bid",
                  style: kTextStyle(
                      color: textColor1, size: 20, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    children: [
                      Text(
                        "0.50 ETH",
                        style: kTextStyle(
                            color: textColor1,
                            size: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$2.683.73",
                        style: kTextStyle(
                            size: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Auction ending in',
                  style: kTextStyle(size: 20, color: textColor1),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 40),
                  child: Row(
                    children: [
                      _itemHour('12', 'hours'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: _itemHour('30', 'minutes'),
                      ),
                      _itemHour('25', 'seconds'),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    gradient: _gradient,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Place a bid',
                    style: kTextStyle(size: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Text(
            "Activity",
            style: kTextStyle(size: 20, color: textColor1),
          ),
          const SizedBox(
            height: 30,
          ),
          _itemActivity(),
          _itemActivity(),
          // const SizedBox(
          //   height: 100,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 70, right: 70),
            child: Image.asset(
              "assets/image_2.png",
            ),
          ),

          Row(            
            children: [
              Text(
                "The",
                style: kTextStyle(
                    color: Colors.black45,
                    size: 26,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                "New",
                style: kTextStyle(
                    color: Colors.black54,
                    size: 26,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                "Creative",
                style: kTextStyle(color: Colors.black87, size: 26),
              ),
              Text(
                "Economy",
                style: kTextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, size: 26),
              ),
            ],
          ),

          const SizedBox(
            height: 30,
          ),

          Container(
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
          const SizedBox(
            height: 15,
          ),

          Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xff0000EA), width: 1),
            ),
            child: Text(
              'Discover more',
              style: kTextStyle(
                  size: 20, fontWeight: FontWeight.w600, color: textColor1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _itemActivity() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        tileColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(26),
          child: CircleAvatar(
            radius: 26,
            child: Image.asset(
              'assets/image_1.png',
              fit: BoxFit.cover,
              height: 52,
              width: 52,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bid place by @pawel09',
              style: kTextStyle(fontWeight: FontWeight.bold, color: textColor1),
            ),
            Text(
              "June 06, 2021 at 12:00am",
              style: kTextStyle(
                  size: 13, fontWeight: FontWeight.w500, color: Colors.black54),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "1.50 ETH",
                style: kTextStyle(
                    size: 16, fontWeight: FontWeight.bold, color: textColor1),
              ),
              Text(
                "\$2,683,73",
                style: kTextStyle(
                    size: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ],
          ),
        ),
        trailing: Column(
          children: const [
            Icon(
              Icons.launch,
              color: Colors.black54,
              size: 24,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      ),
    );
  }

  Widget _itemHour(String text, String oclock) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: kTextStyle(
              size: 24, color: textColor1, fontWeight: FontWeight.bold),
        ),
        Text(
          oclock,
          style: kTextStyle(
              size: 13, fontWeight: FontWeight.w500, color: Colors.black54),
        ),
      ],
    );
  }

  Container _itemView(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200]!,
            blurRadius: 15,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: textColor1,
          size: 30,
        ),
        title: Text(
          title,
          style: kTextStyle(
              size: 16, color: textColor1, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(
          Icons.launch,
          color: Colors.black54,
          size: 24,
        ),
      ),
    );
  }

  Widget _itemTip(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: TextButton(
        onPressed: () {},
        style: buttonStyle(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          borderRadius: 20,
          side: const BorderSide(color: Colors.black26),
          size: const Size(50, 30),
        ),
        child: Text(
          text,
          style: kTextStyle(
              size: 13, fontWeight: FontWeight.w500, color: Colors.black54),
        ),
      ),
    );
  }
}
