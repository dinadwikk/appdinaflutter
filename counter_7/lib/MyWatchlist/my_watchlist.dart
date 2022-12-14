import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/MyWatchlist/mwl_detail.dart';
import 'package:counter_7/MyWatchlist/fetch_mwl.dart';


class MyWatchlist extends StatefulWidget {
  const MyWatchlist({super.key});

  @override
  State<MyWatchlist> createState() => _MWLState();
}
class _MWLState extends State<MyWatchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watchlist'),
        ),
        drawer: buildDrawer(context),
        body: FutureBuilder(
            future: fetchWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada data :(",
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 0, 0), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 79, 198, 211), blurRadius: 2.0)
                                ]),
                            
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 8),
                                  child: ListTile(
                                    title: Text(
                                      "${snapshot.data![index].title}",
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Checkbox(
                                      value: snapshot.data![index].watched,
                                      activeColor: Colors.pinkAccent,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          snapshot.data![index].watched =
                                              !snapshot.data![index].watched;
                                        });
                                      },
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyWatchListDetail(
                                                    myWatchList:
                                                        snapshot.data![index])),
                                      );
                                    },
                                  ))));
                }
              }
            }));
  }
}