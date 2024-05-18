import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quransinar/constant/colors.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

late TabController _tabController;

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
                            fontWeight: FontWeight.bold,
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
              TabBar(
                controller: _tabController,
                indicatorColor: HexColor('994EF8'),
                labelColor: Colors.white, // Warna teks tab saat diaktifkan
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Tab 1',
                  ),
                  Tab(text: 'Tab 2'),
                  Tab(
                    text: 'Tab 1',
                  ),
                  Tab(text: 'Tab 2'),
                ],
              ),
              Container(
                height: 400,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return ListTile(
                          trailing: Text('A'.toString(),
                              style: TextStyle(
                                  color: secondaryColor, fontSize: 20)),
                          title: Text('alfatihaah'.toString(),
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 20)),
                          subtitle: Text('Ayat - 01'.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          leading: ClipPath(
                            clipper: StarClipper(8),
                            child: Container(
                              width: 40,
                              height: 40,
                              color: secondaryColor,
                              child: Center(
                                  child: Text(
                                index.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item ${index + 20}'),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
