import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:socia_word/GonderiKarti.dart';
import 'package:socia_word/profilSayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: AppBar(
                backgroundColor: Colors.grey[100],
                elevation: 0.0,
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 37.0,
                  ),
                  onPressed: () {},
                ),
                title: Text(
                  "SociaWorld",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0,
                  ),
                ),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.purple[300],
                      size: 37.0,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Column(
                              children: [
                                duyuru("Kemal seni takip etmeye başladı",
                                    "iki dakika önce "),
                                duyuru("Jessica fotoğrafını beğendi",
                                    " bir saat önce "),
                                duyuru("cats_lover bir an paylaştı",
                                    "iki saat önce "),
                                duyuru("Esma_Harun seni takip etmeye başladı",
                                    "iki saat önce "),
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    width: 400,
                    //we can write the value of the width 200.0 or any value because we didnt define the aligment, the listview dont have alignment parametre so we can wrap the container with widget then replace widget with align then the value of the widget will be as it
                    height: 100.0,
                    decoration:
                        BoxDecoration(color: Colors.grey[100], boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 5.0),
                        blurRadius: 5.0,
                      )
                    ]),

                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        profilkartiOlustur(
                            "Esma Harun",
                            "https://cdn.pixabay.com/photo/2019/05/04/15/24/woman-4178302_1280.jpg",
                            "Esma Harun",
                            "https://cdn.pixabay.com/photo/2016/10/22/17/46/mountains-1761292_640.jpg"),
                        profilkartiOlustur(
                            "yıldız Çevik",
                            "https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_1280.jpg",
                            "Yıldız_Çev99",
                            "https://cdn.pixabay.com/photo/2015/01/20/13/13/samsung-605439_640.jpg"),
                        profilkartiOlustur(
                            "Ahmet İhsanoğlu",
                            "https://cdn.pixabay.com/photo/2016/03/26/22/13/man-1281562_1280.jpg",
                            "Ahmet_İh25",
                            "https://cdn.pixabay.com/photo/2016/03/26/13/09/cup-of-coffee-1280537_640.jpg"),
                        profilkartiOlustur(
                            "Tom Anderson",
                            "https://media.istockphoto.com/id/155295905/tr/foto%C4%9Fraf/i-am-happy.jpg?s=2048x2048&w=is&k=20&c=ymFZEk69z2LI20q1eGzqBBhPeJSKdG_EIqvrqEuSxeo=",
                            "Tomas_Andro",
                            "https://cdn.pixabay.com/photo/2015/12/27/05/48/turntable-1109588_640.jpg"),
                        profilkartiOlustur(
                            "cats_lover123",
                            "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_1280.jpg",
                            "cats_lover",
                            "https://cdn.pixabay.com/photo/2022/04/10/09/02/cats-7122943_640.png"),
                        profilkartiOlustur(
                            "Jessica Jones",
                            "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_1280.jpg",
                            "Jessica_Jones",
                            "https://cdn.pixabay.com/photo/2015/02/02/11/09/office-620822_1280.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GonderiKarti(
                    profilResmiLinki:
                        "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_640.jpg",
                    kullanciAdi: "Cats_lover",
                    gecenSure: "bir saat önce",
                    aciklama: "#love",
                    gonderiResimLinki:
                        "https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_640.jpg",
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
                        "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg",
                    kullanciAdi: "Hakan yılmaz",
                    gecenSure: "İki ay önce",
                    aciklama: "Baharın güzelliği",
                    gonderiResimLinki:
                        "https://cdn.pixabay.com/photo/2014/12/04/14/46/magnolia-trees-556718_640.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.purple[300],
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(mesaj),
          Text(
            gecenSure,
          ),
        ],
      ),
    );
  }

  Widget profilkartiOlustur(String kullanciAdi, String profilResmi,
      String isimSoyisim, String Kapakresmi) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ProfilSayfasi(
              profilResimLinki: profilResmi,
              isimSoyisim: kullanciAdi,
              kullanciAdi: isimSoyisim,
              kapakResimLinki: Kapakresmi,
            );
          }));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullanciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(40.0),
                          image: DecorationImage(
                            image: NetworkImage(profilResmi),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(35.0),
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                kullanciAdi,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
