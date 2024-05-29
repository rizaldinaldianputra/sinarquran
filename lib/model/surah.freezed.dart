// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;
  String get tempatTurun => throw _privateConstructorUsedError;
  String get arti => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  List<Ayat> get ayat => throw _privateConstructorUsedError;
  SurahNext get suratSelanjutnya => throw _privateConstructorUsedError;
  bool get suratSebelumnya => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      List<Ayat> ayat,
      SurahNext suratSelanjutnya,
      bool suratSebelumnya});

  $SurahNextCopyWith<$Res> get suratSelanjutnya;
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? ayat = null,
    Object? suratSelanjutnya = null,
    Object? suratSebelumnya = null,
  }) {
    return _then(_value.copyWith(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
      suratSelanjutnya: null == suratSelanjutnya
          ? _value.suratSelanjutnya
          : suratSelanjutnya // ignore: cast_nullable_to_non_nullable
              as SurahNext,
      suratSebelumnya: null == suratSebelumnya
          ? _value.suratSebelumnya
          : suratSebelumnya // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahNextCopyWith<$Res> get suratSelanjutnya {
    return $SurahNextCopyWith<$Res>(_value.suratSelanjutnya, (value) {
      return _then(_value.copyWith(suratSelanjutnya: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahImplCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$SurahImplCopyWith(
          _$SurahImpl value, $Res Function(_$SurahImpl) then) =
      __$$SurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      List<Ayat> ayat,
      SurahNext suratSelanjutnya,
      bool suratSebelumnya});

  @override
  $SurahNextCopyWith<$Res> get suratSelanjutnya;
}

/// @nodoc
class __$$SurahImplCopyWithImpl<$Res>
    extends _$SurahCopyWithImpl<$Res, _$SurahImpl>
    implements _$$SurahImplCopyWith<$Res> {
  __$$SurahImplCopyWithImpl(
      _$SurahImpl _value, $Res Function(_$SurahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? ayat = null,
    Object? suratSelanjutnya = null,
    Object? suratSebelumnya = null,
  }) {
    return _then(_$SurahImpl(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      ayat: null == ayat
          ? _value._ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
      suratSelanjutnya: null == suratSelanjutnya
          ? _value.suratSelanjutnya
          : suratSelanjutnya // ignore: cast_nullable_to_non_nullable
              as SurahNext,
      suratSebelumnya: null == suratSebelumnya
          ? _value.suratSebelumnya
          : suratSebelumnya // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahImpl implements _Surah {
  const _$SurahImpl(
      {required this.nomor,
      required this.nama,
      required this.namaLatin,
      required this.jumlahAyat,
      required this.tempatTurun,
      required this.arti,
      required this.deskripsi,
      required final List<Ayat> ayat,
      required this.suratSelanjutnya,
      required this.suratSebelumnya})
      : _ayat = ayat;

  factory _$SurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahImplFromJson(json);

  @override
  final int nomor;
  @override
  final String nama;
  @override
  final String namaLatin;
  @override
  final int jumlahAyat;
  @override
  final String tempatTurun;
  @override
  final String arti;
  @override
  final String deskripsi;
  final List<Ayat> _ayat;
  @override
  List<Ayat> get ayat {
    if (_ayat is EqualUnmodifiableListView) return _ayat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayat);
  }

  @override
  final SurahNext suratSelanjutnya;
  @override
  final bool suratSebelumnya;

  @override
  String toString() {
    return 'Surah(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, ayat: $ayat, suratSelanjutnya: $suratSelanjutnya, suratSebelumnya: $suratSebelumnya)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaLatin, namaLatin) ||
                other.namaLatin == namaLatin) &&
            (identical(other.jumlahAyat, jumlahAyat) ||
                other.jumlahAyat == jumlahAyat) &&
            (identical(other.tempatTurun, tempatTurun) ||
                other.tempatTurun == tempatTurun) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            const DeepCollectionEquality().equals(other._ayat, _ayat) &&
            (identical(other.suratSelanjutnya, suratSelanjutnya) ||
                other.suratSelanjutnya == suratSelanjutnya) &&
            (identical(other.suratSebelumnya, suratSebelumnya) ||
                other.suratSebelumnya == suratSebelumnya));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nomor,
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      const DeepCollectionEquality().hash(_ayat),
      suratSelanjutnya,
      suratSebelumnya);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      __$$SurahImplCopyWithImpl<_$SurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahImplToJson(
      this,
    );
  }
}

abstract class _Surah implements Surah {
  const factory _Surah(
      {required final int nomor,
      required final String nama,
      required final String namaLatin,
      required final int jumlahAyat,
      required final String tempatTurun,
      required final String arti,
      required final String deskripsi,
      required final List<Ayat> ayat,
      required final SurahNext suratSelanjutnya,
      required final bool suratSebelumnya}) = _$SurahImpl;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$SurahImpl.fromJson;

  @override
  int get nomor;
  @override
  String get nama;
  @override
  String get namaLatin;
  @override
  int get jumlahAyat;
  @override
  String get tempatTurun;
  @override
  String get arti;
  @override
  String get deskripsi;
  @override
  List<Ayat> get ayat;
  @override
  SurahNext get suratSelanjutnya;
  @override
  bool get suratSebelumnya;
  @override
  @JsonKey(ignore: true)
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
