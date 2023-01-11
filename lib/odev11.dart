import 'package:flutter/material.dart';

class Odev extends StatelessWidget {
  const Odev({Key? key}) : super(key: key);

  final String image = "assets/images/indir.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          // buda sağ tarafa buton eklemeke için
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_alert_rounded)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            baslik(),
            const SizedBox(
              height: 15,
            ),
            const Konum(),
            const SizedBox(
              height: 15,
            ),
            const EgitimBilgileri(
              yazi: 'günlük',
              aciklama: '4 saat / HAFTA İçi',
              renk: Colors.blue,
            )
          ],
        ),
      ),
    );
  }

  Row baslik() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Mobile Developer",
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ],
    );
  }
}

class EgitimBilgileri extends StatelessWidget {
  const EgitimBilgileri({
    Key? key,
    required this.yazi,
    required this.aciklama,
    this.renk = Colors.white,
  }) : super(key: key);

  final String yazi;
  final String aciklama;
  final Color renk;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        width: 120,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(yazi),
            Text(aciklama,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: renk)),
          ],
        ));
  }
}

class Konum extends StatelessWidget {
  const Konum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.location_on_sharp,
            color: Colors.grey,
            size: 15,
          ),
          Text(
            "Mezopotamya Living Lab",
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.grey, fontSize: 20),
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "4,9",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
