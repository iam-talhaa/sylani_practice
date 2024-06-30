import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class HOMESCREEN extends StatefulWidget {
  const HOMESCREEN({super.key});

  @override
  State<HOMESCREEN> createState() => _HOMESCREENState();
}

class _HOMESCREENState extends State<HOMESCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Write a Review',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 90,
              backgroundColor: Colors.redAccent,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/4947563/pexels-photo-4947563.jpeg?auto=compress&cs=tinysrgb&w=600'),
            ),
            AnimatedRatingStars(
              initialRating: 3.5,
              minRating: 0.0,
              maxRating: 5.0,
              filledColor: Colors.amber,
              emptyColor: Colors.grey,
              filledIcon: Icons.star,
              halfFilledIcon: Icons.star_half,
              emptyIcon: Icons.star_border,
              onChanged: (double rating) {
                // Handle the rating change here
                print('Rating: $rating');
              },
              displayRatingValue: true,
              interactiveTooltips: true,
              customFilledIcon: Icons.star,
              customHalfFilledIcon: Icons.star_half,
              customEmptyIcon: Icons.star_border,
              starSize: 30.0,
              animationDuration: Duration(milliseconds: 300),
              animationCurve: Curves.easeInOut,
              readOnly: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Write your Comment?'), Text('200 words max')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                cursorColor: Colors.deepPurple,
                keyboardType: TextInputType.text,
                maxLines: 5,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'write a comment ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                child: Center(child: Text('Preview')),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
