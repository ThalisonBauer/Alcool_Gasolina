import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;

  Function submitFunc;
  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Input(
          ctrl: gasCtrl,
          label: "Gasolina",
        ),
        Input(
          ctrl: alcCtrl,
          label: "Álcool",
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
