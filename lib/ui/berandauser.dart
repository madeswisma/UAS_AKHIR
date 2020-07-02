import 'package:uas_akhir/ui/berandaadmin.dart';
import 'package:uas_akhir/ui/inputpenjualan.dart';
import 'package:uas_akhir/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uas_akhir/ui/home.dart';
import 'package:uas_akhir/ui/produklist.dart';

class Berandauser extends StatefulWidget {
  @override
  _BerandauserState createState() => _BerandauserState();
}

class _BerandauserState extends State<Berandauser> {
//variabel untuk menampung shared preference
  String id;
  String nama;
  String email;
  String photo;
  List penjualanList;
  int level = 0;
  final Color _buttonColorWhite = Colors.white;
  final Color _buttonHighlightColor = Colors.grey[800];
//fungsi untuk memanggil shared preferences
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
//mengisi nilai masing-masing variabel
      level = preferences.getInt("level");
      id = preferences.getString("id");
      email = preferences.getString("email");
      nama = preferences.getString("nama");
      photo = preferences.getString("photo");
    });
  }

//fungsi signt out
  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
//set level 0
      preferences.setInt("level", 0);
    });
//redirect login
    Navigator.pushNamed(context, '/login');
  }

  @override
  void initState() {
    super.initState();
//memanggil fungsi preference
    getPref();
  }

  @override
  Widget build(BuildContext context) {
//swicth untuk menampilkan halaman berdasarkan level user
    switch (level) {
      case 1:
//memanggil halaman admin
        return Berandaadmin();
        break;
      case 2:
//mereturn sebuah scafold halaman user
        return Scaffold(
          appBar: new AppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Beranda'),
                ]),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('Click search');
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications_active),
                onPressed: () {
                  print('Click start');
                },
              ),
            ],
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text("Made Swisma"),
                  accountEmail: new Text("mademahesadharma@gmail.com"),
                  currentAccountPicture: new GestureDetector(
                    onTap: () {},
                    child: new CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/appimages/Dekwis.jpg'),
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/appimages/fix.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                new ListTile(
                  title: new Text('Notifications'),
                  trailing: new Icon(Icons.notifications_none),
                ),
                new ListTile(
                  title: new Text('Wishlist'),
                  trailing: new Icon(Icons.bookmark_border),
                ),
                new ListTile(
                  title: new Text('Akun'),
                  trailing: new Icon(Icons.verified_user),
                ),
                Divider(
                  height: 2,
                ),
                new ListTile(
                  title: new Text('setting'),
                  trailing: new Icon(Icons.settings),
                ),
                new ListTile(
                  title: new Text('logout'),
                  trailing: new Icon(Icons.settings),
                  onTap: () {
                    signOut();
                  },
                ),
              ],
            ),
          ),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset("assets/appimages/jdm.jpg"),
                Container(
                  color: Colors.blueAccent[100],
                  padding: const EdgeInsets.all(10),
                  //untuk membuat tampilan secara horisontal maka digunakan row
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'WELCOME TO MY GARAGE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              'Good Shopping',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.local_offer,
                        color: Colors.red[500],
                      ),
                      Text('Up to 50%'),
                    ],
                  ),
                ),
                Container(
                    child: new Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: RaisedButton(
                          color: _buttonColorWhite,
                          highlightColor: _buttonHighlightColor,
                          padding: EdgeInsets.all(10),
                          child: new Column(
                            children: <Widget>[
                              new Image.asset('assets/appimages/tambah1.png',
                                  width: 50),
                              new Text(
                                "Tambah",
                                style: new TextStyle(
                                    fontSize: 10, color: Colors.red),
                              )
                            ],
                          ),
                          onPressed: () {
//memanggil input penjualan Velg
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new InputPenjualan(
                                        list: null,
                                        index: null,
                                      )),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: RaisedButton(
                          color: _buttonColorWhite,
                          highlightColor: _buttonHighlightColor,
                          padding: EdgeInsets.all(10),
                          child: new Column(
                            children: <Widget>[
                              new Image.asset('assets/appimages/catatan1.png',
                                  width: 40),
                              new Text(
                                "Pesanan Pelanggan",
                                style: new TextStyle(
                                    fontSize: 10, color: Colors.red),
                              )
                            ],
                          ),
                          onPressed: () {
//memanggil halaman penjualan Velg
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => new Home(),
                            ));
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: RaisedButton(
                          color: _buttonColorWhite,
                          highlightColor: _buttonHighlightColor,
                          padding: EdgeInsets.all(10),
                          child: new Column(
                            children: <Widget>[
                              new Image.asset('assets/appimages/phone1.png',
                                  width: 70),
                              new Text(
                                "Tentang Kami",
                                style: new TextStyle(
                                    fontSize: 10, color: Colors.red),
                              )
                            ],
                          ),
                          onPressed: () {
//hitung('/');
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: RaisedButton(
                          color: _buttonColorWhite,
                          highlightColor: _buttonHighlightColor,
                          padding: EdgeInsets.all(10),
                          child: new Column(
                            children: <Widget>[
                              new Image.asset('assets/appimages/cart1.png',
                                  width: 50),
                              new Text(
                                "Jenis Velg",
                                style: new TextStyle(
                                    fontSize: 10, color: Colors.red),
                              )
                            ],
                          ),
                          onPressed: () {
//hitung('/');
                          },
                        ),
                      )
                    ]),
                  ],
                ))
              ],
            ),
          ),
        );
      case 0:
//jika level 0 kemabli ke login
        return Login();
        break;
    }
  }
}
