
// AULA ASSISTIDA TODA

void main() {

  var lista = ['Reginaldo'];
  // Hashcode é uma identificação em código na memória
  print(lista.hashCode);
  print(lista);
  funcao(lista);
  print(lista);

  var nome = 'Reginaldo Batista';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(nome.hashCode);

  var list = ['Reginaldo'];
  print(list);
  add(list);
  print(list);
  

}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if(nomes.isNotEmpty){
    nomes.clear();
  }
 ; nomes.add('Barbosa');
}

void funcao2(String nome){
  nome += ' Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  print(novoNomes);
  return novoNomes;
}