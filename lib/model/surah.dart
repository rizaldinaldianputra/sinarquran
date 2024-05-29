import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/surah_next.dart';
import 'ayat.dart'; // Gantilah dengan import yang sesuai untuk model Ayat

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  const factory Surah({
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    required List<Ayat> ayat,
    required SurahNext suratSelanjutnya,
    required bool suratSebelumnya,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}
