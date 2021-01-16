import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final lista = [];

    for (var i = 0; i < 30; i++) {
      lista.add(new ListTitleEntity("Fotos", "SubFotos"));
    }

    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Prueba Aptitudes'),
        ),
        body: SafeArea(
          // ignore: missing_return
          child: ListView.builder(itemCount: lista.length,itemBuilder: (context,index){

            var elemento = lista[index];

              return Column(children:<Widget>[ListTileW(elemento)],);

          },),

        ),
      ),
    );
  }
}


class ListTitleEntity{
  String titulo,subtitulo;
  ListTitleEntity(this.titulo,this.subtitulo);
}

class ContainerEntity{
  String text;
  Color color;
  ContainerEntity(this.text,this.color);
}

Widget ListTileW(ListTitleEntity title){
  return ListTile(title: Text(title.titulo),subtitle: Text(title.subtitulo),);
}


