import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/surah.dart';
import 'package:quransinar/service/surah_serice.dart';

part 'surahlist_state.dart';
part 'surahlist_cubit.freezed.dart';

class SurahlistCubit extends Cubit<SurahlistState> {
  SurahlistCubit() : super(const SurahlistState.initial());
  List<Surah> _surahList = [];

  Future<void> findAll(context) async {
    final SurahService surahService = SurahService(context);
    try {
      emit(const SurahlistState.loading());
      final List<Surah> surah = await surahService.findAllSurah();

      _surahList = surah; // Update daftar surah dengan hasil
      emit(SurahlistState.success(_surahList));
    } catch (e) {
      emit(SurahlistState.error("Failed to load surah: ${e.toString()}"));
    }
  }

  void searchSurah(String query) {
    try {
      emit(const SurahlistState.searching());
      final searchResults = _surahList.where((surah) {
        return surah.nama!.contains(query) || surah.nama_latin!.contains(query);
      }).toList();
      emit(SurahlistState.searchSuccess(searchResults));
    } catch (e) {
      emit(SurahlistState.searchError(
          "Failed to search surah: ${e.toString()}"));
    }
  }
}
