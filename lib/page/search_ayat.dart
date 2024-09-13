import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quransinar/bloc/cubit/surah/search_surah/surahsearch_cubit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quransinar/bloc/cubit/surah/search_surah/surahsearch_state.dart';
import 'package:quransinar/constant/colors.dart';

class SearchAyatPage extends StatefulWidget {
  const SearchAyatPage({super.key});

  @override
  State<SearchAyatPage> createState() => _SearchAyatPageState();
}

class _SearchAyatPageState extends State<SearchAyatPage> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();

    // Fetch all surahs when the page is first opened
    context.read<SurahsearchCubit>().loadSurahList(context);

    // Add listener to the search field for real-time search
    _searchController.addListener(() {
      context.read<SurahsearchCubit>().searchSurah(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor('DF98FA'),
                HexColor('9055FF'),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Center(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  hintText: 'Search surah...',
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      body: BlocBuilder<SurahsearchCubit, SurahsearchState>(
        builder: (context, state) {
          return state.when(
            error: (errorMessage) => Center(child: Text(errorMessage)),
            searching: () => const Center(child: CircularProgressIndicator()),
            initial: () => const Center(child: Text('Loading...')),
            loading: () => const Center(child: CircularProgressIndicator()),
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
                      style: TextStyle(color: secondaryColor, fontSize: 20)),
                  title: Text(
                      '${surahList[index].nama_latin} (${surahList[index].jumlah_ayat})',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18)),
                  subtitle: Text(surahList[index].tempat_turun!,
                      style: TextStyle(color: secondaryColor, fontSize: 16)),
                  leading: ClipPath(
                    clipper: StarClipper(7),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      color: Colors.purple.shade300,
                      child: Center(
                          child: Text(
                        index.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                );
              },
            ),
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
                      style: TextStyle(color: secondaryColor, fontSize: 20)),
                  title: Text(
                      '${searchResults[index].nama_latin} (${searchResults[index].jumlah_ayat})',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18)),
                  subtitle: Text(searchResults[index].tempat_turun!,
                      style: TextStyle(color: secondaryColor, fontSize: 16)),
                  leading: ClipPath(
                    clipper: StarClipper(7),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      height: 50,
                      color: Colors.purple.shade300,
                      child: Center(
                          child: Text(
                        index.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                );
              },
            ),
            searchError: (errorMessage) => Center(child: Text(errorMessage)),
          );
        },
      ),
    );
  }
}
