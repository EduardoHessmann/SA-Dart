import 'dart:io';

class Tarefa {
  static int contadorIdTarefa = 1; // variável estática para guardar o numero de tarefas criadas, e atribuir um ID auto incrementável à tarefa;

  late int _idTarefa = 0; // Variável id da tarefa;
  late String _descTarefa = " "; // Variável de descrição da tarefa;
  late String _statusTarefa = " "; // Variável status da tarefa;

  static List<Tarefa> tarefas = []; // Lista para guardar as tarefas;

  Tarefa(this._descTarefa, this._statusTarefa){  //Construtor da tarefa
      _idTarefa = contadorIdTarefa++; // O id está sendo incrementado automaticamente pelo contador de IDs;
  }

  Tarefa.vazio(); // Construtor vazio para a tarefa;

  //Área para getters e setters dos atributos da tarefa;
  
  int get idTarefa => _idTarefa;
  set idTarefa(int value) => _idTarefa = value;

  String get descTarefa => _descTarefa;
  set descTarefa(String value) => _descTarefa = value;

  String get statusTarefa => _statusTarefa;
  set statusTarefa(String value) => _statusTarefa = value;

  //Método de adicionar tarefa;
  void adicionarTarefa() {
    print("Informe a descrição da tarefa:");
    String? desc = stdin.readLineSync();

    contadorIdTarefa++;

    Tarefa tarefa = Tarefa(desc!, "EM ANDAMENTO");

    tarefas.add(tarefa);

    print("\nTarefa adicionada com seucesso!");
  }

  //Método para listar as tarefas;
  void listarTarefas() {
    print("\n============== Listagem ==============");
    for (var tarefa in tarefas) {
      print("\n________________________________________");
      print("ID da tarefa: ${tarefa.idTarefa}");
      print("Descrição da tarefa: ${tarefa.descTarefa}");
      print("Statuas da tarefa: ${tarefa.statusTarefa}");
    }
  }

  //Método para concluir uma tarefa
  void concluirTarefa() {
    print("Informe o ID da tarefa que deseja concluir: ");
    String? idInput = stdin.readLineSync();
    int idTarefa = int.parse(idInput!);

    for (var tarefa in tarefas) {
      if (tarefa.idTarefa == idTarefa) {
        tarefa.statusTarefa = "CONCLUÍDA";
      }
    }
    print("\nTarefa concluída com Sucesso!");
  }
// Método para remover uma tarefa;
  void removerTarefa() {
    print("Informe o ID da tarefa que deseja remover: ");
    String? idInput = stdin.readLineSync();
    int idTarefa = int.parse(idInput!);

      tarefas.removeWhere((tarefa) => tarefa.idTarefa == idTarefa);
    
    print("\nTarefa removida com Sucesso!");
  }
}
