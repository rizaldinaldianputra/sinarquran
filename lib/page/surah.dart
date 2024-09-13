import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quransinar/bloc/cubit/surah/list_surah/surah_cubit.dart';
import 'package:quransinar/constant/colors.dart';

class SurahPage extends StatefulWidget {
  const SurahPage({super.key});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SurahCubit, SurahState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Load Data')),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (surahList) => ListView.builder(
              itemCount: surahList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    context.goNamed("detailayat", queryParameters: {
                      'idayat': surahList[index].nomor.toString()
                    });
                  },
                  trailing: Text(surahList[index].nama!,
                      style: TextStyle(color: secondaryColor, fontSize: 20)),
                  title: Text(
                      '${surahList[index].nama_latin} (${surahList[index].jumlah_ayat})',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18)),
                  subtitle: Text(surahList[index].tempat_turun!,
                      style: TextStyle(color: secondaryColor, fontSize: 16)),
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      HexColor('DF98FA'),
                      HexColor('9055FF'),
                    ])),
                    child: Center(
                        child: Text(
                      index.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                );
              },
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
