// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoaImpl _$$DoaImplFromJson(Map<String, dynamic> json) => _$DoaImpl(
      id: (json['id'] as num).toInt(),
      judul: json['judul'] as String,
      latin: json['latin'] as String,
      arab: json['arab'] as String,
      terjemah: json['terjemah'] as String,
    );

Map<String, dynamic> _$$DoaImplToJson(_$DoaImpl instance) => <String, dynamic>{
      'id': instance.id,
      'judul': instance.judul,
      'latin': instance.latin,
      'arab': instance.arab,
      'terjemah': instance.terjemah,
    };
