import 'package:conta_bancaria_generics/conBancaria.dart';

class ContaCorrente<T extends num> extends ContaBancaria<T> {
  ContaCorrente(T saldo) : super(saldo, 0.02); // Taxa de saque de 2%
}





