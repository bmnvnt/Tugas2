import 'package:flutter/material.dart';
import 'package:login_signup_screen/tourism_place.dart';
import 'package:login_signup_screen/detailPage.dart';

class Beranda extends StatelessWidget {
  // const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(place: place);
              }));
            },
            splashColor: Colors.blue,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Image.network(
                      place.imageUrls[0],
                      width: 300,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      place.name,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      place.ticketPrice,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
