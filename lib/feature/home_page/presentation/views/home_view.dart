import 'package:flutter/material.dart';
import 'package:layan_center/core/utils/constant.dart';
import 'package:layan_center/feature/home_page/presentation/views/home_view.dart';
import 'package:layan_center/feature/home_page/presentation/views/widgets/Category_aitem.dart';
import 'package:layan_center/feature/home_page/presentation/views/widgets/alaret_daylog.dart';
import 'package:layan_center/feature/home_page/presentation/views/widgets/drawer_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // تحديد الـ GlobalKey للـ Scaffold
      body: Row(
        children: [
          Column(
            children: [
              Container(
                width: 300,
                height: 700,
                color: Colors.teal,
                child: DrawerWidget(),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // image:   DecorationImage(image: AssetImage(logo), fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  SizedBox(height: 110),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // توزيع المسافة بين العناصر
                    children: [
                        IconButton(onPressed: (){
                          showDialog(
                            context: _scaffoldKey.currentContext!,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return PatientFormDialog();
                            },
                          );
                        }, icon: CategoryAitem(
                          titel: 'إضافة حالة جديدة',
                          image: add,
                        ),),
                       CategoryAitem(
                          titel: 'الدكتورة',
                          image: doctor,
                        ),
                        CategoryAitem(
                          titel: 'التقويم',
                          image: date,
                        ),
                      ],
                    ),

                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // توزيع المسافة بين العناصر
                    children: [
                      CategoryAitem(
                        titel: 'مواعيد اليوم',
                        image: today,
                      ),
                      CategoryAitem(
                        titel: 'حالات تم شفائها',
                        image: done,
                      ),
                      CategoryAitem(
                        titel: 'بيانات المرضى',
                        image: data,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
