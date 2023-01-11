import 'package:flutter/material.dart';
import 'package:flutter_tabbar/view/kayit_oldu.dart';

class UyeOl extends StatefulWidget {
  const UyeOl({Key? key}) : super(key: key);

  @override
  _UyeOlState createState() => _UyeOlState();
}

class _UyeOlState extends State<UyeOl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YENİ KAYIT EKRANI"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "isim",
                  prefixIcon: Icon(Icons.person_add, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Soyisim",
                  prefixIcon: Icon(Icons.person_add, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Doğum Tarihi  ör:14/11/1995",
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Anne kızlık Soyadı",
                  prefixIcon: Icon(Icons.person_add, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Telefon 1",
                  prefixIcon: Icon(Icons.add_call, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Telefon 2 ",
                  prefixIcon: Icon(Icons.add_call, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "E-mail",
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Adres 1 ",
                  prefixIcon: Icon(Icons.home, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Adres 2",
                  hintStyle: TextStyle(fontSize: 25),
                  prefixIcon: Icon(Icons.home, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: Colors.blue,
                    elevation: 0.0,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () async {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const KayitOldu(
                                text: "Kaydınız Başarıyla Tamamlandı ...",
                              )));
                    },
                    child: const Text(
                      "Üye Ol",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
