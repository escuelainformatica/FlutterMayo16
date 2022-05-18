import 'package:flutter/material.dart';
import 'package:mayo16/paginas/pagina_listado.dart';

class MyHomePage extends StatefulWidget {
  int _counter = 0;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void clickBotonflotante() {
    setState(() {
      widget._counter += 2;
    });
  }

  void clickBotonElevado() {
    setState(() {
      widget._counter = 123;
    });
  }
  void clickBotonNavegacion() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaginaListado()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget._counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text('123'),
            ElevatedButton(
                onPressed: clickBotonElevado, child: const Text("hola")),
            ElevatedButton(
                onPressed: clickBotonNavegacion, child: const Text("Navegacion"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: clickBotonflotante,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
