// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      namaLatin: json['namaLatin'] as String,
      jumlahAyat: (json['jumlahAyat'] as num).toInt(),
      tempatTurun: json['tempatTurun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      ayat: (json['ayat'] as List<dynamic>)
          .map((e) => Ayat.fromJson(e as Map<String, dynamic>))
          .toList(),
      suratSelanjutnya:
          SurahNext.fromJson(json['suratSelanjutnya'] as Map<String, dynamic>),
      suratSebelumnya: json['suratSebelumnya'] as bool,
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'ayat': instance.ayat,
      'suratSelanjutnya': instance.suratSelanjutnya,
      'suratSebelumnya': instance.suratSebelumnya,
    };
