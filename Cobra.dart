import 'Animal.dart';
import 'dart:io';

class Cobra extends Animal {
  String corCobra;

  Cobra({required this.corCobra});

  @override
  String getTipoAnimal() {
    // TODO: implement getTipoAnimal
    return super.getTipoAnimal();
  }

  

  @override
  String getEspecie() {
    return super.getEspecie();
  }

  @override
  void setEspecie(String nomeEspecie) {
    super.setEspecie(nomeEspecie);
  }

  @override
  void setTipoAnimal(String tipoAnimalParametro) {
    // TODO: implement setTipoAnimal
    super.setTipoAnimal(tipoAnimalParametro);
  }

  @override
  void emitirsom() {
    super.emitirsom();
  }

  @override
  void comer(String comida) {
    // TODO: implement comer
    super.comer(comida);
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + "| cor da cobra: ${corCobra}";
  
  }
}