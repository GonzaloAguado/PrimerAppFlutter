
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State <ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks: ', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _crearBotones()
    ) ;
  }

  /**
   * Metodo que devuelve la fila de botones.
   */
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.replay), onPressed: _reset,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer,),
        SizedBox(width: 10.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar,),
      ],
    );
  }

  void _agregar(){
    setState(() => _conteo++ );
  }

  void _sustraer(){
    setState(() {
      if (_conteo != 0){
        _conteo--;
      }
    });
  }

  void _reset(){
    setState(() => _conteo = 0 );
  }
}