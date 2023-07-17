import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String profilResmiLinki;
  final String kullanciAdi;
  final String gecenSure;
  final String aciklama;
  final String gonderiResimLinki;

  const GonderiKarti(
      {super.key,
      required this.kullanciAdi,
      required this.gecenSure,
      required this.aciklama,
      required this.gonderiResimLinki,
      required this.profilResmiLinki});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: double.infinity,
          height: 380,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                          image: NetworkImage(profilResmiLinki),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        kullanciAdi,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        gecenSure,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 165.0,
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                aciklama,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Image.network(
                gonderiResimLinki,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ikonluButonum(
                      ikonum: Icons.favorite,
                      yazi: "Beğen",
                      fonksiyonum: () {
                        print("begen");
                      },
                    ),
                    ikonluButonum(
                      ikonum: Icons.comment,
                      yazi: "Yorum yap",
                      fonksiyonum: () {
                        print("Yorum");
                      },
                    ),
                    TextButton.icon(
                        //we can use ***TextIcon*** instead of using the widget ikonluButonum()
                        onPressed: () {
                          print("paylas");
                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.grey,
                          size: 25.0,
                        ),
                        label: Text(
                          "paylaş",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ))
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}

class ikonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;
  const ikonluButonum(
      {this.ikonum = Icons.comment, this.yazi = "Yorum Yap", this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.grey,
                size: 25.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                yazi,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
