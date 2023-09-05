// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Listview'),
      ),
      body: ListView.separated(
        
        separatorBuilder: (BuildContext context, int index) => Divider(thickness: 4, color: Colors.deepPurple,),
        itemCount: 10, 
        itemBuilder:(BuildContext context, int index) { 
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("Testando"),
            subtitle: Text("testando"),
            trailing: Icon(Icons.person),
          );
         }, 
        
      ),
    );
  }
}
