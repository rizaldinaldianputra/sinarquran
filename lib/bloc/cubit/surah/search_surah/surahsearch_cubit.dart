import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quransinar/bloc/cubit/surah/search_surah/surahsearch_state.dart';
import 'package:quransinar/model/surah.dart';
import 'package:quransinar/service/surah_serice.dart';

class SurahsearchCubit extends Cubit<SurahsearchState> {
  List<Surah> _surahList = [];

  SurahsearchCubit() : super(const SurahsearchState.initial());

  // Fungsi untuk mencari surah berdasarkan query dengan logika mirip "WHERE LIKE"
  void searchSurah(String query) {
    if (query.isEmpty) {
      emit(SurahsearchState.success(
          _surahList)); // Jika query kosong, tampilkan semua surah
    } else {
      try {
        emit(const SurahsearchState.searching());

        // Cari surah yang mengandung query baik di nama latin maupun di nama surah
        final searchResults = _surahList.where((surah) {
          final namaLatin = surah.nama_latin?.toLowerCase() ?? '';
          final nama = surah.nama?.toLowerCase() ?? '';
          final normalizedQuery = query.toLowerCase();

          // Mirip dengan SQL "WHERE LIKE" untuk mencari yang mengandung query
          return namaLatin.contains(normalizedQuery) ||
              nama.contains(normalizedQuery);
        }).toList();

        if (searchResults.isEmpty) {
          emit(const SurahsearchState.searchError('No results found'));
        } else {
          emit(SurahsearchState.searchSuccess(searchResults));
        }
      } catch (e) {
        emit(SurahsearchState.searchError('Error occurred: ${e.toString()}'));
      }
    }
  }

  // Fungsi untuk memuat semua data surah
  void loadSurahList(context) async {
    SurahService surahService = SurahService(context);
    _surahList = await surahService.findAllSurah();
    emit(SurahsearchState.success(_surahList));
  }
}
