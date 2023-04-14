void main() {


  // Mapa é uma representação de Chave:valor
  final paciente = <String, String>{
    'nome': 'Reginaldo Barbosa',
    'curso': 'Academia do Flutter'
  };

  // O mapa pode ser nulo mas se for criado deve conter a chave
  // e o valor não nulos

  Map<String, String> pacienteNullSafety = {}; // aqui o Map será apenas inicializado sem valor

  Map<String, String>? pacienteNullSafety2 = null; // aqui o Map receberá o valor nulo


  // O map e o chave pode ser nulos mas a valor não pode ser nula
  Map<String,String?> pacienteNullSafety3 = {
    'nome': null,
  };

  // o código acima pode ser trocado por:
  // var pacienteNullSafety3 = <String, String?>{
  // 'nome': null,
  // };

  // O map e o valor não podem ser nulos mas a chave pode ser nula
  Map<String?,String> pacienteNullSafety4 = {
    null: 'Reginaldo',
  };

  // o código acima pode ser trocado por:
  // var pacienteNullSafety4 = <String?, String>{
  // null: 'Reginaldo',
  // };



  var produtos = <String, String>{};
  // Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'cerveja');
  produtos.putIfAbsent('nome', () => 'refrigerante');
  print(produtos);

  // Esse comando serve para alterar o nome
  produtos.update('nome', (value) => 'refrigerante');
  print(produtos);

  // Caso não exista o nome da coluna da tabela, ele adiciona com esse comando
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor;
  print('Produto ${produtos['nome']}');

// Esses dois comando são utilizados para a mesma situação
  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });


  // Fazer algum processo asyncrono dentro dele.
  for(var entry in produtos.entries){
    print('Chave: ${entry.key}: ${entry.value}');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Reginaldo Barbosa',
    'curso': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de flutter do Brasil'
      },
            {
        'nome': 'Arquiteto do Flutter',
        'descricao': 'Melhor curso de flutter do Brasil'
      }
    ]
  };
  print(mapa);

}