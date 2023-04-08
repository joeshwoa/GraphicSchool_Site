import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  bool firstChangeSpeaker = true;
  bool firstChangeCourse = true;
  bool firstHoverCourse = true;

  void ChangePage (int i)
  {
    if(i==0)
    {
      emit(GoToHomeScreen());
    }
    if(i==1)
    {
      emit(GoToClassesScreen());
    }
    if(i==2)
    {
      emit(GoToInstractionScreen());
    }
    if(i==3)
    {
      emit(GoToMediaScreen());
    }
    if(i==4)
    {
      emit(GoToAboutScreen());
    }
  }

  void HoveringSpeakers (int i)
  {
    if(i == -1)
      {
        emit(HoverSpeakersOFF());
      }
    else
    {
          emit(HoverSpeakersON());
    }
  }

  void ChangeSpeakerRow ()
  {
    if(firstChangeSpeaker)
      {
        firstChangeSpeaker=false;
        emit(ChangeSpeakersRowTrue());
      }
    if(!firstChangeSpeaker)
    {
      firstChangeSpeaker=true;
      emit(ChangeSpeakersRowFalse());
    }
  }

  void HoverCourse ()
  {
    if(firstHoverCourse)
    {
      firstHoverCourse=false;
      emit(HoverCourseTrue());
    }
    if(!firstHoverCourse)
    {
      firstHoverCourse=true;
      emit(HoverCourseFalse());
    }
  }

  void ChangeCourse ()
  {
    if(firstChangeCourse)
    {
      firstChangeCourse=false;
      emit(ChangeCourseTrue());
    }
    if(!firstChangeCourse)
    {
      firstChangeCourse=true;
      emit(ChangeCourseFalse());
    }
  }
}
