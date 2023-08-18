import 'package:flutter/material.dart';
import 'package:shopping_app/detailsPage.dart';
import 'package:shopping_app/widgets/buidContainerBottonNav.dart';
import 'package:shopping_app/widgets/buildBottomContainer.dart';
import 'package:shopping_app/widgets/buildCoulmnAtTop.dart';
import 'package:shopping_app/widgets/buildCoulmnWithRow.dart';
import 'package:shopping_app/widgets/lineBar.dart';
import 'package:shopping_app/widgets/textbutton.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          onPressed: () {
            print("Icon Pressed!!");
          },
          icon: Icon(Icons.clear_all),
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {
                print("Search!!");
              },
              icon: Icon(Icons.search),
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Shop ",
                style: TextStyle(fontSize: 32, letterSpacing: 2),
              ),
              Text(
                "Anthropologie ",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButtons(
                  buttonText: "Home Decor",
                  buttonColor: Colors.pink,
                  buttonTextColor: Colors.white,
                  buttonAction: () {
                    print("Button Pressed");
                  }),
              TextButtons(
                  buttonText: "Bath & Body",
                  buttonColor: Colors.grey,
                  buttonTextColor: Colors.black,
                  buttonAction: () {
                    print("Button Pressed");
                  }),
              TextButtons(
                  buttonText: "Beauty",
                  buttonColor: Colors.grey,
                  buttonTextColor: Colors.black,
                  buttonAction: () {
                    print("Button Pressed");
                  }),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 15)
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BuildCoulmnAtTop(
                          buttonText: 'Candles',
                          isSelected: true,
                        ),
                        BuildCoulmnAtTop(
                          buttonText: 'Vases',
                        ),
                        BuildCoulmnAtTop(
                          buttonText: 'Bins',
                        ),
                        BuildCoulmnAtTop(
                          buttonText: 'Floral',
                        ),
                        BuildCoulmnAtTop(
                          buttonText: 'Decor',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          buildCoulmnWithRow(
                            Images: "assets/images/candle1.jpg",
                            Textt: "Elemental Candle 1",
                            Price: '\$24',
                          ),
                          buildCoulmnWithRow(
                              Images: "assets/images/candle2.jpg",
                              Textt: "Elemental Candle 2",
                              Price: '\$34'),
                          buildCoulmnWithRow(
                              Images: "assets/images/candle3.jpg",
                              Textt: "Elemental Candle 3",
                              Price: '\$44'),
                          buildCoulmnWithRow(
                              Images: "assets/images/candle4.jpg",
                              Textt: "Elemental Candle 4",
                              Price: '\$54'),
                          buildCoulmnWithRow(
                              Images: "assets/images/candle5.jpg",
                              Textt: "Elemental Candle 5",
                              Price: '\$64')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LineBar(),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Holiday Special",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildBottomContainer(
                              containerImage: "assets/images/bathsoap1.jpg",
                              itemName: "Bath soap",
                              itemQuantity: "16oz",
                              itemPrice: "\$28"),
                          buildBottomContainer(
                              containerImage: "assets/images/soapliquid2.jpg",
                              itemName: "Soap liquid",
                              itemQuantity: "20oz",
                              itemPrice: "\$38"),
                          buildBottomContainer(
                              containerImage: "assets/images/handwash3.jpg",
                              itemName: "Hand wash",
                              itemQuantity: "30oz",
                              itemPrice: "\$48")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.grey, spreadRadius: 1)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainerBottomNav(
                iconName: Icons.person,
              ),
              buildContainerBottomNav(
                iconName: Icons.shopping_bag_outlined,
              ),
              buildContainerBottomNav(
                iconName: Icons.home,
                isSelected: true,
              ),
              buildContainerBottomNav(
                iconName: Icons.favorite_border,
              ),
              buildContainerBottomNav(
                iconName: Icons.settings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
