import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  var label = "";
  Logo({
    @required this.label,
  });

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, top: 80),
        ),
        Icon(
          Icons.local_gas_station,
          size: 35.0,
          color: Colors.white,
        ),
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
