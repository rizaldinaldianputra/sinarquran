import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quransinar/model/doa.dart';
import 'package:quransinar/service/doa_service.dart';

part 'doa_state.dart';
part 'doa_cubit.freezed.dart';

class DoaCubit extends Cubit<DoaState> {
  DoaCubit() : super(const DoaState.initial());

  Future<void> fetchSurahById(String id, context) async {
    final DoaService doaService = DoaService(context);
    try {
      emit(const DoaState.loading());
      final Doa surah = await doaService.findAllDoaById(int.parse(id));
      emit(DoaState.success(surah));
    } catch (e) {
      emit(DoaState.error("Failed to load surah: ${e.toString()}"));
    }
  }
}
