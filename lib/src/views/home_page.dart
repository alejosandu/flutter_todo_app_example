import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  List<String> items = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: controller,
          ),
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (_, positionKey) {
              return Dismissible(
                key: Key(positionKey.toString()),
                onDismissed: (direction) {
                  // con esto elimina de la lista
                  setState(() {
                    items.removeAt(positionKey);
                  });
                },
                child: ListTile(
                  title: Text(items[positionKey]),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // entrar a ver cuando le da tap
                  },
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // abrir ventana para agregar
        },
      ),
    );
  }
}
