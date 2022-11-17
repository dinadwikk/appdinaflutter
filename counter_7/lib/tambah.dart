import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/budget.dart';

class TambahBudget extends StatefulWidget {
  const TambahBudget({super.key});
  @override
  State<TambahBudget> createState() => _TambahState();
}

class _TambahState extends State<TambahBudget> {
  final _formKey = GlobalKey<FormState>();
  final List<String> typeChoices = <String>['Pemasukan', 'Pengeluaran'];

  // form data (state)
  String judul = "";
  int nominal = 0;
  String jenis = "Pilih Jenis";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budget Form"),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Contoh: Buku",
                          labelText: "Judul",
                          icon: const Icon(Icons.shopping_basket_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            judul = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Judul tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 20, bottom: 20, right: 50, left: 50),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Contoh : Rp 15000",
                          labelText: "Nomimal",
                          icon: const Icon(Icons.attach_money_outlined),
                          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        
                        onChanged: (String? value) {
                          setState(() {
                             if (value != '') {nominal = int.parse(value!);}
                        
                          });
                        },
                        onSaved:  (String? value) {
                          setState(() {
                             if (value != '') {
                          nominal = int.parse(value!);
                        }
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Nominal budget tidak boleh kosong!';
                          } 
                          return null;
                          
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                      ),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          hintText: "Pilih salah satu...",
                          labelText: "Tipe Budget (Pemasukan / Pengeluaran)",
                          icon: const Icon(Icons.wallet_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        items: typeChoices
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            jenis = value!;
                          });
                        },
                        validator: (String? value) {
                          if (!typeChoices.contains(value)) {
                            return "Pilih salah satu!";
                          }
                          return null;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                      ),
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ListBudget.data.add(Budget(
                                judul: judul,
                                nominal: nominal.toDouble(),
                                jenis: jenis,
                              ));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Budget anda telah tersimpan!')));
                            }
                          },
                          child: const Text(
                            'Simpan',
                            style: TextStyle(color: Colors.white),
                          )),
                    ]),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}