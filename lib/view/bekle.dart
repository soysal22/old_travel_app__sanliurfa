import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<MainView> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("hello"),
            actions: [
              // buda sağ tarafa buton eklemeke için
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarms_rounded)),
            ],
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Tarihi Mekanlar",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Yeme İçme",
                  icon: Icon(Icons.food_bank_outlined),
                ),
                Tab(
                  text: "Önerilen Mekanlar",
                  icon: Icon(Icons.location_on_outlined),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            elevation: 10,
            child: Column(
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text("Anasayfa"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.shopping_basket),
                      title: const Text("SEPET"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.shopping_bag,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: const Text("Ürünler"),
                      trailing: const Text("Yeni"),
                      onTap: () {},
                    ),
                  ],
                )),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  "tab content 1",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  "tab content 2",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  "tab content 3",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      );
}
