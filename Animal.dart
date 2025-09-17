import 'dart:io';
import 'Cachorro.dart';
import 'Cobra.dart';
import 'Gato.dart';

class Animal {
  String _especie = "";
  List<String> porte = ["pequeno","médio","alto"];
  String _porteAnimal = "";


  
  String getEspecie (){
    return _especie;
  }


  void imprimindoPorte (){
    porte.forEach((x) => print(x));
  }


  void setPorteTipoAnimal(String porteAnimalParametro){
    if(porte.contains(porteAnimalParametro)){
      _porteAnimal = porteAnimalParametro;
      print("valor da variavel porte animal é ${porteAnimalParametro}");
    } else {
      print("não foi encontrado");
      _porteAnimal = "vázio";
    }


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
    return super.toString() + "Especie do animal: ${_especie}  | porte do animal: ${_porteAnimal} ";
  }

}


void main(){
  
  List<Animal> listaAnimais = [];
  bool loop = true;
  print("seja bem vindo ao zoológico");
  while(loop == true){
    print("1 - Cadastrar");
    print("2 - Listar");
    print("3 - Deletar");
    print("4 - editar");
    print("5 - filtrar");
    print("6 - sair");
    print("Escolha uma opção: ");
    bool inputMenu = true;
    int opcaoMenu = 0;

    while(inputMenu == true){
      try{
        print("Digite a opção do menu");
        opcaoMenu = int.parse(stdin.readLineSync()!);

        if(opcaoMenu.isNaN || opcaoMenu.isNegative){
          print("Insira um valor Positivo inteiro");
        } else {
          inputMenu = false;
        }
      } on FormatException{
        print("Formato inválido");
      }
    }
    

    switch(opcaoMenu){
      case 1:
        print("Você escolheu cadastrar");
        print("1 - cachorro");
        print("2 - Cobra");
        print("3 - Gato");
        print("Você deseja cadastrar qual animal?");
        bool escolhaAnimalLoop = true;
        int escolhaAnimal = 0;

        while(escolhaAnimalLoop == true){
          try{
            print("Digite o animal da sua escolha: ");
            escolhaAnimal = int.parse(stdin.readLineSync()!);

            if(escolhaAnimal.isNaN || escolhaAnimal.isInfinite || escolhaAnimal < 0 && escolhaAnimal > 3 ){
              print("Digite um número de 1 a 3");
            } else{
              escolhaAnimalLoop = false;
            }
          } on FormatException {
            print("Formato inválido");
          }
        }

        switch(escolhaAnimal){
          case 1:
            print("você escolheu cachorro");

            // validação de inputs
            bool validacaoQuantidadePatas = true;
            bool validacaoEspecieCachorro = true;
            bool validacaPorteCachorro = true;

            //setando variavel para os input serem reconhecidos fora do escopo
            int quantidadePatasCachorro = 0;
            String especieCachorro = "";
            String porteCachorro = "";

            while(validacaoQuantidadePatas == true){
              try{
                print("Coloque a quantidade de Patas que o cachorro possui: ");
                quantidadePatasCachorro = int.parse(stdin.readLineSync()!);

                if(quantidadePatasCachorro.isNaN || quantidadePatasCachorro.isNegative || quantidadePatasCachorro > 0){
                  print("Digite um número inteiro positivo");
                } else{
                  validacaoQuantidadePatas = false;
                }
              } on FormatException{
                print("Aceitamos somente string");
              }

            }

            while(validacaoEspecieCachorro == true){
              try{
                print("Digite a espécie do cachorro");
                especieCachorro = stdin.readLineSync()!;

                if(especieCachorro.trim().isEmpty){
                  print("formato Inválido");
                } else {
                  validacaoEspecieCachorro = false;
                }
              } on FormatException{
                print("Tente novamente");
              }
            }
            
            while(validacaPorteCachorro){
              try{
                print("Digite o porte do cachorro:");
                porteCachorro = stdin.readLineSync()!;

                if(porteCachorro.trim().isEmpty){
                  print("inválido");
                } else{
                  validacaPorteCachorro = false;
                }
              } on FormatException{
                print("Formato inválido");
              }
            }
  
            Cachorro cachorroUser = Cachorro(quantidadePatas: quantidadePatasCachorro);
            cachorroUser.setEspecie(especieCachorro);
            cachorroUser.setPorteTipoAnimal(porteCachorro);
            listaAnimais.add(cachorroUser);
            break;
          case 2:
            print("Você escolheu cobra");
            
            //validação dos campos
            bool validacaoCorCobra = true;
            bool especieCobra = true;
            bool porteCobra = true;

            //variaveis do input
            String corCobra = "";
            String especieCobraUsuario = "";
            String porteCobraUsuario = "";

            //validação da cor da cobra
            while(validacaoCorCobra == true){
              try{
                print("Escolha a cor da cobra: ");
                corCobra = stdin.readLineSync()!;

                if (corCobra.trim().isEmpty){
                  print("formato INESPERADO");
                } else {
                  validacaoCorCobra = false;
                }
              } on FormatException {
                print("Digite um valor válido");
              }
            }
            
            //validação da especie da cobra
            while(especieCobra == true){
              try{
                print("Digite a espécie do cobra");
                especieCobraUsuario = stdin.readLineSync()!;

                if(especieCobraUsuario.trim().isEmpty){
                  print("esse campo não pode estar vázio");
                } else{
                  especieCobra = false;
                }

              } on FormatException{
                print("Formato inválido");
              }

            }

            while(porteCobra == true){
              try{
                print("Digite o porte da Cobra:");
                porteCobraUsuario = stdin.readLineSync()!;

                if(porteCobraUsuario.trim().isEmpty){
                  print("porte inválido");
                } else{
                  porteCobra = false;
                }

              } on FormatException{
                print("precisa ser uma string");
              }
            }

            Cobra cobraUser = Cobra(corCobra: corCobra);
            cobraUser.setEspecie(especieCobraUsuario);
            cobraUser.setPorteTipoAnimal(porteCobraUsuario);
            listaAnimais.add(cobraUser);
            break;
          case 3:
            print("Você escolheu um gato");

            //controle das validações
            bool inputIdadeGato = true;
            bool inputEspecieGato = true;
            bool inputPorteGato = true;

            //setando variáveis
            int idadeGatoUsuario = 0;
            String especieGato = "";
            String porteGato = "";


            while(inputIdadeGato == true){
              try{
                print("Escolha a idade do gato : ");
                idadeGatoUsuario = int.parse(stdin.readLineSync()!);

                if(idadeGatoUsuario.isNaN || idadeGatoUsuario.isNegative || idadeGatoUsuario > 0){
                  print("tipo do número invalido!! aceitamos numero positivo");
                } else{
                  inputIdadeGato = false;
                }
              } on FormatException{
                print("Formato inválido");
              }
            }
 
            while(inputEspecieGato == true){
              try{
                print("Digite a espécie do gato");
                especieGato = stdin.readLineSync()!; 

                if(especieGato.trim().isEmpty){
                  print("Não pode ser vázio");
                } else{
                  inputEspecieGato = false;
                }
              } on FormatException{
                print("Formato inválido");
              }
            };

            while(inputPorteGato == true){
              try{
                print("Digite o porte do gato:");
                porteGato = stdin.readLineSync()!;

                if(porteGato.trim().isEmpty){
                  print("Digite novamente");
                } else{
                  inputPorteGato = false;
                }
              } on FormatException{
                print("Formato inválido");
              }
            }
            
            
            Gato gatousuario = Gato(idadeGato: idadeGatoUsuario);
            gatousuario.setEspecie(especieGato);
            gatousuario.setPorteTipoAnimal(porteGato);
            listaAnimais.add(gatousuario);
            break;
          default:
            print("Opção não reconhecida");
        }
      case 2:
        listaAnimais.forEach(print);
        break;
      case 6:
        loop = false;
        print("Zoológico está fechando");
        break;

    }
  }
  

  
  


}