import 'package:flutter/material.dart';
import 'package:shopping_app/detailsPage.dart';

class buildCoulmnWithRow extends StatelessWidget {
  const buildCoulmnWithRow({super.key, required this.Images, required this.Textt, required this.Price});
  final String Images;
  final String Textt;
  final String Price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) {
        return DetailsPage(Images: Images, Textt: Textt, Price: Price, );
      }));
    },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: 220,
                width: 160,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      Images,
                      fit: BoxFit.cover,
                    ))),
            SizedBox(
              height: 10,
            ),
            Text(
              Textt,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              Price,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
