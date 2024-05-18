import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quransinar/bloc/thmemode_cubit.dart';
import 'package:quransinar/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark().copyWith(
          // Properti tema gelap disini
          scaffoldBackgroundColor: Colors.grey[900],
          // Atur properti lain sesuai kebutuhan aplikasi Anda
        ),
        title: 'Flutter Demo',
        home: HomePage(),
      ),
    );
  }
}
