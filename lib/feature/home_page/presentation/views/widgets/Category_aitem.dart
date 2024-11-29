import 'package:flutter/material.dart';
import 'package:layan_center/core/utils/constant.dart';

class CategoryAitem extends StatelessWidget {
  const CategoryAitem({super.key, required this.titel, required this.image});
  final String titel;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
          width: 280,
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
            image: DecorationImage(image: AssetImage(apple2), fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image(width: 70, height: 70, image: AssetImage('$image')),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black12,

                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),)
                ),
                child: Text(
                  "$titel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              )
            ],
          ),
        );
  }
}
