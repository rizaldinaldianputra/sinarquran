import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quransinar/bloc/cubit/cubit/surah_cubit.dart';
import 'package:quransinar/bloc/cubit/cubit/surahlist_cubit.dart';
import 'package:quransinar/bloc/thmemode_cubit.dart';
import 'package:quransinar/routing/route.dart';
import 'package:quransinar/service/surah_serice.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<SurahCubit>(
          create: (context) => SurahCubit(),
        ),
        BlocProvider(create: ((context) => SurahlistCubit()))
      ],
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
