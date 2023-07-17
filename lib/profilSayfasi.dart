import 'package:flutter/material.dart';

import 'GonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyisim;
  final String kullanciAdi;
  final String kapakResimLinki;
  final String profilResimLinki;

  ProfilSayfasi(
      {required this.isimSoyisim,
      required this.kullanciAdi,
      required this.kapakResimLinki,
      required this.profilResimLinki});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 330.0,
                color: Colors.grey[100],
              ),
              Container(
                width: double.infinity,
                height: 260.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(kapakResimLinki),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: isimSoyisim,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                      image: DecorationImage(
                          image: NetworkImage(profilResimLinki),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                bottom: 0.0,
                child: Column(
                  children: [
                    Text(
                      isimSoyisim,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      kullanciAdi,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 80.0,
                right: 15.0,
                child: Container(
                    width: 130.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.black,
                        ),
                        label: Text("Takip Et",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)))),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 80.0,
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      profilBilgileri(
                        bilgiIsmi: 'Takipçi',
                        bilgiSayisi: '20K',
                      ),
                      profilBilgileri(
                        bilgiIsmi: 'Takip',
                        bilgiSayisi: '150',
                      ),
                      profilBilgileri(
                        bilgiIsmi: 'pylaşım',
                        bilgiSayisi: '30',
                      ),
                    ],
                  ),
                ),
              ),
              GonderiKarti(
                profilResmiLinki:
                    "https://cdn.pixabay.com/photo/2019/05/04/15/24/woman-4178302_1280.jpg",
                kullanciAdi: "Esma Harun",
                gecenSure: "Bir gün önce",
                aciklama: "güzel bir gündü",
                gonderiResimLinki:
                    "https://cdn.pixabay.com/photo/2020/05/16/17/23/cycling-5178398_640.jpg",
              ),
              GonderiKarti(
                profilResmiLinki:
                    "https://cdn.pixabay.com/photo/2019/05/04/15/24/woman-4178302_1280.jpg",
                kullanciAdi: "Esma Harun",
                gecenSure: "Bir hafta önce",
                aciklama: "manzaraya Hayran Kaldım",
                gonderiResimLinki:
                    "https://cdn.pixabay.com/photo/2016/11/06/05/36/lake-1802337_1280.jpg",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class profilBilgileri extends StatelessWidget {
  final String bilgiSayisi;
  final String bilgiIsmi;

  const profilBilgileri({
    super.key,
    required this.bilgiSayisi,
    required this.bilgiIsmi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          bilgiSayisi,
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Text(
          bilgiIsmi,
          style: TextStyle(
              color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
