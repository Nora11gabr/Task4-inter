import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 7,
            )
          ],
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
            Color.fromARGB(179, 188, 186, 186),
            Colors.orangeAccent,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      height: 130,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            'assets/Screenshot (582).png',
            fit: BoxFit.fill,
            width: 280,
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Text(
              'Shop',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
