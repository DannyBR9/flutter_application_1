import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomePage extends StatelessWidget {
  final TextStyle estiloTexto=new TextStyle(fontSize: 20);
  final conteo= 10;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text('Numero de Clicks', style: estiloTexto),
            Text('$conteo', style: estiloTexto)
          ],
          ),
          ),
          floatingActionButton: FloatingActionButton( 
            child: Icon(Icons.add),
            onPressed: (){
              //conteo = conteo+1;
            },
            

          ),
    );
  }
}