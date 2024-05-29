import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quransinar/bloc/thmemode_cubit.dart';
import 'package:quransinar/page/ayat.dart';
import 'package:quransinar/routing/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp.router(
            routerConfig: router,
            theme: theme,
          );
        },
      ),
    );
  }
}
