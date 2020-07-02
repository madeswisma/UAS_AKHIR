import 'package:uas_akhir/ui/berandaadmin.dart';
import 'package:uas_akhir/ui/berandauser.dart';
import 'package:uas_akhir/ui/home.dart';
import 'package:uas_akhir/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:uas_akhir/ui/produklist.dart';

void main() => runApp(new MaterialApp(
      title: 'Penjualan Velg',
      home: Berandauser(),
      routes: <String, WidgetBuilder>{
        '/Berandauser': (BuildContext context) => new Berandauser(),
        '/Berandaadmin': (BuildContext context) => new Berandaadmin(),
        '/login': (BuildContext context) => Login(),
        '/Penjualan': (BuildContext context) => new Home(),
        '/Produklist': (BuildContext context) => new ProdukList(),
      },
    ));
