import 'dart:io';
import 'package:todo_list_dart/modelos/tarefa.dart';

class Menu {
  int opcao = 0;

  void mostrarOpcoes() {
    while (opcao != 5) {
      print("\n================ MENU ============");
      print("1- Adicionar Tarefa");
      print("2- Listar Tarefas");
      print("3- Concluir Tarefa");
      print("4- Remover Tarefa");
      print("5- Sair");
      print("Escolha uma opção: ");
      String? opcaoCoverter = stdin.readLineSync();
      opcao = int.parse(opcaoCoverter!);

      Tarefa gerenciadorTarefa = Tarefa.vazio();

      switch (opcao) {
        case 1:
          gerenciadorTarefa.adicionarTarefa();

          print("Tarefa adicionada com seucesso!");

          break;

        case 2:
          gerenciadorTarefa.listarTarefas();
          break;

        case 3:
          gerenciadorTarefa.concluirTarefa();
          break;

        case 4:
          gerenciadorTarefa.removerTarefa();
          break;

        case 5:
          print("Programa Finalizado!");
          opcao = 5;

          break;
        default:
      }
    }
  }
}
