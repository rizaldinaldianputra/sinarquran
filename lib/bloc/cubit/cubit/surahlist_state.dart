part of 'surahlist_cubit.dart';

@freezed
class SurahlistState with _$SurahlistState {
  const factory SurahlistState.initial() = _Initial;
  const factory SurahlistState.loading() = _Loading;
  const factory SurahlistState.success(List<Surah> detailsurah) = _Success;
  const factory SurahlistState.searching() = _Searching;
  const factory SurahlistState.searchSuccess(List<Surah> searchResults) =
      _SearchSuccess;
  const factory SurahlistState.searchError(String errorMessage) = _SearchError;

  const factory SurahlistState.error(String errorMessage) = _Error;
}
