// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      nomor: (json['nomor'] as num?)?.toInt(),
      nama: json['nama'] as String?,
      nama_latin: json['nama_latin'] as String?,
      jumlah_ayat: (json['jumlah_ayat'] as num).toInt(),
      tempat_turun: json['tempat_turun'] as String?,
      arti: json['arti'] as String?,
      deskripsi: json['deskripsi'] as String?,
      ayat: (json['ayat'] as List<dynamic>?)
          ?.map((e) => Ayat.fromJson(e as Map<String, dynamic>))
          .toList(),
      suratSelanjutnya: json['suratSelanjutnya'] == null
          ? null
          : SurahSelanjutnya.fromJson(
              json['suratSelanjutnya'] as Map<String, dynamic>),
      suratSebelumnya: json['suratSebelumnya'] as bool?,
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'nama_latin': instance.nama_latin,
      'jumlah_ayat': instance.jumlah_ayat,
      'tempat_turun': instance.tempat_turun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'ayat': instance.ayat,
      'suratSelanjutnya': instance.suratSelanjutnya,
      'suratSebelumnya': instance.suratSebelumnya,
    };
