
void main(){
  // Funções Arrow =>
  // Funções Anônimas

  (){
    print('Funcao Anonima');
  }();

  // Não está invocando a função
  somaInteiros;
  print(somaInteiros(10, 10));

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome){
    if(nome.isEmpty) {
      print('Nome veio vazio');
    }else{
      print(nome);
    }
  });
  print('Finalizando chamada');
}

// 3 partes
// 1 tipo de retorno
// 2 Nome
// 3 parametros (normais, nomeados e opcionais)

int somaInteiros(int numero1, int numero2){
  return numero1 + numero2;
}

// Comando de cima se resume de forma abreviada em baixo
int somaInteiros2(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;


void chamarUmaFuncaoDeUmParametro (Function(String nome) funcaoQueRecebeONome){

  var calculo = 1 + 1;
  var nomeCompleto = 'Reginaldo';
  funcaoQueRecebeONome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);