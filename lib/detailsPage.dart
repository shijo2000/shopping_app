import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.Images,
    required this.Textt,
    required this.Price,
  });

  final String Images;
  final String Textt;
  final String Price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          Images,
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
          padding: EdgeInsets.only(left: 20, top: 35),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ILLUM"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$Textt",
                            style: TextStyle(fontSize: 28),
                          ),
                          Text(
                            Price,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("SIZE"),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "16oz",
                                style: TextStyle(fontSize: 22),
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "QTY",
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontSize: 22),
                              )
                            ],
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListTile(
                        leading: Text(
                          "Details",
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListTile(leading: Text(
                        "Shopping & Returns",
                        style: TextStyle(fontSize: 18),
                      ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),

                      ),
                      Divider(thickness: 1.5,)
                    ],
                  ),
                )),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Icon(Icons.favorite_border),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          print("Added to Bag!!!");
                        },
                        icon: Icon(Icons.shopping_bag_outlined),
                        label: Text(
                          "Add to bag",
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.pink[200],
                            primary: Colors.white,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 5,
                                vertical: 15)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
