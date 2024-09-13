part of 'surahdetail_cubit.dart';

@freezed
class SurahdetailState with _$SurahdetailState {
  const factory SurahdetailState.initial() = _Initial;

  const factory SurahdetailState.loading() = _Loading;

  const factory SurahdetailState.success(DetailSurah detailsurah) = _Success;

  const factory SurahdetailState.error(String errorMessage) = _Error;
}
