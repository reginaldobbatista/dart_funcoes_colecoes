
// AULA ASSISTIDA

void main(){
  
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);

  
  // o Set {} ele não duplica a lista
  // Serve para o nome de guerra do aluno, para não duplicar
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);

  
  // Transformar uma lista com duplicados para uma lista sem duplicado
  print('.toSet()');
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1,2,3,4,5,6};
  var numeros2 = {1,3,4,7};

// função para encontrar a diferença que tem do primeiro conjunto com o segundo
print('.difference()');
print(numeros1.difference(numeros2));

// função utilizada para unir os dois conjuntos
print('.union');
print(numeros1.union(numeros2));

// função utilizada para encontrar a interseção 
print('.intersection');
print(numeros1.intersection(numeros2));

var nomes1 = {'Reginaldo', 'Maria', 'José'};
var nomes2 = {'Reginaldo', 'Lalá', 'Elric'};
print(nomes1.intersection(nomes2));

// Função que serve para procurar dentro do sistema o nome escrito
print('.lookup');
print(numeros1.lookup(1));
print(nomes1.lookup('Reginaldo'));
print(nomes1.lookup('reginaldo'));

// Para extrair dados do SET
// Precisa utilizar o elementAt

nomes1.elementAt(0);
nomes1.elementAt(1);

nomes1.toList()[1];




}