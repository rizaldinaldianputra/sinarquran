// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_next.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahNextImpl _$$SurahNextImplFromJson(Map<String, dynamic> json) =>
    _$SurahNextImpl(
      id: (json['id'] as num).toInt(),
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      namaLatin: json['namaLatin'] as String,
      jumlahAyat: (json['jumlahAyat'] as num).toInt(),
      tempatTurun: json['tempatTurun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      audio: json['audio'] as String,
    );

Map<String, dynamic> _$$SurahNextImplToJson(_$SurahNextImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audio': instance.audio,
    };
