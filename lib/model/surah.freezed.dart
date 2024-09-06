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
  int? get nomor => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get nama_latin => throw _privateConstructorUsedError;
  int get jumlah_ayat => throw _privateConstructorUsedError;
  String? get tempat_turun => throw _privateConstructorUsedError;
  String? get arti => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  List<Ayat>? get ayat => throw _privateConstructorUsedError;
  SurahSelanjutnya? get suratSelanjutnya => throw _privateConstructorUsedError;
  bool? get suratSebelumnya => throw _privateConstructorUsedError;

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
      {int? nomor,
      String? nama,
      String? nama_latin,
      int jumlah_ayat,
      String? tempat_turun,
      String? arti,
      String? deskripsi,
      List<Ayat>? ayat,
      SurahSelanjutnya? suratSelanjutnya,
      bool? suratSebelumnya});

  $SurahSelanjutnyaCopyWith<$Res>? get suratSelanjutnya;
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
    Object? nomor = freezed,
    Object? nama = freezed,
    Object? nama_latin = freezed,
    Object? jumlah_ayat = null,
    Object? tempat_turun = freezed,
    Object? arti = freezed,
    Object? deskripsi = freezed,
    Object? ayat = freezed,
    Object? suratSelanjutnya = freezed,
    Object? suratSebelumnya = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      nama_latin: freezed == nama_latin
          ? _value.nama_latin
          : nama_latin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah_ayat: null == jumlah_ayat
          ? _value.jumlah_ayat
          : jumlah_ayat // ignore: cast_nullable_to_non_nullable
              as int,
      tempat_turun: freezed == tempat_turun
          ? _value.tempat_turun
          : tempat_turun // ignore: cast_nullable_to_non_nullable
              as String?,
      arti: freezed == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      ayat: freezed == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>?,
      suratSelanjutnya: freezed == suratSelanjutnya
          ? _value.suratSelanjutnya
          : suratSelanjutnya // ignore: cast_nullable_to_non_nullable
              as SurahSelanjutnya?,
      suratSebelumnya: freezed == suratSebelumnya
          ? _value.suratSebelumnya
          : suratSebelumnya // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahSelanjutnyaCopyWith<$Res>? get suratSelanjutnya {
    if (_value.suratSelanjutnya == null) {
      return null;
    }

    return $SurahSelanjutnyaCopyWith<$Res>(_value.suratSelanjutnya!, (value) {
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
      {int? nomor,
      String? nama,
      String? nama_latin,
      int jumlah_ayat,
      String? tempat_turun,
      String? arti,
      String? deskripsi,
      List<Ayat>? ayat,
      SurahSelanjutnya? suratSelanjutnya,
      bool? suratSebelumnya});

  @override
  $SurahSelanjutnyaCopyWith<$Res>? get suratSelanjutnya;
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
    Object? nomor = freezed,
    Object? nama = freezed,
    Object? nama_latin = freezed,
    Object? jumlah_ayat = null,
    Object? tempat_turun = freezed,
    Object? arti = freezed,
    Object? deskripsi = freezed,
    Object? ayat = freezed,
    Object? suratSelanjutnya = freezed,
    Object? suratSebelumnya = freezed,
  }) {
    return _then(_$SurahImpl(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      nama_latin: freezed == nama_latin
          ? _value.nama_latin
          : nama_latin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah_ayat: null == jumlah_ayat
          ? _value.jumlah_ayat
          : jumlah_ayat // ignore: cast_nullable_to_non_nullable
              as int,
      tempat_turun: freezed == tempat_turun
          ? _value.tempat_turun
          : tempat_turun // ignore: cast_nullable_to_non_nullable
              as String?,
      arti: freezed == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      ayat: freezed == ayat
          ? _value._ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>?,
      suratSelanjutnya: freezed == suratSelanjutnya
          ? _value.suratSelanjutnya
          : suratSelanjutnya // ignore: cast_nullable_to_non_nullable
              as SurahSelanjutnya?,
      suratSebelumnya: freezed == suratSebelumnya
          ? _value.suratSebelumnya
          : suratSebelumnya // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahImpl implements _Surah {
  const _$SurahImpl(
      {required this.nomor,
      required this.nama,
      required this.nama_latin,
      required this.jumlah_ayat,
      required this.tempat_turun,
      required this.arti,
      required this.deskripsi,
      required final List<Ayat>? ayat,
      required this.suratSelanjutnya,
      required this.suratSebelumnya})
      : _ayat = ayat;

  factory _$SurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahImplFromJson(json);

  @override
  final int? nomor;
  @override
  final String? nama;
  @override
  final String? nama_latin;
  @override
  final int jumlah_ayat;
  @override
  final String? tempat_turun;
  @override
  final String? arti;
  @override
  final String? deskripsi;
  final List<Ayat>? _ayat;
  @override
  List<Ayat>? get ayat {
    final value = _ayat;
    if (value == null) return null;
    if (_ayat is EqualUnmodifiableListView) return _ayat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SurahSelanjutnya? suratSelanjutnya;
  @override
  final bool? suratSebelumnya;

  @override
  String toString() {
    return 'Surah(nomor: $nomor, nama: $nama, nama_latin: $nama_latin, jumlah_ayat: $jumlah_ayat, tempat_turun: $tempat_turun, arti: $arti, deskripsi: $deskripsi, ayat: $ayat, suratSelanjutnya: $suratSelanjutnya, suratSebelumnya: $suratSebelumnya)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahImpl &&
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
      nama_latin,
      jumlah_ayat,
      tempat_turun,
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
      {required final int? nomor,
      required final String? nama,
      required final String? nama_latin,
      required final int jumlah_ayat,
      required final String? tempat_turun,
      required final String? arti,
      required final String? deskripsi,
      required final List<Ayat>? ayat,
      required final SurahSelanjutnya? suratSelanjutnya,
      required final bool? suratSebelumnya}) = _$SurahImpl;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$SurahImpl.fromJson;

  @override
  int? get nomor;
  @override
  String? get nama;
  @override
  String? get nama_latin;
  @override
  int get jumlah_ayat;
  @override
  String? get tempat_turun;
  @override
  String? get arti;
  @override
  String? get deskripsi;
  @override
  List<Ayat>? get ayat;
  @override
  SurahSelanjutnya? get suratSelanjutnya;
  @override
  bool? get suratSebelumnya;
  @override
  @JsonKey(ignore: true)
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
