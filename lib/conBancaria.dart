abstract class ContaBancaria<T extends num> {
  T saldo;
  double taxaDeSaque;

  ContaBancaria(this.saldo, this.taxaDeSaque);

  void sacar(T valor) {
    var totalComTaxa = (valor + (valor * taxaDeSaque)) as T;
    
    if (totalComTaxa <= saldo) {
      saldo = (saldo - totalComTaxa) as T;  // Casting de num para T
      print('Saque: $valor com taxa de ${taxaDeSaque * 100}% | Saldo atual: $saldo');
    } else {
      print('Saldo insuficiente! Saque falhou.');
    }
  }

  void depositar(T valor) {
    saldo = (saldo + valor) as T;  // Casting de num para T
    print('Depósito: $valor | Saldo atual: $saldo');
  }

  void mostrarSaldo() {
    print('Saldo atual: $saldo');
  }
}