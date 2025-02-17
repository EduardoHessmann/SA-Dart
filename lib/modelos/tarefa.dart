import 'dart:io';

class Tarefa {
   late int _idTarefa;
   late String _descTarefa;
   late String _statusTarefa;

  Tarefa(this._idTarefa, this._descTarefa, this._statusTarefa);

  Tarefa.vazio();

  int get idTarefa => _idTarefa;
  set idTarefa(int value) => _idTarefa = value;

  String get descTarefa => _descTarefa;
  set descTarefa(String value) => _descTarefa = value;

  String get statusTarefa => _statusTarefa;
  set statusTarefa(String value) => _statusTarefa = value;

  static List<Tarefa> tarefas = [];

  void adicionarTarefa() {
    print("Informe o ID da Tarefa: ");
    String? idConverter = stdin.readLineSync();
    int id = int.parse(idConverter!);

    print("Informe a descrição da tarefa:");
    String? desc = stdin.readLineSync();

    Tarefa tarefa = Tarefa(id, desc!, "EM ANDAMENTO");

    tarefas.add(tarefa);
  }

  void listarTarefas() {
    for (var tarefa in tarefas) {
      print("\n============================================");
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
        tarefa.statusTarefa == "CONCLUÍDA";
      }
    }
    print("Tarefa concluída com Sucesso!");
  }

  void removerTarefa() {
    
    print("Informe o ID da tarefa que deseja remover: ");
    String? idInput = stdin.readLineSync();
    int idTarefa = int.parse(idInput!);

    for (var tarefa in tarefas) {
      if (tarefa.idTarefa == idTarefa) {
        tarefas.remove(tarefa);
      }
    }
  }
}
