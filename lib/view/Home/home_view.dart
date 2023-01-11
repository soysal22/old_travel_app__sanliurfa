import 'package:flutter/material.dart';
import 'package:flutter_tabbar/widget/app_baslik_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  List home_egitim = [
    "1.jpeg",
    "2.jpeg",
    "3.jpeg",
    "4.jpeg",
  ];
  // ignore: non_constant_identifier_names
  List home_girisimcilik = [
    "5.jpeg",
    "6.jpeg",
    "7.jpeg",
    "8.jpeg",
  ];
  // ignore: non_constant_identifier_names
  List home_kuluckaMerkezi = [
    "8.jpeg",
    "9.jpeg",
    "10.jpeg",
    "11.jpeg",
  ];
  // ignore: non_constant_identifier_names
  List home_tasarim_Uretim = [
    "11.jpeg",
    "12.jpeg",
    "13.jpeg",
    "14.jpeg",
  ];

  List sira = [
    "1",
    "2",
    "3",
    "4",
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarIcon(),
          const SizedBox(height: 20),
          const AnaBaslik(),
          const SizedBox(height: 15),
          TabbarBaslik(tabController: _tabController),
          const SizedBox(height: 15),
          // büyük resim için
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 280,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              // home - Eğitim view
              TabbarViewDetay(
                disaridanGelenListe: home_egitim,
                wit: 200,
              ),

              // home - girişimcilik View
              TabbarViewDetay(
                disaridanGelenListe: home_girisimcilik,
                wit: 200,
              ),

              //home  - kuluçka view
              TabbarViewDetay(
                disaridanGelenListe: home_kuluckaMerkezi,
                wit: 200,
              ),

              //home - tasarım  üretim view
              TabbarViewDetay(
                disaridanGelenListe: home_tasarim_Uretim,
                wit: 200,
              ),
            ]),
          ),
          const SizedBox(height: 15),
          const KategoriBaslik(),
          const SizedBox(height: 10),

          // küçük resim için
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 50,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              // home - Eğitim view
              KategoriViewDetay(
                disaridanGelenListe: home_egitim,
                wit: 100,
                sayi: sira,
              ),

              // home - girişimcilik View
              KategoriViewDetay(
                disaridanGelenListe: home_girisimcilik,
                wit: 100,
                sayi: sira,
              ),

              //home  - kuluçka view
              KategoriViewDetay(
                disaridanGelenListe: home_kuluckaMerkezi,
                wit: 100,
                sayi: sira,
              ),

              //home - tasarım  üretim view
              KategoriViewDetay(
                disaridanGelenListe: home_tasarim_Uretim,
                wit: 100,
                sayi: sira,
              ),
            ]),
          ),

          //sayılar için
        ],
      ),
    );
  }
}

class SayiSay extends StatelessWidget {
  final List disaridanGelenListe;

  const SayiSay({
    Key? key,
    required this.disaridanGelenListe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: disaridanGelenListe.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                right: 20,
              ),
              width: 100,
              child: Text(
                disaridanGelenListe[index],
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          );
        });
  }
}

class KategoriViewDetay extends StatelessWidget {
  final List disaridanGelenListe;
  final double wit;
  final List sayi;

  const KategoriViewDetay({
    Key? key,
    required this.disaridanGelenListe,
    required this.sayi,
    required this.wit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: disaridanGelenListe.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Expanded(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  width: wit,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/" + disaridanGelenListe[index]),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class KategoriBaslik extends StatelessWidget {
  const KategoriBaslik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBaslikText(
            text: "Kategoriler",
            size: 20,
          ),
          AppBaslikText(
            text: "Hepsini Göster",
            size: 13,
            renk: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class TabbarViewDetay extends StatelessWidget {
  final List disaridanGelenListe;
  final double wit;

  const TabbarViewDetay({
    Key? key,
    required this.disaridanGelenListe,
    required this.wit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: disaridanGelenListe.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                right: 20,
              ),
              width: wit,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/" + disaridanGelenListe[index],
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          );
        });
  }
}

class TabbarBaslik extends StatelessWidget {
  const TabbarBaslik({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
          labelPadding: const EdgeInsets.only(left: 20, right: 20),
          controller: _tabController,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey.withOpacity(0.5),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: const [
            Tab(
              icon: Icon(Icons.school_outlined),
              text: "Eğitimler",
            ),
            Tab(
              icon: Icon(Icons.food_bank_outlined),
              text: "Girişimcilik",
            ),
            Tab(
              icon: Icon(Icons.place_outlined),
              text: "Kuluçka Merkezi",
            ),
            Tab(
              icon: Icon(Icons.design_services_outlined),
              text: "Tasarım Üretim Merkezi",
            ),
          ],
        ),
      ),
    );
  }
}

class AnaBaslik extends StatelessWidget {
  const AnaBaslik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: AppBaslikText(
        text: "Mezopotamya Living Lab",
        size: 20,
      ),
    );
  }
}

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.menu, color: Colors.black54),
          Icon(Icons.person, color: Colors.black54),
        ],
      ),
    );
  }
}
