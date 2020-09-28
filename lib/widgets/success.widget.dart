import 'package:alcool_gasolina/widgets/button.widget.dart';
import 'package:flutter/material.dart';

class Sucess extends StatelessWidget {
  var result = "";
  Function reset;
  Sucess({
    @required this.result,
    @required this.reset,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            text: "CALCULAR NOVAMENTE",
            invert: true,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
