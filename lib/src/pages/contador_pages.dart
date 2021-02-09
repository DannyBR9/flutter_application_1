import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto=new TextStyle(fontSize: 20);
  int _conteo= 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Statefull'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text('Numero de Clicks', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
          ),
          ),
          floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(onPressed: _reiniciar, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _restar, child: Icon(Icons.remove)),
        SizedBox(width: 30.0),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add))
    ]
    );
  }
  void _agregar(){ setState(() =>_conteo++);}
  void _restar(){setState(()=> _conteo--);}
  void _reiniciar(){ setState(() =>_conteo=0);}
}
