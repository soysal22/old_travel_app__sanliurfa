// ignore_for_file: unused_element, avoid_print, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_tabbar/view/Home/main_view.dart';
import 'package:flutter_tabbar/view/login/sifre_unuttum.dart';
import 'package:flutter_tabbar/view/login/uyeol.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const LoginScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    try {
      //  kontrol kısmı
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // eğerki oturum hatası olursa bunu yapsın kısmı
      if (e.code == "user_not_found") {
        print("Kullanıcı bulunamadı");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Değişimin Başladığı Adres",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: 3.0,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              "Mezopotamya Living Lab",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 40),

            // kullanıcı giriş kısmı

            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Kullanıcı e-mail",
                prefixIcon: Icon(Icons.email, color: Colors.black),
              ),
            ),
            const SizedBox(height: 26),

            // şifre kısmı
            TextField(
              controller: _passwordController,
              obscureText: true, // yazdığımız şifeyi gizlemeye yarıyor
              decoration: const InputDecoration(
                hintText: "Kullanıcı Şifresi",
                prefixIcon: Icon(
                  Icons.lock_open,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SifremiUnuttum()));
              },
              child: const Text(
                "Şifrenizi mi Unuttunuz ?",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            const SizedBox(height: 50.0),
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
                      builder: (context) => const BottomBar()));

                  // --firebase Login Controller
                  /*
                      User? user =  await loginUsingEmailPassword(email: _emailController.text password: _passwordController.text, context: context);
                  if(user != null)
                  {
                     Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => MainView()));
                  }else{
                    return print(user);
                  }*/
                },
                child: const Text(
                  "Giriş Yap",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Colors.blue,
                elevation: 0.0,
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () async {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const UyeOl()));
                },
                child: const Text(
                  "Uye Ol",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
