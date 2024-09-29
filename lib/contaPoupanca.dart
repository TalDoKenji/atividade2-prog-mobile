import 'package:conta_bancaria_generics/conBancaria.dart';

class ContaPoupanca<T extends num> extends ContaBancaria<T> {
  ContaPoupanca(T saldo) : super(saldo, 0.01); // Taxa de saque de 1%

  void aplicarBonificacao(T bonificacao) {
    saldo = (saldo + bonificacao) as T;  // Casting de num para T
    print('Bonificação de $bonificacao aplicada! Saldo atual: $saldo');
  }
}