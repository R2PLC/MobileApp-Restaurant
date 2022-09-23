import 'package:flutter/material.dart';
import 'dart:io';

import 'package:mtarturo/main.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_sms/flutter_sms.dart';

class Contacto extends StatelessWidget {
  /*openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no instalado")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }*/

  _hacerLlamadaTelefonica() async {
    const url = 'tel:+525523456789';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error al llamar a $url';
    }
  }
/*
  void _enviarSMS(String message, List<String> recipents) async {
    String _resultado = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_resultado);
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(children: <Widget>[
                Spacer(),
        Container(
          margin: EdgeInsets.all(16.0),
          //width: 100,
          child: TextButton(
            child: Text(
              'Llamarás, yo lo sé. Si no es ahora mañana vendrás.',
              style: TextStyle(fontSize: 20.0),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xfff63d1d),
              onPrimary: Colors.white,
              onSurface: Colors.grey,
            ),
            onPressed: () => _hacerLlamadaTelefonica,
          ),
        ),
        Spacer(),
      ]))),
      debugShowCheckedModeBanner: false,
    );
  }
}
