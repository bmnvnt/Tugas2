import 'package:flutter/material.dart';
import 'package:login_signup_screen/tourism_place.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({key, this.place}) : super(key: key);

  final TourismPlace place;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.place.name}"),
      ),
      body: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height) / 3,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: widget.place.imageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 6.0,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      widget.place.imageUrls[index],
                      width: 200,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.lightBlue.shade700,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50,),
                  Text(widget.place.name,
                    style:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Lokasi --> ${widget.place.location}",
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text(widget.place.description,),
                  ),
                  Text("Harga Tiket --> ${widget.place.ticketPrice}",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text("${widget.place.openDays} | ${widget.place.openTime}",
                    style:
                    TextStyle(color: Colors.lightBlue, fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
