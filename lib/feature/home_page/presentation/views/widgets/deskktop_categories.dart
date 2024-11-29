import 'package:flutter/material.dart';
import 'package:layan_center/core/utils/constant.dart';
import 'package:layan_center/feature/home_page/presentation/views/widgets/Category_aitem.dart';

class DeskktopCategories extends StatelessWidget {
  const DeskktopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // image:   DecorationImage(image: AssetImage(logo), fit: BoxFit.fill)
          ),
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          // Row(children: [
          //   Image(
          //     image: AssetImage(home),
          //     width: 150,
          //     height: 150,
          //   ),
          // ]),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {},
                child: CategoryAitem(
                  titel: 'اضافة حالة جديدة',
                  image: add,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              CategoryAitem(
                titel: ' الدكتورة',
                image: doctor,
              ),
              SizedBox(
                width: 50,
              ),
              CategoryAitem(
                titel: 'التقويم',
                image: date,
              )
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              CategoryAitem(
                titel: 'مواعيد اليوم',
                image: today,
              ),
              SizedBox(
                width: 50,
              ),
              CategoryAitem(
                titel: 'حالات تم شفائها',
                image: done,
              ),
              SizedBox(
                width: 50,
              ),
              CategoryAitem(
                titel: 'بيانات المرضي',
                image: data,
              )
            ],
          )
        ],
      ),
    );
  }
}
