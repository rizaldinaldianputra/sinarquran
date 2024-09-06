import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/surah_selanjutnya.dart';
import 'ayat.dart'; // Gantilah dengan import yang sesuai untuk model Ayat

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  const factory Surah({
    required int? nomor,
    required String? nama,
    required String? nama_latin,
    required int jumlah_ayat,
    required String? tempat_turun,
    required String? arti,
    required String? deskripsi,
    required List<Ayat>? ayat,
    required SurahSelanjutnya? suratSelanjutnya,
    required bool? suratSebelumnya,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}
