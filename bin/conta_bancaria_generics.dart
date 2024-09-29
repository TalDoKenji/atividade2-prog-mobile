import 'package:conta_bancaria_generics/contaCorretente.dart';
import 'package:conta_bancaria_generics/contaPoupanca.dart';
import 'package:conta_bancaria_generics/transacao.dart';

void main() {
  var contaCorrente = ContaCorrente<double>(1000.0);
  contaCorrente.mostrarSaldo();
  contaCorrente.depositar(300.0);
  contaCorrente.sacar(200.0);
  
  print('---');

  var contaPoupanca = ContaPoupanca<double>(1500.0);
  contaPoupanca.mostrarSaldo();
  contaPoupanca.depositar(500.0);
  contaPoupanca.sacar(100.0);
  contaPoupanca.aplicarBonificacao(50.0);

  print('---');

  var transacao1 = Transacao<double>('depósito', 300.0);
  var transacao2 = Transacao<double>('saque', 200.0);

  print(transacao1);
  print(transacao2);
}
