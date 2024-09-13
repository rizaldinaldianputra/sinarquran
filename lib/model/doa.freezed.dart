// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doa _$DoaFromJson(Map<String, dynamic> json) {
  return _Doa.fromJson(json);
}

/// @nodoc
mixin _$Doa {
  int get id => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get latin => throw _privateConstructorUsedError;
  String get arab => throw _privateConstructorUsedError;
  String get terjemah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoaCopyWith<Doa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoaCopyWith<$Res> {
  factory $DoaCopyWith(Doa value, $Res Function(Doa) then) =
      _$DoaCopyWithImpl<$Res, Doa>;
  @useResult
  $Res call({int id, String judul, String latin, String arab, String terjemah});
}

/// @nodoc
class _$DoaCopyWithImpl<$Res, $Val extends Doa> implements $DoaCopyWith<$Res> {
  _$DoaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? judul = null,
    Object? latin = null,
    Object? arab = null,
    Object? terjemah = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      latin: null == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      terjemah: null == terjemah
          ? _value.terjemah
          : terjemah // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoaImplCopyWith<$Res> implements $DoaCopyWith<$Res> {
  factory _$$DoaImplCopyWith(_$DoaImpl value, $Res Function(_$DoaImpl) then) =
      __$$DoaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String judul, String latin, String arab, String terjemah});
}

/// @nodoc
class __$$DoaImplCopyWithImpl<$Res> extends _$DoaCopyWithImpl<$Res, _$DoaImpl>
    implements _$$DoaImplCopyWith<$Res> {
  __$$DoaImplCopyWithImpl(_$DoaImpl _value, $Res Function(_$DoaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? judul = null,
    Object? latin = null,
    Object? arab = null,
    Object? terjemah = null,
  }) {
    return _then(_$DoaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      latin: null == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      terjemah: null == terjemah
          ? _value.terjemah
          : terjemah // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoaImpl implements _Doa {
  const _$DoaImpl(
      {required this.id,
      required this.judul,
      required this.latin,
      required this.arab,
      required this.terjemah});

  factory _$DoaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoaImplFromJson(json);

  @override
  final int id;
  @override
  final String judul;
  @override
  final String latin;
  @override
  final String arab;
  @override
  final String terjemah;

  @override
  String toString() {
    return 'Doa(id: $id, judul: $judul, latin: $latin, arab: $arab, terjemah: $terjemah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.latin, latin) || other.latin == latin) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.terjemah, terjemah) ||
                other.terjemah == terjemah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, judul, latin, arab, terjemah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoaImplCopyWith<_$DoaImpl> get copyWith =>
      __$$DoaImplCopyWithImpl<_$DoaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoaImplToJson(
      this,
    );
  }
}

abstract class _Doa implements Doa {
  const factory _Doa(
      {required final int id,
      required final String judul,
      required final String latin,
      required final String arab,
      required final String terjemah}) = _$DoaImpl;

  factory _Doa.fromJson(Map<String, dynamic> json) = _$DoaImpl.fromJson;

  @override
  int get id;
  @override
  String get judul;
  @override
  String get latin;
  @override
  String get arab;
  @override
  String get terjemah;
  @override
  @JsonKey(ignore: true)
  _$$DoaImplCopyWith<_$DoaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
