import 'package:fiverr_clone/screens/widget/icon_content.dart';
import 'package:fiverr_clone/screens/widget/reusable_card.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topLeft,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 100, bottom: 120),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Text(
                    'Choose the services that best suit what you are interested in',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
                  child: Text(
                    'Select at least one.',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Container(
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      primary: true,
                      childAspectRatio: (4 / 3),
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      children: <Widget>[
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                        servicesCard('images/seller.jpeg', 'Brand Identity'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.14,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          2.0, // has the effect of extending the shadow
                      offset: Offset(
                        3.0, // horizontal, move right 10
                        3.0, // vertical, move down 10
                      ),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CardContant(
                    iconChoose: Icons.keyboard_backspace,
                    iconLabel: 'Go back',
                    iconSize: 25,
                    iconRotation: 270,
                    iconColor: Color(0xFFA8A8A8),
                  ),
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.15,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 2.0, // has the effect of extending the shadow
                    offset: Offset(
                      3.0, // horizontal, move right 10
                      3.0, // vertical, move down 10
                    ),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: continueButton(context, 'CONTINUE', Colors.green),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card servicesCard(String image, String name) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          onTap: null,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}

Align continueButton(
  BuildContext context,
  String text,
  Color colour,
) {
  return Align(
    child: SizedBox(
      height: 50.0,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {},
        color: colour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          text,
          style: Theme.of(context).primaryTextTheme.button,
        ),
      ),
    ),
  );
}
