import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gs_site/componants/appbar.dart';
import 'package:gs_site/screens/about_screen.dart';
import 'package:gs_site/screens/courses_screen.dart';
import 'package:gs_site/screens/home_screen.dart';
import 'package:gs_site/screens/instructors_screen.dart';
import 'package:gs_site/screens/media_screen.dart';
import 'package:gs_site/shared/shared.dart';

import '../app_cubit/app_cubit.dart';
import '../componants/footer.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(),
      CoursesScreen(),
      InstructorsScreen(),
      MediaScreen(),
      AboutScreen(),
    ];

    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Color(0xffe0e0e0),
            body: ListView(
              children: [
                Stack(
                  children: [
                    screens[screen_num],
                    Appbar(onLayout: true),
                  ],
                  alignment: Alignment.topCenter,
                ),
                Footer()
              ],
            ),
          );
        },
      ),
    );
  }
}
