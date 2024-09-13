import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quransinar/bloc/cubit/surah/search_surah/surahsearch_cubit.dart';
import 'package:quransinar/bloc/cubit/surah/list_surah/surah_cubit.dart';
import 'package:quransinar/bloc/cubit/surah/surahdetail_cubit.dart';
import 'package:quransinar/bloc/thmemode_cubit.dart';
import 'package:quransinar/routing/route.dart';

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
        BlocProvider<SurahdetailCubit>(
          create: (context) => SurahdetailCubit(),
        ),
        BlocProvider<SurahsearchCubit>(
          create: (context) => SurahsearchCubit(),
        ),
        BlocProvider(create: ((context) => SurahCubit()))
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: theme,
          );
        },
      ),
    );
  }
}
