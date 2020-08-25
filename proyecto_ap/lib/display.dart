import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detalle extends StatefulWidget {
  final image;
  final nombre;
  final precio_comida;

  Detalle({this.image, this.nombre, this.precio_comida});

  @override
  _DetalleState createState() => _DetalleState();
}

class _DetalleState extends State<Detalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Detalle Pedido',
            style: TextStyle(
              //fontFamily: 'Montserrat',
                fontSize: 18.0,
                color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 82.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                //contenido del detalle
                Positioned(
                  top: 75.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.5),
                        topRight: Radius.circular(45.5),
                      ),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  top: 30.0,
                  left: (MediaQuery.of(context).size.width / 2) - 100.0,
                  child: Hero(
                    tag: widget.image,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.image),
                              fit: BoxFit.cover
                          )
                      ),
                      height: 200.0,
                      width: 200.0,
                    ),
                  ),
                ),
                Positioned(
                  top: 250.0,
                  left: 25.0,
                  right: 25.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.nombre,
                          style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold
                          )),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(widget.precio_comida,
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.black
                              )),
                          Container(
                            width: 125.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Colors.blue
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {},
                                  //creamos los botones para agregar quitar el numero de platillo deseado
                                  //boton menos
                                  child: Container(
                                    height: 25.0,
                                    width: 25.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7.0),
                                        color: Colors.white
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                //cantidad del platillo seleccionada
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0
                                  ),
                                ),
                                //creamos los botones para agregar quitar el numero de platillo deseado
                                //boton mas
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 25.0,
                                    width: 25.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7.0),
                                        color: Colors.white
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      //distancia entre objetos
                      SizedBox(height: 20.0),
                      //creamos el contenido nutricional del platillo
                      Container(
                          height: 150.0,
                          child: ListView(
                            //comando para poder deslizar la pantalla horizontalmente
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              _informacionDetalle('WEIGHT', '300', 'G'),
                              SizedBox(width: 10.0),
                              _informacionDetalle('CALORIAS', '267', 'CAL'),
                              SizedBox(width: 10.0),
                              _informacionDetalle('VITAMINAS', 'A,B6', 'VIT'),
                              SizedBox(width: 10.0),
                              _informacionDetalle('AVAIL', 'NO', 'AV')
                            ],
                          )
                      ),
                      //distancia entre objetos
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black
                          ),
                          height: 50.0,
                          child: Center(
                            child: Text(
                              '\$52.00',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]
          )
        ],
      ),
    );
  }

  Widget _informacionDetalle(String nombrePlatillo, String info, String contenidocalorico) {
    return InkWell(
        onTap: () {},
        //contenido alimenticio
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            //forma de los bordes
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              //grosor del contorno de la informacion del platillo
              border: Border.all(
                style: BorderStyle.solid,
                width: 0.90,
              ),
            ),
            height: 100.0,
            width: 100.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(nombrePlatillo,
                        style: TextStyle(
                          fontSize: 14.0,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //cantidad calorica
                        Text(info,
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
                        //informacion contenid calorico
                        Text(contenidocalorico,
                            style: TextStyle(
                              fontSize: 18.0,
                            ))
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}


