import 'package:flutter/material.dart';
import 'package:gs_site/componants/appbar.dart';
import 'package:gs_site/componants/footer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CourseInfoScreen extends StatelessWidget {
  CourseInfoScreen({super.key,required this.courseName,required this.imagePath,required this.courseDes,required this.courseRequirement,required this.coursePrice});

  late String courseName ;
  late String imagePath ;
  late String courseDes ;
  late String courseRequirement ;
  late String coursePrice ;


  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['joeshwoa.george@gmail.com'],
      subject: 'Book ${courseName}',
      body: "write your name,phone and age here and don't forget send your profile(accounts url or image) with mail"
    );
    await launchUrlString(mailtoLink.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: 100.w,
                height: 20.h,
                child: Padding(
                  padding: EdgeInsets.all(25.px),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.px),
                      color: Color(0xFF182633)
                    ),
                  ),
                ),
              ),
              Appbar(onLayout: false),
            ],
          ),
          SizedBox(
            width: 100.w,
            height: 70.h,
            child: Padding(
              padding: EdgeInsets.all(25.px),
              child: Container(
                child: Image(image: AssetImage(imagePath),fit: BoxFit.fitWidth),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.px),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                Text(courseName),
                Text("Description"),
                Text(courseDes),
                Text("Requirment"),
                Text(courseRequirement),
                Text("Price : ${coursePrice}"),
                MaterialButton(
                  onPressed: () async{
                    launchMailto();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(15.px),
                        color: Color(0xFF182633)),
                    child: Padding(
                      padding: EdgeInsets.all(10.px),
                      child: Text(
                        "Send your profile and book course",
                        style: TextStyle(
                            color: Color(0xffe0e0e0),
                            fontSize: 14.sp),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}
