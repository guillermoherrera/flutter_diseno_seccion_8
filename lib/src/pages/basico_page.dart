import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  
  final estiloT = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloST = TextStyle(fontSize: 18.0, color: Colors.grey);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTextO(),
          _crearTextO(),
          _crearTextO(),
          _crearTextO(),
          
        ],
      ),      
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://drscdn.500px.org/photo/307987393/m%3D900/v2?sig=eb7565903640d1c12f1c57ef9562a3c2f4522eecdadf3441d20a566fe0ebb94a')
    );
  }

  Widget _crearTitulo(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Imagen Bonita', style: estiloT),
                SizedBox(height: 7.0,),
                Text('Descripción de la imagen bonita', style: estiloST),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0,),
          Text('41', style: TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, 'Call'),
        _crearAccion(Icons.near_me, 'Route'),
        _crearAccion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _crearTextO(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _crearAccion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );
  }
}