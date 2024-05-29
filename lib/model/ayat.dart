// lib/models/ayat.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayat.freezed.dart';
part 'ayat.g.dart';

@freezed
class Ayat with _$Ayat {
  const factory Ayat({
    required int id,
    required int surah,
    required int nomor,
    required String ar,
    required String tr,
    required String idn,
  }) = _Ayat;

  factory Ayat.fromJson(Map<String, dynamic> json) => _$AyatFromJson(json);
}
