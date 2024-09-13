part of 'doa_cubit.dart';

@freezed
class DoaState with _$DoaState {
  const factory DoaState.initial() = _Initial;
  const factory DoaState.loading() = _Loading;
  const factory DoaState.success(List<Doa> detailsurah) = _Success;
  const factory DoaState.error(String errorMessage) = _Error;
}
