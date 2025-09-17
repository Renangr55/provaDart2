import 'dart:io';
import 'Cachorro.dart';
import 'Cobra.dart';
import 'Gato.dart';

class Animal {
  String _especie = "";
  String _tipoAnimal = "";
  List<String> porte = ["pequeno","médio","alto"];
  String _porteAnimal = "";

  
  String getEspecie (){
    return _especie;
  }

  String getTipoAnimal(){
    return _tipoAnimal;
  }

  void imprimindoPorte (){
    porte.forEach((x) => print(x));
  }

  void setPorteTipoAnimal(String porteAnimalParametro){
    if(porte.contains(porteAnimalParametro)){
      _porteAnimal = porteAnimalParametro;
      print("valor da variavel porteAnimal foi atualizada");
    } else {
      print("não foi encontrado");
    }

  }

  void setTipoAnimal(String tipoAnimalParametro){
    _tipoAnimal = tipoAnimalParametro;
  }

  void setEspecie(String nomeEspecie){
    _especie = nomeEspecie;
  }
  void emitirsom(){
    print("ANIMAL FAZENDO SOM");
  }

  void comer(String comida){
    print("o animal está comendo ${comida}");
  }

  @override
  String toString() {
    return super.toString() + "Especie do animal: ${_especie} | Tipo do animal: ${_tipoAnimal} | porte do animal: ${porte} ";
  }

}


void main(){
  Animal leao = Animal();
  leao.setTipoAnimal("rei de tudo");
  leao.setEspecie("Leãooooo");
  print(leao);

  leao.imprimindoPorte();
  leao.setPorteTipoAnimal("médio");

  Cachorro  myDog = Cachorro(quantidadePatas: 4);
  myDog.setEspecie("Cachorro");
  myDog.setTipoAnimal("Pitbull");
  print(myDog);

  Cobra jhominir = Cobra(corCobra: "Azul");
  jhominir.setEspecie("Cobra");
  jhominir.setTipoAnimal("Cascavel");
  print(jhominir);

  Gato gatinho = Gato(idadeGato: 20);
  gatinho.setEspecie("Gato");
  gatinho.setTipoAnimal("vira lata");
  print(gatinho);

  


}