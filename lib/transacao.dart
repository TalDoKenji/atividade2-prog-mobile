class Transacao<T extends num> {
  final String tipo; // "saque" ou "depósito"
  final T valor;
  final DateTime data;

  Transacao(this.tipo, this.valor) : data = DateTime.now();

  @override
  String toString() {
    return 'Transação: $tipo | Valor: $valor | Data: $data';
  }
}