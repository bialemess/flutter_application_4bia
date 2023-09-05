// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_4bia/aluno.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
  List<Aluno> lista = [];

  @override
  Widget build(BuildContext context) {
    lista = [];
    lista.add(Aluno(111, "Tania"));
    lista.add(Aluno(222, "Priscila"));
    lista.add(Aluno(333, "Matioli"));
    lista.add(Aluno(444, "Simone"));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Listview'),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 4,
        ),
        itemCount: lista.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(lista[index].nome),
            subtitle: Text(lista[index].ra.toString()),
            trailing: Icon(Icons.book),
          );
        },
      ),
    );
  }
}
