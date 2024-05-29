import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quransinar/constant/colors.dart';
import 'package:quransinar/model/surah.dart';
import 'package:quransinar/service/surah_serice.dart';

class AyatPage extends StatefulWidget {
  const AyatPage({super.key});

  @override
  State<AyatPage> createState() => _AyatPageState();
}

late TabController _tabController;

class _AyatPageState extends State<AyatPage>
    with SingleTickerProviderStateMixin {
  late SurahSerice surahSerice;
  List<Surah> listSurah = [];

  @override
  void initState() {
    surahSerice = SurahSerice(context);
    _tabController = TabController(length: 2, vsync: this);
    getDataSurah();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {}),
        title: Text(
          'Sinar Quran',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Asalmualaikum',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 18)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Rizaldi Naldian Putra',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.menu_book,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Last Read',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 18)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Al- Fatiah',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 30)),
                            Text('Ayat : 1',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 18))
                          ],
                        ),
                      ),
                      height: 150,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        HexColor('994EF8'),
                        HexColor('994EF8'),
                        Colors.white
                      ])),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0, right: 10),
                      child: Image.asset(
                        'assets/Quran.png',
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 340,
                margin: EdgeInsets.all(3),
                child: ListView.builder(
                  itemCount: listSurah.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      trailing: Text(listSurah[index].nama.toString(),
                          style:
                              TextStyle(color: secondaryColor, fontSize: 20)),
                      title: Text(
                          listSurah[index].namaLatin.toString() +
                              ' ' +
                              listSurah[index].jumlahAyat.toString(),
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 20)),
                      subtitle: Text(listSurah[index].tempatTurun.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      leading: ClipPath(
                        clipper: StarClipper(8),
                        child: Container(
                          width: 40,
                          height: 40,
                          color: secondaryColor,
                          child: Center(
                              child: Text(
                            index.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void getDataSurah() async {
    final x = await surahSerice.findAllSurah();
    listSurah = x;
    setState(() {});
  }
}
