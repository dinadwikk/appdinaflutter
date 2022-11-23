import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/budget.dart';


class DataBudget extends StatefulWidget {
  const DataBudget({super.key});

  @override
  State<DataBudget> createState() => _DataBudgetState();
}

class _DataBudgetState extends State<DataBudget> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: buildDrawer(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ListBudget.data[index].nominal.toString(),
                        style: const TextStyle(fontSize: 22),
                      ),
                      Text(
                        ListBudget.data[index].judul,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Text(
                        ListBudget.data[index].jenis,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: ListBudget.data.length,
      ),
    );
  }
}