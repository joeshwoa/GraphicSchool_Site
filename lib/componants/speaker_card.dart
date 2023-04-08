import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gs_site/app_cubit/app_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SpeakerCard extends StatelessWidget {
  SpeakerCard({Key? key}) : super(key: key);

  int speakerHover = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.5.w),
      child: BlocProvider(
        create: (context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Column(
              children: [
                MouseRegion(
                  onHover: (e) {
                    speakerHover = 1;
                    AppCubit.get(context)
                        .HoveringSpeakers(speakerHover);
                  },
                  onExit: (e) {
                    speakerHover = -1;
                    AppCubit.get(context)
                        .HoveringSpeakers(speakerHover);
                  },
                  child: MaterialButton(
                    onPressed: () {
                      speakerHover = 1;
                      AppCubit.get(context)
                          .HoveringSpeakers(speakerHover);
                    },
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: speakerHover == 1 ? 52.h : 50.h,
                      width: speakerHover == 1 ? 22.w : 20.w,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(30.px),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff99b7fc),
                              blurRadius: 8.px,
                              blurStyle: BlurStyle.outer,
                              spreadRadius: -1,
                            ),
                          ]),
                      child: ColorFiltered(
                        child: Image(
                            image: AssetImage(
                                "assets/FB_IMG_1677251872312.jpg"),
                            fit: BoxFit.fitHeight),
                        colorFilter: speakerHover != 1
                            ? ColorFilter.mode(
                          Colors.grey,
                          BlendMode.saturation,
                        )
                            : ColorFilter.mode(
                          Colors.transparent,
                          BlendMode.multiply,
                        ),
                      ),
                    ),
                  ),
                ),
                Text("Speaker")
              ],
            );
          },
        ),
      ),
    );
  }
}
