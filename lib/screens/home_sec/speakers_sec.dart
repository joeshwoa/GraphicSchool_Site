import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gs_site/app_cubit/app_cubit.dart';
import 'package:gs_site/shared/shared.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SpeakersSec extends StatelessWidget {
  SpeakersSec({Key? key}) : super(key: key);

  int speakerView = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text("Speakers",
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.5.h),
            child: Center(
              child: SizedBox(
                  width: 100.w,
                  height: 60.h,
                  child: BlocProvider(
                    create: (context) => AppCubit(),
                    child: BlocConsumer<AppCubit, AppState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      builder: (context, state) {
                        return Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  if (speakerView > 0) {
                                    speakerView--;
                                    AppCubit.get(context).ChangeSpeakerRow();
                                  }
                                },
                                child: Icon(Icons.arrow_back_ios),
                              ),
                              speakers[speakerView],
                              speakers[speakerView + 1],
                              speakers[speakerView + 2],
                              MaterialButton(
                                onPressed: () {
                                  if (speakerView+2 < (speakers.length-1) ) {
                                    speakerView++;
                                    AppCubit.get(context).ChangeSpeakerRow();
                                  }
                                },
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
