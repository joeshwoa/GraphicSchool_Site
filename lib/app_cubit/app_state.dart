part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class GoToHomeScreen extends AppState {}
class GoToAboutScreen extends AppState {}
class GoToInstractionScreen extends AppState {}
class GoToClassesScreen extends AppState {}
class GoToMediaScreen extends AppState {}

class HoverSpeakersOFF extends AppState {}
class HoverSpeakersON extends AppState {}

class ChangeSpeakersRowTrue extends AppState {}
class ChangeSpeakersRowFalse extends AppState {}

class HoverCourseTrue extends AppState {}
class HoverCourseFalse extends AppState {}

class ChangeCourseTrue extends AppState {}
class ChangeCourseFalse extends AppState {}