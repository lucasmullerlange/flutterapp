import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
        home: new HomePage(),
      );
  }
}

class HomePage extends StatelessWidget {
  var defaulTargetPlataform;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" Ecommerce"),
          elevation: defaulTargetPlataform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: new Text(""),
                  accountEmail: new Text(" LucasLange@rede.ulbra.br"),
                  currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.brown,
                    child: new Text("L"),
                  ),
                  otherAccountsPictures: <Widget>[
                    new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.network(
                          'newphoto',
                        )
                    ),
                  ]),
              new ListTile(
                title: new Text("Busque aqui "),
                trailing: new Icon(Icons.arrow_upward),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Promoções"),
                trailing: new Icon(Icons.attach_money),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Faça seu pedido"),
                trailing: new Icon(Icons.arrow_upward),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Promoções"),
                trailing: new Icon(Icons.arrow_downward),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Faça seu pedido"),
                trailing: new Icon(Icons.edit_attributes),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Promoções"),
                trailing: new Icon(Icons.arrow_downward),
              ),
              new ListTile(
                title: new Text("Faça seu pedido"),
                trailing: new Icon(Icons.web),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Promoções"),
                trailing: new Icon(Icons.add_box),
                onTap: () => Navigator.of(context).pop(),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Fechar Pagina"),
                trailing: new Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        body: new Container(
          child: new Center(
            child: new Text('Bem vindo'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.message),
            onPressed: () {}
        ),
        bottomNavigationBar: ButtonBar(

            ),
    );
  }
}







