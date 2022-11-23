import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/model/mwldata.dart';

class MyWatchListDetail extends StatelessWidget {
  final Mwldata myWatchList;
  const MyWatchListDetail({super.key, required this.myWatchList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: buildDrawer(context),
        body:Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        myWatchList.title,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        leading: const Text(
                          'Release Date : ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          myWatchList.releaseDate,
                          style: const TextStyle(fontSize: 16),
                        ),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Text(
                          'Rating : ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          myWatchList.rating,
                          style: const TextStyle(fontSize: 16),
                        ),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Text(
                          'Status : ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          myWatchList.watched ? "Watched" : "Not Watched",
                          style: const TextStyle(fontSize: 16),
                        ),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Text(
                          'Review : ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          myWatchList.review,
                          style: const TextStyle(fontSize: 16),
                        ),
                        subtitle: Text(
                            myWatchList.review,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                        ),
                        dense: true,
                      )
                         
                          
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor:Color(0xff59A5D8),
                        padding: const EdgeInsets.all(15.0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.center),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}