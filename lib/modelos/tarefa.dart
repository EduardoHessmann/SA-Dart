import 'dart:io';

class Tarefa {
  static int contadorIdTarefa = 1;

  late int _idTarefa = 0;
  late String _descTarefa = " ";
  late String _statusTarefa = " ";

  static List<Tarefa> tarefas = [];

  Tarefa(this._descTarefa, this._statusTarefa){
      _idTarefa = contadorIdTarefa++;
  }

  Tarefa.vazio();

  int get idTarefa => _idTarefa;
  set idTarefa(int value) => _idTarefa = value;

  String get descTarefa => _descTarefa;
  set descTarefa(String value) => _descTarefa = value;

  String get statusTarefa => _statusTarefa;
  set statusTarefa(String value) => _statusTarefa = value;

  void adicionarTarefa() {
    print("Informe a descrição da tarefa:");
    String? desc = stdin.readLineSync();

    _idTarefa++;

    Tarefa tarefa = Tarefa(desc!, "EM ANDAMENTO");

    tarefas.add(tarefa);

    print("\nTarefa adicionada com seucesso!");
  }

  void listarTarefas() {
    print("\n============== Listagem ==============");
    for (var tarefa in tarefas) {
      print("\n________________________________________");
      print("ID da tarefa: ${tarefa.idTarefa}");
      print("Descrição da tarefa: ${tarefa.descTarefa}");
      print("Statuas da tarefa: ${tarefa.statusTarefa}");
    }
  }

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

  void removerTarefa() {
    print("Informe o ID da tarefa que deseja remover: ");
    String? idInput = stdin.readLineSync();
    int idTarefa = int.parse(idInput!);

      tarefas.removeWhere((tarefa) => tarefa.idTarefa == idTarefa);
    
    print("\nTarefa removida com Sucesso!");
  }
}
