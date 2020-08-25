import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:proyectoap/main.dart';
import 'display.dart';
import 'serviciosweb.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.orange,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                Container(
                  width:125,
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.add_to_home_screen),
                        color: Colors.black,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => serviciosweb()),
                          );
                        },
                      ),
                    ],
                  ))
              ],
            ),
          ),
          //creamos el contorno del contenido que estamos mostrando
          SizedBox(height: 30.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: true,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        _BuildFoodItem('assets/imagenes/platollo1.png', ' Cobaya', '\24.00'),
                        _BuildFoodItem('assets/imagenes/platillo2.png', 'Risotto', '\25.00'),
                        _BuildFoodItem('assets/imagenes/platillo3.png', 'Ossobuco', '\20.00'),
                        _BuildFoodItem('assets/imagenes/platillo4.png', 'Sopa Minestrone', '\28.00'),
                        _BuildFoodItem('assets/imagenes/platillo5.png', 'Ensalada Capresse', '\23.00'),
                        _BuildFoodItem('assets/imagenes/platillo6.png', 'Filete ', '\21.00'),
                      ]
                    )
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _BuildFoodItem(String imagen, String nombrem, String precio){
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                      tag: imagen,
                      child: Image(
                        image: AssetImage(imagen),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width: 75.0,
                      )
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          nombrem,
                          style: TextStyle(
                          //tamaño del texto
                          fontSize: 23.0,
                          //hacemos el texto mas oscuro y legible
                          fontWeight: FontWeight.bold
                      )
                      ),
                      Text(
                          precio,
                          style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black
                      )
                      ),
                    ],
                  )
                ],
              )
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Detalle(image: imagen,nombre: nombrem, precio_comida:precio)
                ));
              },
            )
          ],
        ),
    );
  }
}


