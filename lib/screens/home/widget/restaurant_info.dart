import 'package:flutter/material.dart';
import 'package:mamba/models/restaraunt.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaraunt();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurant.name, style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text(restaurant.waitTime, style: TextStyle(color: Colors.white))                                     
                  ),
                  SizedBox(width: 10),
                  Text(restaurant.distance, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.4)),),
                  SizedBox(width: 10),
                  Text(restaurant.label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.withOpacity(0.4)))
                ],)
              ],
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(radius),
            // )

          ],
        )
      ],)
    );
  }
}