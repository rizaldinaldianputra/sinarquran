import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quransinar/bloc/cubit/surah/list_surah/surah_cubit.dart';
import 'package:quransinar/constant/colors.dart';
import 'package:quransinar/page/surah.dart';

class AyatPage extends StatefulWidget {
  const AyatPage({super.key});

  @override
  State<AyatPage> createState() => _AyatPageState();
}

class _AyatPageState extends State<AyatPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController; // Declare TabController

  @override
  void initState() {
    super.initState();
    context.read<SurahCubit>().findAllSurah(context);
    _tabController =
        TabController(length: 3, vsync: this); // Initialize TabController
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of TabController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: secondaryColor,
        ),
        titleTextStyle: TextStyle(
            color: secondaryColor, fontSize: 24, fontWeight: FontWeight.bold),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Sinar Quran',
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor('DF98FA'),
                HexColor('9055FF'),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.goNamed('searchayat');
              },
              icon: const Icon(
                size: 20,
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      backgroundColor: backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  HexColor('DF98FA'),
                  HexColor('9055FF'),
                ],
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, bottom: 20, top: 20),
                    child: Text(
                      'Asamualiakum',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Rizaldi Naldian Putra',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 131,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        colors: [
                          HexColor('DF98FA'),
                          HexColor('9055FF'),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Last Read',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Alfatiah',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Ayat no : 1',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: Image.asset(
                            'assets/quran.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          TabBar(
            controller: _tabController,
            labelColor: secondaryColor,
            indicatorColor: secondaryColor,
            tabs: const [
              Tab(text: 'Surah Al-Quran'),
              Tab(text: 'Doa Sehari Hari'),
              Tab(text: 'Hadist'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: TabBarView(
              controller: _tabController,
              children: const [
                SurahPage(),
                SurahPage(),
                SurahPage(),
              ],
            ),
          ),

          // TabBar Section
        ],
      ),
      // TabBarView Section
    );
  }
}
