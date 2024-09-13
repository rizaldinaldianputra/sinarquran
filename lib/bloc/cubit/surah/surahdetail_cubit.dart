import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/detail_surah.dart';
import 'package:quransinar/service/surah_serice.dart';

part 'surahdetail_state.dart';
part 'surahdetail_cubit.freezed.dart';

class SurahdetailCubit extends Cubit<SurahdetailState> {
  SurahdetailCubit() : super(const SurahdetailState.initial());

  Future<void> fetchSurahById(String id, context) async {
    final SurahService surahService = SurahService(context);
    try {
      emit(const SurahdetailState.loading());
      final DetailSurah surah =
          await surahService.findAllSurahById(int.parse(id));
      emit(SurahdetailState.success(surah));
    } catch (e) {
      emit(SurahdetailState.error("Failed to load surah: ${e.toString()}"));
    }
  }
}
