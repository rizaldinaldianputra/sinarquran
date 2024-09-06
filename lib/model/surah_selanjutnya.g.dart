// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_selanjutnya.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahSelanjutnyaImpl _$$SurahSelanjutnyaImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahSelanjutnyaImpl(
      id: (json['id'] as num).toInt(),
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      nama_latin: json['nama_latin'] as String,
      jumlah_ayat: (json['jumlah_ayat'] as num).toInt(),
      tempat_turun: json['tempat_turun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      audio: json['audio'] as String,
    );

Map<String, dynamic> _$$SurahSelanjutnyaImplToJson(
        _$SurahSelanjutnyaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomor': instance.nomor,
      'nama': instance.nama,
      'nama_latin': instance.nama_latin,
      'jumlah_ayat': instance.jumlah_ayat,
      'tempat_turun': instance.tempat_turun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audio': instance.audio,
    };
