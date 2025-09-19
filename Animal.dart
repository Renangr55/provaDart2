import 'dart:developer';
import 'dart:io';
import 'Cachorro.dart';
import 'Cobra.dart';
import 'Gato.dart';

class Animal {
  String _especie = "";
  static List<String>  porte = ["pequeno","medio","alto"];
  String _porteAnimal = "";

  String getEspecieParametro(String nomeEspecieUser){
    _especie = nomeEspecieUser;
    return _especie;
  }
  
  String getEspecie (){
    return _especie;
  }


  static void exibirListaAnimais(List<Object> listaParmetro){
    if(listaParmetro.isEmpty){
      print("lista vázia");
    } else{
      print("__________");
      listaParmetro.forEach((x) => print(x));
      print("__________");
    }
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
    return super.toString() + "| Especie do animal: ${_especie}  | porte do animal: ${_porteAnimal} ";
  }

}


void main(){
    List<Animal> listaAnimais = [];

    dynamic buscarAnimal(String especieUser){
      for(Animal animal in listaAnimais){
        if(animal.getEspecie() == especieUser){
          return animal;
        }
        print("deu erro");
      }
      return Null;
    }

    void exibirPorte(){
      print('________________');
      print("Porte que suportamos");
      Animal.porte.forEach(print);
      print("________________");
    }

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
          print("Insira um valor Positivo inteiro de 1 a 6");
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
        print("4 - outro animal");
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

                if(quantidadePatasCachorro.isNaN || quantidadePatasCachorro.isNegative){
                  print("Digite um número inteiro positivo");
                } else{
                  validacaoQuantidadePatas = false;
                }
              } on FormatException{
                print("Aceitamos somente numeros positivos");
              }

            }

            while(validacaoEspecieCachorro == true){
              try{
                print("Digite a espécie do cachorro");
                especieCachorro = stdin.readLineSync()!.toLowerCase();

                if(especieCachorro.trim().isEmpty){
                  print("formato Inválido");
                } else {
                  validacaoEspecieCachorro = false;
                }
              } on FormatException{
                print("Tente novamente");
              }
            }
            Cachorro cachorroUser;
            while(validacaPorteCachorro == true){
              try{
                exibirPorte();
                print("Digite o porte do cachorro:");
                porteCachorro = stdin.readLineSync()!.toLowerCase();

                if(porteCachorro.trim().isEmpty){
                  print("inválido");
                } else{
                  if(Animal.porte.contains(porteCachorro)){
                    print("esse porte existe");
                    validacaPorteCachorro = false;
                  } else{
                    print("esse porte não existe");
                  }                }
              } on FormatException{
                print("Formato inválido");
              }
            }
  
            cachorroUser = Cachorro(quantidadePatas: quantidadePatasCachorro);
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
                corCobra = stdin.readLineSync()!.toLowerCase();

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
                especieCobraUsuario = stdin.readLineSync()!.toLowerCase();

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
                exibirPorte();
                print("Digite o porte da Cobra:");
                porteCobraUsuario = stdin.readLineSync()!.toLowerCase();

                if(porteCobraUsuario.trim().isEmpty){
                  print("porte inválido");
                } else{
                  if(Animal.porte.contains(porteCobraUsuario)){
                    print("esse porte existe");
                    porteCobra = false;
                  } else{
                    print("esse porte não existe");
                    porteCobra = false;
                  }
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

                if(idadeGatoUsuario.isNaN || idadeGatoUsuario.isNegative){
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
                especieGato = stdin.readLineSync()!.toLowerCase(); 

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
                exibirPorte();
                print("Digite o porte do gato: ");
                porteGato = stdin.readLineSync()!.toLowerCase();

                if(porteGato.trim().isEmpty){
                  print("Digite novamente");
                } else{
                  if(Animal.porte.contains(porteGato)){
                      print("esse porte existe");
                      inputPorteGato = false;
                  } else{
                    print("esse porte não existe");
                    inputPorteGato = false;
                  }
                }
              } on FormatException{
                print("Formato inválido");
              }
            }
            
            try{
              Gato gatousuario = Gato(idadeGato: idadeGatoUsuario);
              gatousuario.setEspecie(especieGato);
              gatousuario.setPorteTipoAnimal(porteGato);
              listaAnimais.add(gatousuario);
            } catch(e){
              print("deu erro ${e}");
            }
            break;
          case 4:
          print("Você escolheu a opção de outro animal");

            //controle das validações
            bool inputEspecieAnimal = true;
            bool inputPorteAnimal = true;

            //setando variáveis
            String especieAnimal = "";
            String porteAnimal = "";
            
            while(inputEspecieAnimal == true){
              try{
                print("Digite a espécie do animal");
                especieAnimal = stdin.readLineSync()!.toLowerCase(); 

                if(especieAnimal.trim().isEmpty){
                  print("Não pode ser vázio");
                } else{
                  inputEspecieAnimal = false;
                }
              } on FormatException{
                print("Formato inválido");
              }
            };

            while(inputPorteAnimal == true){
              try{
                exibirPorte();
                print("Digite o porte do animal:");
                porteAnimal = stdin.readLineSync()!.toLowerCase();

                if(porteAnimal.trim().isEmpty){
                  print("Digite novamente");
                } else{
                  if(Animal.porte.contains(porteAnimal)){
                      print("esse porte existe");
                      inputPorteAnimal = false;
                  } else{
                    print("esse porte não existe");
                    inputPorteAnimal = false;
                  }
                }
              } on FormatException{
                print("Formato inválido");
              }
            }
            
            try{
              Animal outroAnimalUsuario = Animal();
              outroAnimalUsuario.setEspecie(especieAnimal);
              outroAnimalUsuario.setPorteTipoAnimal(porteAnimal);
              listaAnimais.add(outroAnimalUsuario);
            } catch(e){
              print("deu erro ${e}");
            }
          default:
            print("Opção não reconhecida");
        }
      case 2:
          print("___________");
          Animal.exibirListaAnimais(listaAnimais);
          print("___________");
        break;
        
      case 3: //remover animal
        print("Você escolheu remover");
        String especieRemovivel = "";
        bool remocaoEspecie = true;

        while(remocaoEspecie == true){
          try{
            print("Digite a especie que você deseja remover");
            especieRemovivel = stdin.readLineSync()!.toLowerCase();
            
            if(especieRemovivel.trim().isEmpty){
              print("Não pode ser vázio");
            } else{
              remocaoEspecie = false;;
            }
          } on FormatException{
            print("erro! só aceitamos palavras com letras");
          }
        }
        

        try{
          Animal removendoAnimal = buscarAnimal(especieRemovivel);
          listaAnimais.remove(removendoAnimal);
          print("animal removido");
        } catch(e){
          print("deu erro ${e}");
        }
        break;
      case 4:
      //editar animal
        print("Você escolheu editar");

        print("escolha a especie que você deseja alterar");
        String especieAlteravel = stdin.readLineSync()!.toLowerCase();

        bool validacaoNovaEspecie = true;
        bool validacaoNovaPorte = true;
        String novaEspecie = "";
        String novoPorte = "";

        while(validacaoNovaEspecie == true){
          try{
            print("digite a nova especie: ");
            novaEspecie = stdin.readLineSync()!.toLowerCase();

            if(novaEspecie.trim().isEmpty){
              print("esse campo não pode estar vázio");
            } else{
                validacaoNovaEspecie = false;
            }
          } on FormatException{
            print("erro no formato do input");
          }
          
        } 

        while(validacaoNovaPorte == true){
          try{
            exibirPorte();
            print("digite o novo porte: ");
            novoPorte = stdin.readLineSync()!.toLowerCase();

            if(novoPorte.trim().isEmpty){
              print("esse campo não pode estar vázio");
            } else{
              if(Animal.porte.contains(novoPorte)){
                print("possuimos esse porte para ser escolhido");
                validacaoNovaPorte = false;
              } else{
                print("não encontramos esse porte");
              }
            }
          } on FormatException{
            print("erro no formato do input");
          }
          
        } 

        try{
          Animal animalAlteravel = buscarAnimal(especieAlteravel);
          animalAlteravel.setEspecie(novaEspecie);
          animalAlteravel.setPorteTipoAnimal(novoPorte);
        } catch(e){
          print("deu erro em atuializar as informações");
        }

      case 5:
        //filtrar animais
        print("Você escolheu filtrar");

        print("escolha qual especie você deseja filtrar");
        String filtroEspecie = stdin.readLineSync()!.toLowerCase();

        try{
          Animal filtarEspecieUser = buscarAnimal(filtroEspecie);
          print("____________________");
          print("filtro aplicado para encontrar: ${filtarEspecieUser}");
          print("__________________");
        } catch(e){
          print("deu erro");
        }

      case 6:
        loop = false;
        print("Zoológico está fechando");
        break;

    }
  }
}

