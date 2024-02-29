import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejemplo TabBar Vega",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MiPaginaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Gema Vega"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Paletas",
              icon: Icon(Icons.star),
            ),
            Tab(
              text: "Gomitas",
              icon: Icon(Icons.add_circle),
            ),
            Tab(
              text: "Papitas",
              icon: Icon(Icons.favorite_border_outlined),
            ),
            Tab(
              text: "Lucas",
              icon: Icon(Icons.post_add),
            ),
          ] //fin de Tab
              ), //Fin bottom TabBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Tutsi Pop",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Panditas de corazon",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Chips Moradas",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Lucas Muecas",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ] //Jardin de niños
            ), //Fin TabBar view
      ), //Fin scaffold
    ); //DefaultTabController
  } //fin widget
} //_MiPaginaInicialState
