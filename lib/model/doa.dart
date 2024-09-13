import 'package:freezed_annotation/freezed_annotation.dart';

part 'doa.freezed.dart';
part 'doa.g.dart';

@freezed
class Doa with _$Doa {
  const factory Doa({
    required int id,
    required String judul,
    required String latin,
    required String arab,
    required String terjemah,
  }) = _Doa;

  factory Doa.fromJson(Map<String, dynamic> json) => _$DoaFromJson(json);
}
