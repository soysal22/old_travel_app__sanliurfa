import 'package:flutter/material.dart';
import 'package:flutter_tabbar/view/kayit_oldu.dart';

class SifremiUnuttum extends StatefulWidget {
  const SifremiUnuttum({Key? key}) : super(key: key);

  @override
  _SifremiUnuttumState createState() => _SifremiUnuttumState();
}

class _SifremiUnuttumState extends State<SifremiUnuttum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Şifre Yenileme Sayfası"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: "E-Mail",
              prefixIcon: Icon(Icons.mail, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
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
                          text: "Link E-Mail Adresinize Başarıyla Ulaştı",
                        )));
              },
              child: const Text(
                " GÖNDER ",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
