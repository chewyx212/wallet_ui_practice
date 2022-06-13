import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui_practice/style/font.dart';
import 'package:wallet_ui_practice/style/glass.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(1, 0.8),
          colors: <Color>[
            Color(0xff1488cc),
            Color(0xff007ecc),
            Color(0xff0073cb),
            Color(0xff0068c8),
            Color(0xff005cc5),
            Color(0xff004fc0),
            Color(0xff1042ba),
            Color(0xff2b32b2),
          ],
        ),
      ),
      child: ExtendedNestedScrollView(
          // floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: false,
                expandedHeight: MediaQuery.of(context).size.height * .20,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 15.0, right: 15.0),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: <Color>[
                            Color(0xff1488cc),
                            Color(0xff007ecc),
                            Color(0xff0073cb),
                            Color(0xff0068c8),
                            Color(0xff005cc5),
                            Color(0xff004fc0),
                            Color(0xff1042ba),
                            Color(0xff2b32b2),
                          ],
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * .20,
                      child: GlassMorphism(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                        start: 0.1,
                        end: 0.5,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$2,589.50',
                                    style: SFProDisplayBold.copyWith(
                                        fontSize: 28.0, color: Colors.white),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Available Balance',
                                    style: SFProDisplayRegular.copyWith(
                                        fontSize: 14.0,
                                        color: Colors.grey.shade300),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(Icons.notifications),
                                    color: Colors.grey.shade400,
                                  ),
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(Icons.person),
                                    color: Colors.grey.shade400,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RoundSquareButton(
                                    icon: Icons.wallet,
                                    title: 'Send',
                                    onTap: () {
                                      print('1');
                                    }),
                                RoundSquareButton(
                                    icon: Icons.wallet,
                                    title: 'Receive',
                                    onTap: () {
                                      print('2');
                                    }),
                                RoundSquareButton(
                                    icon: Icons.attach_money_outlined,
                                    title: 'Loan',
                                    onTap: () {
                                      print('3');
                                    }),
                                RoundSquareButton(
                                    icon: Icons.money_outlined,
                                    title: 'Topup',
                                    onTap: () {
                                      print('4');
                                    }),
                              ],
                            ),
                          )
                        ]),
                      )),
                ),
              ),
            ];
          },
          onlyOneScrollInBody: true,
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text('asdasd'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
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
      child: Column(
        children: [
          GlassMorphism(
            start: 0.9,
            end: 0.4,
            padding: EdgeInsets.all(5.0),
            borderRadius: BorderRadius.circular(50.0),
            // decoration: BoxDecoration(
            //   color: Colors.white,
            // ),
            child: Icon(
              icon,
              size: 32.0,
              color: Colors.blue.shade800,
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            title,
            style: SFProDisplaySemibold.copyWith(color: Colors.grey.shade200),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
