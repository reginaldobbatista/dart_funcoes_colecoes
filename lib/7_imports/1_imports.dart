import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;
// outros meios para importar função ou comando de outro local
// import 'somas/soma.dart';
// import 'package:dart_funcoes_colecoes/7_imports/somas/soma.dart';

void main(){

  var totalDoubles = soma.somaDoubles(10.1, 5.1);
  var totalInteiros = nova_soma.somaInteiros(10, 5);

  print('Total de doubles: $totalDoubles');
  print('Total de inteiros: $totalInteiros');
  
}