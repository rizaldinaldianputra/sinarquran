import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/ayat.dart';
import 'package:quransinar/model/surah_sebelumnya.dart';
import 'package:quransinar/model/surah_selanjutnya.dart';

part 'detail_surah.freezed.dart';
part 'detail_surah.g.dart';

@freezed
class DetailSurah with _$DetailSurah {
  const factory DetailSurah({
    required bool status,
    required int nomor,
    required String nama,
    required String nama_latin,
    required int jumlah_ayat,
    required String tempat_turun,
    required String arti,
    required String deskripsi,
    required String audio,
    required List<Ayat> ayat,
    required SurahSelanjutnya surat_selanjutnya,
    required dynamic surat_sebelumnya,
  }) = _DetailSurah;

  factory DetailSurah.fromJson(Map<String, dynamic> json) =>
      _$DetailSurahFromJson(json);
}
