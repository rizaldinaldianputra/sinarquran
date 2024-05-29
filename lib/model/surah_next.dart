// lib/models/surah_next.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_next.freezed.dart';
part 'surah_next.g.dart';

@freezed
class SurahNext with _$SurahNext {
  const factory SurahNext({
    required int id,
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    required String audio,
  }) = _SurahNext;

  factory SurahNext.fromJson(Map<String, dynamic> json) =>
      _$SurahNextFromJson(json);
}
