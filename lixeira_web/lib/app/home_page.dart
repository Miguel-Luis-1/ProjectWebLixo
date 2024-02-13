import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:lixeira_web/app/objetos/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Postagem> postagens = [
    Postagem(
      titulo: 'Título 1',
      descricao: 'Descrição 1',
      endereco: 'Endereço 1',
      dataDaPostagem: DateTime.now(),
      situacaoDeCompra: false,
    ),
    Postagem(
      titulo: 'Título 2',
      descricao: 'Descrição 2',
      endereco: 'Endereço 2',
      dataDaPostagem: DateTime.now(),
      situacaoDeCompra: false,
    ),
    // Adicione mais postagens aqui...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B4955),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Lista de Residos',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: postagens.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Row(children: [
              Column(children: [
                Text(postagens[index].titulo.toString()),
                Text(postagens[index].dataDaPostagem.toString()),
              ]),
              Text(postagens[index].descricao.toString()),
            ]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: Dialog(),
          );
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
