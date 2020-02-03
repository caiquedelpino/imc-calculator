import 'package:imc_calculator/alert-dialog/alert.dart';
import 'dart:math';


// É simples calcular o seu IMC.

// Por exemplo, se o seu peso é 80kg e a sua altura é 1,80m, a fórmula para calcular o IMC ficará:

// IMC = 80 ÷ 1,802

// IMC = 80 ÷ 3,24

// IMC = 24,69

// De acordo com a tabela de IMC, você está no seu peso ideal.

// Outro exemplo, se você pesa 70kg e mede 1,50m, o cálculo do IMC será:

// IMC = 70 ÷ 1,502

// IMC = 70 ÷ 2,25

// IMC = 31,11

calcIMC(double heigth, double weigth, context) async {
  Map imcTable = {
    'lt18_5': "Abaixo do peso",
    'lt18_6And24_9': "Peso ideal",
    'lt25And29_99': "Acima do peso",
    'lt30And34_99': "Obesidade I",
    'lt35And39_99': "	Obesidade II (severa)",
    'gt40': "Obesidade III (mórbida)",
    };
    var imcTableList = imcTable.values.toList();
    double imcResult = weigth / (pow(heigth, 2));
    String classification;

        if(imcResult <= 18.5) {
          classification = imcTableList[0];
        } else if(imcResult > 18.5 && imcResult <= 24.9) {
          classification = imcTableList[1];
        } else if(imcResult > 24.9 && imcResult <= 29.9) {
          classification = imcTableList[2];
        } else if(imcResult > 29.9 && imcResult <= 34.9) {
          classification = imcTableList[3];
        } else if(imcResult > 34.9 && imcResult <= 39.9) {
          classification = imcTableList[4];
        } else if(imcResult > 40) {
          classification = imcTableList[5];
        }

    String message = "Seu IMC é: ${imcResult.toStringAsFixed(2)} \n\nClassificação: $classification";
  print('foi');
  print(imcTable);
  print(heigth + weigth);

  alertModal(context, "Resultado do IMC", message);
}
