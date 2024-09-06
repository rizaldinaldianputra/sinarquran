import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quransinar/bloc/cubit/cubit/surahlist_cubit.dart';
import 'package:quransinar/constant/colors.dart';
import 'package:quransinar/model/surah.dart';

class AyatPage extends StatefulWidget {
  const AyatPage({super.key});

  @override
  State<AyatPage> createState() => _AyatPageState();
}

class _AyatPageState extends State<AyatPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    context.read<SurahlistCubit>().findAll(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(title: const Text('Item 2'), onTap: () {})
        ]),
      ),
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
        iconTheme: const IconThemeData(
            color: Colors.white), // Ganti dengan warna yang diinginkan

        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Colors.transparent,
        title: const Text('Sinar Quran'),
      ),
      backgroundColor: backgroundPrimary,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BlocBuilder<SurahlistCubit, SurahlistState>(
                builder: (context, state) {
                  return state.when(
                    /// The [Widget] is given a [ListTile] that is given a [Text] and a
                    /// [Text].
                    initial: () => const Center(child: Text('Load Data')),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: (surahList) => ListView.builder(
                      itemCount: surahList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            context.goNamed("detailayat", queryParameters: {
                              'idayat': surahList[index].nomor.toString()
                            });
                          },
                          trailing: Text(surahList[index].nama!,
                              style: TextStyle(
                                  color: secondaryColor, fontSize: 20)),
                          title: Text(
                              '${surahList[index].nama_latin} (${surahList[index].jumlah_ayat})',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 20)),
                          subtitle: Text(surahList[index].tempat_turun!,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16)),
                          leading: ClipPath(
                            clipper: StarClipper(8),
                            child: Container(
                              width: 40,
                              height: 40,
                              color: secondaryColor,
                              child: Center(
                                  child: Text(
                                index.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                    error: (message) => Center(child: Text(message)),
                    searching: () =>
                        const Center(child: CircularProgressIndicator()),
                    searchSuccess: (searchResults) => ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            context.goNamed("detailayat", queryParameters: {
                              'idayat': searchResults[index].nomor.toString()
                            });
                          },
                          trailing: Text(searchResults[index].nama!,
                              style: TextStyle(
                                  color: secondaryColor, fontSize: 20)),
                          title: Text(
                              '${searchResults[index].nama_latin} (${searchResults[index].jumlah_ayat})',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 20)),
                          subtitle: Text(searchResults[index].tempat_turun!,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16)),
                          leading: ClipPath(
                            clipper: StarClipper(8),
                            child: Container(
                              width: 40,
                              height: 40,
                              color: secondaryColor,
                              child: Center(
                                  child: Text(
                                index.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                    searchError: (errorMessage) =>
                        Center(child: Text('Search Error: $errorMessage')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: backgroundPrimary,
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
