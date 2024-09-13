import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/surah.dart';

part 'surahsearch_state.freezed.dart';

@freezed
class SurahsearchState with _$SurahsearchState {
  const factory SurahsearchState.initial() = _Initial;
  const factory SurahsearchState.loading() = _Loading;
  const factory SurahsearchState.success(List<Surah> surahList) = _Success;
  const factory SurahsearchState.searching() = _Searching;
  const factory SurahsearchState.searchSuccess(List<Surah> searchResults) =
      _SearchSuccess;
  const factory SurahsearchState.searchError(String errorMessage) =
      _SearchError;
  const factory SurahsearchState.error(String errorMessage) = _Error;
}
