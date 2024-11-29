import 'package:flutter/material.dart';
import 'package:layan_center/core/utils/constant.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              height: 200,
              width: 170,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(logo2), fit: BoxFit.fill)),
            )

            //Image(height: 235.h, width: 140.w, image: AssetImage(t_square_logo)),
            ),
        InkWell(
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => ProfileView()));
          // },
          child: ListTile(
            leading: Icon(
              Icons.person_outline_outlined,
              color: Colors.white70,
              size: 25,
            ),
            title: Text(
              'المستخدم',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.language,
            color: Colors.white70,
            size: 25,
          ),
          title: Row(
            children: [
              Text(
                'العربية',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white70,
                size: 25,
              ),
            ],
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.access_time,
            color: Colors.white70,
            size: 25,
          ),
          title: Text(
            'الساعة',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        InkWell(
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => NotificationView()));
          // },
          child: const ListTile(
            leading: Icon(
              Icons.medical_services_rounded,
              color: Colors.white70,
              size: 25,
            ),
            title: Text(
              'صيدلية',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.people_alt_outlined,
            color: Colors.white70,
            size: 25,
          ),
          title: Text(
            'بيانات المرضي',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        InkWell(
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => ContactUsView()));
          // },
          child: const ListTile(
            leading: Icon(
              Icons.contact_mail_outlined,
              color: Colors.white70,
              size: 25,
            ),
            title: Text(
              'تواصل مع المطور',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
