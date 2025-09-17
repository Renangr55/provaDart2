import 'Animal.dart';
import 'dart:io';

class Cachorro extends Animal {
  int quantidadePatas;
  
  

  Cachorro({required this.quantidadePatas});

  @override
  String getEspecie() {
    // TODO: implement getEspecie
    return super.getEspecie();
  }

  @override
  void setEspecie(String nomeEspecie) {
    // TODO: implement setEspecie
    super.setEspecie(nomeEspecie);
  }

  @override
  void emitirsom() {
    print("Au Au");
    super.emitirsom();
  }

  @override
  void comer(String comida) {
    print("O cachorro está comendo: ${comida}");
    super.comer(comida);
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + "| quantidade de patas do cachorro: ${quantidadePatas}";
  }




}