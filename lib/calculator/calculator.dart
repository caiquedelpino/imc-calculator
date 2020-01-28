import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_calculator/const/const.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  static calcIMC(gender, age, heigth, weigth) {
    debugPrint('$gender, $age, $heigth, $weigth');
  }

  TextEditingController ageController = new TextEditingController();
  TextEditingController heigthController = new TextEditingController();
  TextEditingController weigthController = new TextEditingController();
  List<String> _genders = ['Masculino', 'Feminino'];
  String _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/img/logo.png",
              height: 200,
              width: 200,
            ),
            Card(
              elevation: 15.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    DropdownButton(
                      hint: Text('Escolha o seu sexo'),
                      value: _selectedGender,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedGender = newValue;
                        });
                      },
                      items: _genders.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      controller: ageController,
                      decoration: InputDecoration(
                        hintText: "Idade",
                        hintStyle: TextStyle(
                          color: Color(0xFFBDC2CB),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      controller: heigthController,
                      keyboardType: TextInputType.numberWithOptions(
                          decimal: true, signed: false),
                      decoration: InputDecoration(
                        hintText: "Altura",
                        hintStyle: TextStyle(
                          color: Color(0xFFBDC2CB),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      controller: weigthController,
                      decoration: InputDecoration(
                        hintText: "Peso",
                        hintStyle: TextStyle(
                          color: Color(0xFFBDC2CB),
                          fontSize: 18.0,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            GestureDetector(
                child: Container(
                  height: 50.0,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color(0xff51D8DD),
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(blurRadius: 3, color: Themes.color)
                      ]),
                  child: Center(
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  calcIMC(_selectedGender, ageController.text,
                      heigthController.text, weigthController.text);
                }),
            Divider(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
