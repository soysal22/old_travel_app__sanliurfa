// ignore_for_file: non_constant_identifier_names, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_tabbar/view/login/login_screen.dart';
import 'package:flutter_tabbar/widget/app_baslik_text.dart';
import 'package:flutter_tabbar/widget/app_icerik_text.dart';
import 'package:flutter_tabbar/widget/responsivebutton.dart';

class Tanitim extends StatefulWidget {
  const Tanitim({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<Tanitim> {
  List tanitim_resim = [
    "one.jpg",
    "two.jpg",
    "three.jpg",
    "four.jpg",
    "five.jpg",
  ];

  List tanitim_baslik = [
    "BALIKLIGÖL",
    "GÖBEKLİ TEPE",
    "KIZILKOYUN",
    "URFA YEMEKLERİ",
    "ZEYNEL BAŞKAN",
  ];

  List tanitim_alt_baslik = [
    "Tarihiyle Eşsiz Bir Mekan",
    "Tarihin Sıfır Noktası",
    "Kızılkoyun Nekropolü",
    "Şanlıurfa Mahalli Yemekleri",
    "Büyükşehir Belediye Başkanı",
  ];

  List tanitim_icerik = [
    "Çevre köyler için içme ve kullanma suyu kaynağıdır dağlardan gelen dereler, kıyıdaki pınarlar ve yeraltı sularıyla beslenir.Ayrıca benekli alabalığın gölde yaşaması önemidir.",
    "Göbeklitepe veya Göbekli Tepe, Şanlıurfa il merkezinin 18 km kuzeydoğusunda, Örencik köyü yakınlarında yer alan dünyanın bilinen en eski kült yapılar topluluğudur. ",
    "'Kızılkoyun Projesi' kapsamında, Haleplibahçe ile Tılfındır mahallelerinde 2'nci ve 3'üncü derece sit alanı olan, 40 dönümde ortaya çıkan mağaraların turizme kazandırılması için 389 ev ile yapının kamulaştırılarak, yıkımı yapıldı.",
    "Kalabalık yer sofralarından tutun da meşhur yemeklerine kadar aile ve akrabalık kültürünün yemek kültürü ile birlikte anıldığı memlekettir. Yer sofralarında yenilen meşhur yöresel lezzetlerin tadını başka şehirlerde kurulan sofralarda bulmanız da olanak dâhilinde değil.",
    "Hamarat Eller Sosyal Tesislerinde düzenlenen etkinlikte 23'ü yöresel yemek 10'u yöresel tatlı olmak üzere 33 çeşit lezzetin modern sunumu yapıldı. Davetlilere Hamarat Eller Mutfağında hazırlanan ara sıcaklar ikram edildi.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: tanitim_resim.length,
          //tanıtım sayfasını kaç adet olacağını burada  belirtiyoruz
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              // açılacak olan telefona göre sayfayı ayarlıyor
              height: double.maxFinite,
              // açılacak olan telefona göre sayfayı ayarlıyor
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/" + tanitim_resim[index]),
                    fit: BoxFit.cover),
              ),

              //--- Yazı başlagıç kısmı

              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                // boşluğu benim bırakmama yaryan komut

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBaslikText(
                          text: tanitim_baslik[index],
                        ),
                        const SizedBox(height: 10),
                        AppIcerikText(
                          text: tanitim_alt_baslik[index],
                          size: 25,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 300,
                          child: AppIcerikText(
                            text: tanitim_icerik[index],
                            renk: Colors.red,
                            size: 16,
                          ),
                        ),
                        const SizedBox(height: 40),
                        HomeViewButton(
                          elemansayisi: tanitim_resim.length,
                          indexdegeri: index,
                        ),
                      ],
                    ),

                    // sayfanın değeri
                    Column(
                      children: List.generate(
                        tanitim_resim.length,
                        (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 10,
                            height: index == indexDots ? 25 : 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index == indexDots
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.50),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class HomeViewButton extends StatelessWidget {
  int elemansayisi;
  int indexdegeri;

  HomeViewButton(
      {Key? key, required this.elemansayisi, required this.indexdegeri})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (elemansayisi == indexdegeri + 1) {
      return GestureDetector(
        // bu elemena button özelliğine yarıyor
        onTap: () {
          // burada üstüne basılabilir olduğunu söylüyoruz
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: ResponsiveButton(witdh: 200),
      );
    } else {
      return ResponsiveButton(witdh: 0);
    }
  }
}
