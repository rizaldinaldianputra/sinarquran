// lib/models/surah_sebelumnya.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_sebelumnya.freezed.dart';
part 'surah_sebelumnya.g.dart';

@freezed
class SurahSebelumnya with _$SurahSebelumnya {
  const factory SurahSebelumnya({
    required int id,
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    required String audio,
  }) = _SurahSebelumnya;

  factory SurahSebelumnya.fromJson(Map<String, dynamic> json) =>
      _$SurahSebelumnyaFromJson(json);
}
