import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  
  final estiloT = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloST = TextStyle(fontSize: 18.0, color: Colors.grey);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://drscdn.500px.org/photo/307987393/m%3D900/v2?sig=eb7565903640d1c12f1c57ef9562a3c2f4522eecdadf3441d20a566fe0ebb94a')
          ),
          Container(
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
          )
        ],
      ),      
    );
  }
}