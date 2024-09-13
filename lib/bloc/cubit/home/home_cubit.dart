import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeSurah extends Cubit<String> {
  HomeSurah() : super('Al-Fatiah');

  void setSurah(String newValue) {
    emit(newValue);
  }
}

class HomeAyat extends Cubit<String> {
  HomeAyat() : super('Al-Fatiah');

  void setAyat(String newValue) {
    emit(newValue);
  }
}
