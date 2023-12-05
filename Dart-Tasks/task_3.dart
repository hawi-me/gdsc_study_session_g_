import 'dart:async';
import 'dart:io';

class Calculator {
  Future<int> add(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    return a + b;
  }

  Future<int> subtract(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    return a - b;
  }

  Future<int> multiply(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    return a * b;
  }

  Future<dynamic> divide(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    try {
      if (b == 0) {
        throw Exception('Division by zero');
      }
      return a / b;
    } catch (e) {
      return 'Error: $e';
    }
  }
}

void main() async {
  var calc = Calculator();
  stdout.write('Enter the first number: ');
  var num1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the second number: ');
  var num2 = int.parse(stdin.readLineSync()!);
  try {
    var resultAdd = await calc.add(num1, num2);
    var resultSub = await calc.subtract(num1, num2);
    var resultMul = await calc.multiply(num1, num2);
    var resultDiv = await calc.divide(num1, num2);
    print('Addition result: $resultAdd');
    print('Subtraction result: $resultSub');
    print('Multiplication result: $resultMul');
    print('Division result: $resultDiv');
  } catch (e) {
    print('Error: $e');
  }
}


