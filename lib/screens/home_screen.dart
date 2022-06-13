import 'package:flutter/material.dart';
import 'package:wallet_ui_practice/style/font.dart';

class ItemClass {
  String image;
  String title;
  String type;
  String price;
  String time;

  ItemClass({
    required this.image,
    required this.title,
    required this.price,
    required this.type,
    required this.time,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List itemList = [
      ItemClass(
        image: 'assets/image/figma.png',
        title: 'Figma',
        type: 'Service',
        price: '-75',
        time: '08:02 AM',
      ),
      ItemClass(
        image: 'assets/image/ethereum.png',
        title: 'Investments',
        type: 'Service',
        price: '-1,250',
        time: '08:02 AM',
      ),
      ItemClass(
        image: 'assets/image/spotify.png',
        title: 'Spotify',
        type: 'Music',
        price: '-27.50',
        time: '08:02 AM',
      ),
      ItemClass(
        image: 'assets/image/figma.png',
        title: 'Figma',
        type: 'Service',
        price: '-75',
        time: '08:02 AM',
      ),
      ItemClass(
        image: 'assets/image/ethereum.png',
        title: 'Investments',
        type: 'Service',
        price: '-1,250',
        time: '08:02 AM',
      ),
      ItemClass(
        image: 'assets/image/spotify.png',
        title: 'Spotify',
        type: 'Music',
        price: '-27.50',
        time: '08:02 AM',
      ),
    ];
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          tileMode: TileMode.mirror,
          colors: <Color>[
            // Color(0xff232526),
            // Color(0xff232526),
            // Color(0xff232526),
            // Color(0xff232526),
            // Color(0xff232526),
            // Color(0xff2d4a4e),
            // Color(0xff2c474b),
            // Color(0xff336966),
            Color(0xff232526),
            Color(0xff232526),
            Color(0xff232526),
            Color(0xff272e31),
            Color(0xff2c474b),
            Color(0xff336966),
            Color(0xff468c78),
            Color(0xff63a77f),
            Color(0xff71b280)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: const EdgeInsets.only(
              top: 40.0, bottom: 20.0, left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/image/profile.jpg'),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.reorder_outlined),
                      iconSize: 32.0,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available Balance',
                          style: SFProDisplayRegular.copyWith(
                              fontSize: 16.0,
                              color: Colors.white.withOpacity(0.6)),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '2,589.50 USD',
                          style: SFProDisplayBold.copyWith(
                              fontSize: 32.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundSquareButton(
                        icon: Icons.arrow_right_alt_outlined,
                        title: 'Send',
                        onTap: () {}),
                    RoundSquareButton(
                        icon: Icons.call_received_outlined,
                        title: 'Receive',
                        onTap: () {}),
                    RoundSquareButton(
                        icon: Icons.attach_money_outlined,
                        title: 'Loan',
                        onTap: () {}),
                    RoundSquareButton(
                        icon: Icons.add_outlined, title: 'Topup', onTap: () {}),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Text(
                      'Payments',
                      textAlign: TextAlign.start,
                      style: SFProDisplayBold.copyWith(
                          color: Colors.white.withOpacity(1),
                          fontSize: 26,
                          letterSpacing: 1),
                    ),
                  ],
                ),
                Flexible(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 20),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) =>
                        ListItemWidget(item: itemList[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListItemWidget extends StatelessWidget {
  final ItemClass item;
  const ListItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                radius: 30,
                child: Image(
                  height: 30.0,
                  width: 30.0,
                  image: AssetImage(item.image),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title,
                      style: SFProDisplayRegular.copyWith(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 20,
                      )),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(item.type,
                      style: SFProDisplayRegular.copyWith(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 16,
                      )),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(item.price,
                  textAlign: TextAlign.end,
                  style: SFProDisplayRegular.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 5.0,
              ),
              Text(item.time,
                  textAlign: TextAlign.end,
                  style: SFProDisplayRegular.copyWith(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 16,
                    letterSpacing: 1,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class RoundSquareButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onTap;
  const RoundSquareButton({
    required this.icon,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            // start: 0.4,
            // end: 0.4,
            // padding: EdgeInsets.all(5.0),
            // borderRadius: BorderRadius.circular(50.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              icon,
              size: 28.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            title,
            style: SFProDisplaySemibold.copyWith(color: Colors.grey.shade200),
          )
        ],
      ),
    );
  }
}
