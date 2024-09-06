import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quransinar/bloc/cubit/cubit/surah_cubit.dart';
import 'package:quransinar/model/detail_surah.dart';

class DetailAyat extends StatefulWidget {
  final String idayat;

  const DetailAyat({super.key, required this.idayat});

  @override
  State<DetailAyat> createState() => _DetailAyatState();
}

class _DetailAyatState extends State<DetailAyat> {
  @override
  void initState() {
    context.read<SurahCubit>().fetchSurahById(widget.idayat, context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Surah'),
      ),
      body: BlocBuilder<SurahCubit, SurahState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('No data yet')),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (surah) => Center(child: Text(surah.nama)),
            error: (errorMessage) =>
                Center(child: Text('Error: $errorMessage')),
          );
        },
      ),
    );
  }
}
