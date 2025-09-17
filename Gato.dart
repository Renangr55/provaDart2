import 'Animal.dart';
import 'dart:io';


class Gato extends Animal {
  int idadeGato;

  Gato({required this.idadeGato});

  @override
  String getEspecie() {
    // TODO: implement getEspecie
    return super.getEspecie();
  }

  @override
  String getTipoAnimal() {
    // TODO: implement getTipoAnimal
    return super.getTipoAnimal();
  }

  @override
  void setTipoAnimal(String tipoAnimalParametro) {
    // TODO: implement setTipoAnimal
    super.setTipoAnimal(tipoAnimalParametro);
  }
  
  @override
  void setEspecie(String nomeEspecie) {
    // TODO: implement setEspecie
    super.setEspecie(nomeEspecie);
  }

  @override
  void comer(String comida) {
    super.comer(comida);
  }

  @override
  void emitirsom() {
    print("Miau Miau");
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + " | idade do gato: ${idadeGato}";
  }


}