void main() {

  var lista = ['Reginaldo'];
  print(lista);

  funcao(lista);
  print(lista);
}

void funcao(List<String> nomes) {
  nomes.add('Barbosa');
}