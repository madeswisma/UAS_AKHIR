import 'package:flutter/material.dart';
//import terlebih dahulu halaman yang diperlukan
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(title: Text("Product Listing")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener  berupa klik 1x
              onTap: () {
                //navigator.push  untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "Volk Rays TE37",
                    description:
                        "Buat orang-orang yang gandrung dengan dunia modifikasi mobil dan akrab dengan barang-barang aftermarket di pasaran, pasti sudah tidak asing dengan nama Volk Rays TE37. Ini adalah velg aftermarket andalan Rays Wheels dari Jepang yang pertama kali dibuat tahun 1996. Dengan desain palang 6 yang simpel tapi abadi, model ini langsung melejit pamornya setelah banyak dipakai di mobil-mobil sport dan balap.",
                    price: 46800000,
                    image: "Te37.png",
                    star: 5,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "Volk Rays TE37",
                  description: "Ring 18-20",
                  price: 46800000,
                  image: "Te37.png",
                  star: 5),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "BBS L 247",
                      description:
                          "BBS L 247 merupakan velg mobil dengan ukuran ring 17×7.5/10 pcd 8×100/114.3 et 35/20 warna silver lips polish. Velg BBS L 247 ring 17×7.5/10 pcd 8×100/114.3 et 35/20 warna silver lips polish ini bisa digunakan untuk mobil yang berukuran ring dan pcd yang sama.",
                      price: 25000000,
                      image: "bbs-l-247.jpg",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "BBS L 247",
                    description:
                        "Ring 17×7.5/10 pcd 8×100/114.3 et 35/20 warna silver lips polish",
                    price: 25000000,
                    image: "bbs-l-247.jpg",
                    star: 4)),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "OZ Racing Rally",
                    description:
                        "velg OZ RALLY RACING ini adalah versi barunya velg legendaris juara WRC Carlos Sainz yang menggunakan velg RALLY RACING waktu menjadi juara dunia pada tahun 1990 dan 1992",
                    price: 43300000,
                    image: "oz.jpeg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                  name: "OZ Racing Rally",
                  description: "Ring 18",
                  price: 43300000,
                  image: "oz.jpeg",
                  star: 4),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "SSR type C",
                    description:
                        "Velg SSR TYPE C ini merupakan salah satu produk velg mobil aftermarket dari AMW Wheels, Velg SSR TYPE C ini dibuat dengan teknik flow form pengembangan dari teknik casting namun bobot velg tetap ringan. Dengan Gold Velg ini mempunyai kesan mewah di semua jenis mobil anda. Velg SSR TYPE C ini bisa digunakan untuk mobil Toyota Calya, Honda Jazz, Brio dan mobil lainnya dengan pcd yang sama.",
                    price: 24000000,
                    image: "ssr-type-c.jpg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                  name: "SSR type C",
                  description: "Ring 15 & Ring 18",
                  price: 24000000,
                  image: "ssr-type-c.jpg",
                  star: 5),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Rotiform SIX",
                    description:
                        "Velg Rotiform SIX disempurnakan dan dirancang ulang dalam berbagai ukuran lebar, diameter, dan sentuhan akhir eksklusif. Metode teknik dan casting baru yang inovatif menghasilkan velg Rotiform yang lebih kuat dan lebih ringan sambil mempertahankan tampilan khas Rotiform. Velg Rotiform SIX ukuran Ring 17 PCD 4X100 sangat sesuai digunakan untuk Honda Brio, City, City Z, City New, City All New, Civic VTI, Estilo, Fit, Freed, Ferio, Genio, Jazz, Jazz New, Jazz New RS, Mobilio, Nova, Satya dan mobil lainnya dengan pcd yang sama.",
                    price: 30000000,
                    image: "six.png",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                name: "Rotiform SIX",
                description: "Ring 18",
                price: 3000000,
                image: "six.png",
                star: 5,
              ),
            ),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(10),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
