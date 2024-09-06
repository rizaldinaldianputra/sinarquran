// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_sebelumnya.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahSebelumnyaImpl _$$SurahSebelumnyaImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahSebelumnyaImpl(
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

Map<String, dynamic> _$$SurahSebelumnyaImplToJson(
        _$SurahSebelumnyaImpl instance) =>
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
