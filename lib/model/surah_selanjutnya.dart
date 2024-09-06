import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_selanjutnya.freezed.dart';
part 'surah_selanjutnya.g.dart';

@freezed
class SurahSelanjutnya with _$SurahSelanjutnya {
  const factory SurahSelanjutnya({
    required int id,
    required int nomor,
    required String nama,
    required String nama_latin,
    required int jumlah_ayat,
    required String tempat_turun,
    required String arti,
    required String deskripsi,
    required String audio,
  }) = _SurahSelanjutnya;

  factory SurahSelanjutnya.fromJson(Map<String, dynamic> json) =>
      _$SurahSelanjutnyaFromJson(json);
}
