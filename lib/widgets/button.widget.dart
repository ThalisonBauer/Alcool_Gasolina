import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";
  LoadingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: invert ? Theme.of(context).primaryColor : Colors.white,
            ),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 22,
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                ),
              ),
              onPressed: func,
            ),
          );
  }
}
