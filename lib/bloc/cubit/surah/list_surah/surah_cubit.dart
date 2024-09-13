import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/detail_surah.dart';
import 'package:quransinar/model/surah.dart';
import 'package:quransinar/service/surah_serice.dart';

part 'surah_state.dart'; // Sesuaikan dengan path file state kamu
part 'surah_cubit.freezed.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit() : super(const SurahState.initial());

  Future<void> findAllSurah(context) async {
    final SurahService surahService = SurahService(context);
    try {
      emit(const SurahState.loading());
      final List<Surah> surah = await surahService.findAllSurah();
      emit(SurahState.success(surah));
    } catch (e) {
      emit(SurahState.error("Failed to load surah: ${e.toString()}"));
    }
  }
}
