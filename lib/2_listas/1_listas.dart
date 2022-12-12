

void main () {

  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // Expand
  // Array Bidimencional
  var lista = [
    [1,2],
    [3.4],
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // any
  // Serve para pesquisar alguma coisa
  print('.any');
  final listaBusca = ['Reginado', 'José', 'Elric'];

  if(listaBusca.any((nome) => nome == 'João')){
    print('Tem João');    
  }else{
    print('Não tem João');
  }



   // every
   // Serve para pesquisa em cada nome certa letra
  print('.every');
  final listaBusca2 = ['Reginado', 'José', 'Elric'];
  if(listaBusca2.every((nome) => nome.contains('J'))){
    print('Todos os nomes em a letra J');
  }else{
    print('Nem todos os nomes tem a letra J');
  }


  // sort
  // Serve para ordenar a lista, faz a ordenação mas na própria lista
  print('.sort');
  var listaParaOrdenacao = [99, 22,10,765,1,2,3,100,300];

  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);



  var listaPacientes = [
    'Elric|16',
    'Reginaldo|37',
    'José|60',
  ];

  listaPacientes.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if(idadePaciente1 > idadePaciente2) {
      return 1;
    }else if(idadePaciente1 == idadePaciente2) {
      return 0;
    }else {
      return -1;
    }
  });
  print(listaPacientes);



  // CompareTo
  // serve para comparar duas situações, volta ordenado
  print('.sort com CompareTo');
  var listaPacientes2 = [
    'Elric|16',
    'Reginaldo|37',
    'José|60',
  ];

  listaPacientes2.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);






}

void printAcademia(int valor ) {
  print(valor);
}