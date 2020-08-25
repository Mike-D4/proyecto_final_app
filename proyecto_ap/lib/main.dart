import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget{
  PaginaInicio({Key key, this.title}) : super(key: key);

  final String title;
  @override
  //metodo estatico
  _PaginaInicio createState()=> new _PaginaInicio();
}

class _PaginaInicio extends State<PaginaInicio>{

  @override
  //creamos un constructor
  Widget build(BuildContext context){
    return new Scaffold(
      //selecionamos el color del fonfo de la pantalla
      backgroundColor: Colors.white,
      //creamos un body de la pantalla centrado
      body: Center(
        //creamos child para agregar una columna
        child: Column(
          //centramos lo que estamos poniendo en la pantalla de inicio
          mainAxisAlignment: MainAxisAlignment.center,
          //creamos un children con la propiedad widgetx
          children: <Widget>[
            //selecionamos la imagen que se mostrara en la pantalla de internet
            Image.network('https://cdn3.f-cdn.com/contestentries/304681/17615120/565382ff38df8_thumb900.jpg'),
            //agregamos el titulo de la pantalla y selelcionamos el color con el que aparecera
            RaisedButton(
              //agregamso texto a nuestro boton por medio de un child, selecionamos el  color del texto
              child: Text("ACCEDER", style: TextStyle(color: Colors.black),),
              //Selecionamos el color del boton
              color: Colors.orange,
              //aqui ponemos la funcion onPressed y navigator para poder cambiar a otra pantalla
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()
                  ));
              },
            )
          ],
        ),
      )

    );

  }

}