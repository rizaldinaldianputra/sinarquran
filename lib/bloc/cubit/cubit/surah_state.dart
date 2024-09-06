part of 'surah_cubit.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.initial() = _Initial;
  const factory SurahState.loading() = _Loading;
  const factory SurahState.success(DetailSurah detailsurah) = _Success;
  const factory SurahState.error(String errorMessage) = _Error;
}
