import 'package:flutter/material.dart';

class buildBottomContainer extends StatelessWidget {
  const buildBottomContainer(
      {super.key,
      required this.containerImage,
      required this.itemName,
      required this.itemQuantity,
      required this.itemPrice});

  final String containerImage;
  final String itemName;
  final String itemQuantity;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                height: 120,
                width: 100,
                child: Image.asset(
                  containerImage,
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemName),
                Text(itemQuantity,
                    style: TextStyle(fontSize: 18, color: Colors.grey)),
                Spacer(),
                Text(
                  itemPrice,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
