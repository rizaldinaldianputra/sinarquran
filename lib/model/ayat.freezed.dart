// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ayat _$AyatFromJson(Map<String, dynamic> json) {
  return _Ayat.fromJson(json);
}

/// @nodoc
mixin _$Ayat {
  int get id => throw _privateConstructorUsedError;
  int get surah => throw _privateConstructorUsedError;
  int get nomor => throw _privateConstructorUsedError;
  String get ar => throw _privateConstructorUsedError;
  String get tr => throw _privateConstructorUsedError;
  String get idn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyatCopyWith<Ayat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyatCopyWith<$Res> {
  factory $AyatCopyWith(Ayat value, $Res Function(Ayat) then) =
      _$AyatCopyWithImpl<$Res, Ayat>;
  @useResult
  $Res call({int id, int surah, int nomor, String ar, String tr, String idn});
}

/// @nodoc
class _$AyatCopyWithImpl<$Res, $Val extends Ayat>
    implements $AyatCopyWith<$Res> {
  _$AyatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? nomor = null,
    Object? ar = null,
    Object? tr = null,
    Object? idn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
      idn: null == idn
          ? _value.idn
          : idn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyatImplCopyWith<$Res> implements $AyatCopyWith<$Res> {
  factory _$$AyatImplCopyWith(
          _$AyatImpl value, $Res Function(_$AyatImpl) then) =
      __$$AyatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int surah, int nomor, String ar, String tr, String idn});
}

/// @nodoc
class __$$AyatImplCopyWithImpl<$Res>
    extends _$AyatCopyWithImpl<$Res, _$AyatImpl>
    implements _$$AyatImplCopyWith<$Res> {
  __$$AyatImplCopyWithImpl(_$AyatImpl _value, $Res Function(_$AyatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? nomor = null,
    Object? ar = null,
    Object? tr = null,
    Object? idn = null,
  }) {
    return _then(_$AyatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
      idn: null == idn
          ? _value.idn
          : idn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyatImpl implements _Ayat {
  const _$AyatImpl(
      {required this.id,
      required this.surah,
      required this.nomor,
      required this.ar,
      required this.tr,
      required this.idn});

  factory _$AyatImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyatImplFromJson(json);

  @override
  final int id;
  @override
  final int surah;
  @override
  final int nomor;
  @override
  final String ar;
  @override
  final String tr;
  @override
  final String idn;

  @override
  String toString() {
    return 'Ayat(id: $id, surah: $surah, nomor: $nomor, ar: $ar, tr: $tr, idn: $idn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.ar, ar) || other.ar == ar) &&
            (identical(other.tr, tr) || other.tr == tr) &&
            (identical(other.idn, idn) || other.idn == idn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, surah, nomor, ar, tr, idn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      __$$AyatImplCopyWithImpl<_$AyatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyatImplToJson(
      this,
    );
  }
}

abstract class _Ayat implements Ayat {
  const factory _Ayat(
      {required final int id,
      required final int surah,
      required final int nomor,
      required final String ar,
      required final String tr,
      required final String idn}) = _$AyatImpl;

  factory _Ayat.fromJson(Map<String, dynamic> json) = _$AyatImpl.fromJson;

  @override
  int get id;
  @override
  int get surah;
  @override
  int get nomor;
  @override
  String get ar;
  @override
  String get tr;
  @override
  String get idn;
  @override
  @JsonKey(ignore: true)
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
