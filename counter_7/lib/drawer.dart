import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambah.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/MyWatchlist/my_watchlist.dart';


Drawer buildDrawer(BuildContext context) {

  return Drawer(
    
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TambahBudget()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DataBudget()),
              );
            },
          ),
           ListTile(
            title: const Text('My Watchlist'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchlist()),
              );
            },
          ),
        ],
      ),


  );
  
}