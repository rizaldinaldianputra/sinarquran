import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quransinar/bloc/cubit/surah/list_surah/surah_cubit.dart';
import 'package:quransinar/bloc/cubit/surah/surahdetail_cubit.dart';

class DetailAyat extends StatefulWidget {
  final String idayat;

  const DetailAyat({super.key, required this.idayat});

  @override
  State<DetailAyat> createState() => _DetailAyatState();
}

class _DetailAyatState extends State<DetailAyat> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  @override
  void initState() {
    context.read<SurahdetailCubit>().fetchSurahById(widget.idayat, context);
    super.initState();
  }

  void _playPause(String url) async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play(UrlSource(url));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahdetailCubit, SurahdetailState>(
      builder: (context, state) {
        return state.when(
          success: (detailsurah) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(detailsurah.nama_latin),
                automaticallyImplyLeading: false,
              ),
              body: Center(
                  child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          HexColor('DF98FA'),
                          HexColor('9055FF'),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${detailsurah.nama_latin} (${detailsurah.jumlah_ayat})',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${detailsurah.tempat_turun} - ',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              detailsurah.arti.toString(),
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          detailsurah.nama.toString(),
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: detailsurah.ayat.length,
                        itemBuilder: (context, index) {
                          final ayat = detailsurah.ayat[index];
                          return Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Card(
                                    elevation: 0.5,
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                colors: [
                                                  HexColor('DF98FA'),
                                                  HexColor('9055FF'),
                                                ],
                                              ),
                                            ),
                                            height: 50,
                                            width: 30,
                                            child: Center(
                                                child: Text(
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                    ayat.nomor.toString())),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(
                                                Icons.share,
                                                color: Colors.purple.shade400,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.bookmark,
                                                color: Colors.purple.shade400,
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.audiotrack_rounded,
                                                  color: isPlaying
                                                      ? Colors.green
                                                      : Colors.purple.shade400,
                                                ),
                                                onPressed: () {
                                                  _playPause(detailsurah.audio
                                                      .toString());
                                                },
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      ayat.ar.toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: HtmlWidget(ayat.tr.toString())),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      ayat.idn.toString(),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ));
                        }),
                  )
                ],
              )),
            );
          },
          initial: () {
            return Container();
          },
          error: (errorMessage) {
            return Center(child: Text(errorMessage));
          },
          loading: () {
            return const Scaffold(
                body: Center(child: CircularProgressIndicator()));
          },
        );
      },
    );
  }
}
