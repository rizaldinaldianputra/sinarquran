// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailSurah _$DetailSurahFromJson(Map<String, dynamic> json) {
  return _DetailSurah.fromJson(json);
}

/// @nodoc
mixin _$DetailSurah {
  bool get status => throw _privateConstructorUsedError;
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get nama_latin => throw _privateConstructorUsedError;
  int get jumlah_ayat => throw _privateConstructorUsedError;
  String get tempat_turun => throw _privateConstructorUsedError;
  String get arti => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  List<Ayat> get ayat => throw _privateConstructorUsedError;
  SurahSelanjutnya get surat_selanjutnya => throw _privateConstructorUsedError;
  dynamic get surat_sebelumnya => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailSurahCopyWith<DetailSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSurahCopyWith<$Res> {
  factory $DetailSurahCopyWith(
          DetailSurah value, $Res Function(DetailSurah) then) =
      _$DetailSurahCopyWithImpl<$Res, DetailSurah>;
  @useResult
  $Res call(
      {bool status,
      int nomor,
      String nama,
      String nama_latin,
      int jumlah_ayat,
      String tempat_turun,
      String arti,
      String deskripsi,
      String audio,
      List<Ayat> ayat,
      SurahSelanjutnya surat_selanjutnya,
      dynamic surat_sebelumnya});

  $SurahSelanjutnyaCopyWith<$Res> get surat_selanjutnya;
}

/// @nodoc
class _$DetailSurahCopyWithImpl<$Res, $Val extends DetailSurah>
    implements $DetailSurahCopyWith<$Res> {
  _$DetailSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? nomor = null,
    Object? nama = null,
    Object? nama_latin = null,
    Object? jumlah_ayat = null,
    Object? tempat_turun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? audio = null,
    Object? ayat = null,
    Object? surat_selanjutnya = null,
    Object? surat_sebelumnya = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      nama_latin: null == nama_latin
          ? _value.nama_latin
          : nama_latin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah_ayat: null == jumlah_ayat
          ? _value.jumlah_ayat
          : jumlah_ayat // ignore: cast_nullable_to_non_nullable
              as int,
      tempat_turun: null == tempat_turun
          ? _value.tempat_turun
          : tempat_turun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
      surat_selanjutnya: null == surat_selanjutnya
          ? _value.surat_selanjutnya
          : surat_selanjutnya // ignore: cast_nullable_to_non_nullable
              as SurahSelanjutnya,
      surat_sebelumnya: freezed == surat_sebelumnya
          ? _value.surat_sebelumnya
          : surat_sebelumnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahSelanjutnyaCopyWith<$Res> get surat_selanjutnya {
    return $SurahSelanjutnyaCopyWith<$Res>(_value.surat_selanjutnya, (value) {
      return _then(_value.copyWith(surat_selanjutnya: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailSurahImplCopyWith<$Res>
    implements $DetailSurahCopyWith<$Res> {
  factory _$$DetailSurahImplCopyWith(
          _$DetailSurahImpl value, $Res Function(_$DetailSurahImpl) then) =
      __$$DetailSurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      int nomor,
      String nama,
      String nama_latin,
      int jumlah_ayat,
      String tempat_turun,
      String arti,
      String deskripsi,
      String audio,
      List<Ayat> ayat,
      SurahSelanjutnya surat_selanjutnya,
      dynamic surat_sebelumnya});

  @override
  $SurahSelanjutnyaCopyWith<$Res> get surat_selanjutnya;
}

/// @nodoc
class __$$DetailSurahImplCopyWithImpl<$Res>
    extends _$DetailSurahCopyWithImpl<$Res, _$DetailSurahImpl>
    implements _$$DetailSurahImplCopyWith<$Res> {
  __$$DetailSurahImplCopyWithImpl(
      _$DetailSurahImpl _value, $Res Function(_$DetailSurahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? nomor = null,
    Object? nama = null,
    Object? nama_latin = null,
    Object? jumlah_ayat = null,
    Object? tempat_turun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? audio = null,
    Object? ayat = null,
    Object? surat_selanjutnya = null,
    Object? surat_sebelumnya = freezed,
  }) {
    return _then(_$DetailSurahImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      nama_latin: null == nama_latin
          ? _value.nama_latin
          : nama_latin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah_ayat: null == jumlah_ayat
          ? _value.jumlah_ayat
          : jumlah_ayat // ignore: cast_nullable_to_non_nullable
              as int,
      tempat_turun: null == tempat_turun
          ? _value.tempat_turun
          : tempat_turun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      ayat: null == ayat
          ? _value._ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
      surat_selanjutnya: null == surat_selanjutnya
          ? _value.surat_selanjutnya
          : surat_selanjutnya // ignore: cast_nullable_to_non_nullable
              as SurahSelanjutnya,
      surat_sebelumnya: freezed == surat_sebelumnya
          ? _value.surat_sebelumnya
          : surat_sebelumnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailSurahImpl implements _DetailSurah {
  const _$DetailSurahImpl(
      {required this.status,
      required this.nomor,
      required this.nama,
      required this.nama_latin,
      required this.jumlah_ayat,
      required this.tempat_turun,
      required this.arti,
      required this.deskripsi,
      required this.audio,
      required final List<Ayat> ayat,
      required this.surat_selanjutnya,
      required this.surat_sebelumnya})
      : _ayat = ayat;

  factory _$DetailSurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailSurahImplFromJson(json);

  @override
  final bool status;
  @override
  final int nomor;
  @override
  final String nama;
  @override
  final String nama_latin;
  @override
  final int jumlah_ayat;
  @override
  final String tempat_turun;
  @override
  final String arti;
  @override
  final String deskripsi;
  @override
  final String audio;
  final List<Ayat> _ayat;
  @override
  List<Ayat> get ayat {
    if (_ayat is EqualUnmodifiableListView) return _ayat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayat);
  }

  @override
  final SurahSelanjutnya surat_selanjutnya;
  @override
  final dynamic surat_sebelumnya;

  @override
  String toString() {
    return 'DetailSurah(status: $status, nomor: $nomor, nama: $nama, nama_latin: $nama_latin, jumlah_ayat: $jumlah_ayat, tempat_turun: $tempat_turun, arti: $arti, deskripsi: $deskripsi, audio: $audio, ayat: $ayat, surat_selanjutnya: $surat_selanjutnya, surat_sebelumnya: $surat_sebelumnya)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSurahImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.nama_latin, nama_latin) ||
                other.nama_latin == nama_latin) &&
            (identical(other.jumlah_ayat, jumlah_ayat) ||
                other.jumlah_ayat == jumlah_ayat) &&
            (identical(other.tempat_turun, tempat_turun) ||
                other.tempat_turun == tempat_turun) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            const DeepCollectionEquality().equals(other._ayat, _ayat) &&
            (identical(other.surat_selanjutnya, surat_selanjutnya) ||
                other.surat_selanjutnya == surat_selanjutnya) &&
            const DeepCollectionEquality()
                .equals(other.surat_sebelumnya, surat_sebelumnya));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      nomor,
      nama,
      nama_latin,
      jumlah_ayat,
      tempat_turun,
      arti,
      deskripsi,
      audio,
      const DeepCollectionEquality().hash(_ayat),
      surat_selanjutnya,
      const DeepCollectionEquality().hash(surat_sebelumnya));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSurahImplCopyWith<_$DetailSurahImpl> get copyWith =>
      __$$DetailSurahImplCopyWithImpl<_$DetailSurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailSurahImplToJson(
      this,
    );
  }
}

abstract class _DetailSurah implements DetailSurah {
  const factory _DetailSurah(
      {required final bool status,
      required final int nomor,
      required final String nama,
      required final String nama_latin,
      required final int jumlah_ayat,
      required final String tempat_turun,
      required final String arti,
      required final String deskripsi,
      required final String audio,
      required final List<Ayat> ayat,
      required final SurahSelanjutnya surat_selanjutnya,
      required final dynamic surat_sebelumnya}) = _$DetailSurahImpl;

  factory _DetailSurah.fromJson(Map<String, dynamic> json) =
      _$DetailSurahImpl.fromJson;

  @override
  bool get status;
  @override
  int get nomor;
  @override
  String get nama;
  @override
  String get nama_latin;
  @override
  int get jumlah_ayat;
  @override
  String get tempat_turun;
  @override
  String get arti;
  @override
  String get deskripsi;
  @override
  String get audio;
  @override
  List<Ayat> get ayat;
  @override
  SurahSelanjutnya get surat_selanjutnya;
  @override
  dynamic get surat_sebelumnya;
  @override
  @JsonKey(ignore: true)
  _$$DetailSurahImplCopyWith<_$DetailSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
