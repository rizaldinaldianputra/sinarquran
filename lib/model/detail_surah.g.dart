// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailSurahImpl _$$DetailSurahImplFromJson(Map<String, dynamic> json) =>
    _$DetailSurahImpl(
      status: json['status'] as bool,
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      nama_latin: json['nama_latin'] as String,
      jumlah_ayat: (json['jumlah_ayat'] as num).toInt(),
      tempat_turun: json['tempat_turun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      audio: json['audio'] as String,
      ayat: (json['ayat'] as List<dynamic>)
          .map((e) => Ayat.fromJson(e as Map<String, dynamic>))
          .toList(),
      surat_selanjutnya: SurahSelanjutnya.fromJson(
          json['surat_selanjutnya'] as Map<String, dynamic>),
      surat_sebelumnya: json['surat_sebelumnya'],
    );

Map<String, dynamic> _$$DetailSurahImplToJson(_$DetailSurahImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'nomor': instance.nomor,
      'nama': instance.nama,
      'nama_latin': instance.nama_latin,
      'jumlah_ayat': instance.jumlah_ayat,
      'tempat_turun': instance.tempat_turun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audio': instance.audio,
      'ayat': instance.ayat,
      'surat_selanjutnya': instance.surat_selanjutnya,
      'surat_sebelumnya': instance.surat_sebelumnya,
    };
