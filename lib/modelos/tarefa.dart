import 'dart:io';

class Tarefa {

int _idTarefa;
String _descTarefa;
String _statusTarefa;

Tarefa(this._idTarefa, this._descTarefa, this._statusTarefa);

int get idTarefa => this._idTarefa;
set idTarefa(int value) => this._idTarefa = value;

String get descTarefa => this._descTarefa;
set descTarefa(String value) => this._descTarefa = value;

String get statusTarefa => this._statusTarefa;
set statusTarefa(String value) => this._statusTarefa = value;

List<Tarefa> tarefas = [];

void adicionarTarefa(){ 
  print("Informe o nome da Tarefa: ");
  String? idConverter = stdin.readLineSync();
  int id = int.parse(idConverter!);

  print("Informe a descrição da tarefa:");
  String? desc = stdin.readLineSync();

  Tarefa tarefa = Tarefa(id, desc!, "EM ANDAMENTO");

  tarefas.add(tarefa);

}

void listarTarefas(){

 for(var tarefa in tarefas){

  print("\n============================================");
  print("ID da tarefa: ${tarefa.idTarefa}");
  print("Descrição da tarefa: ${tarefa.descTarefa}");
  print("Statuas da tarefa: ${tarefa.statusTarefa}");

 }

}

void concluirTarefa(int idTarefa){

for (var i = 0; i < tarefas.length; i++) {
  if (tarefas[i].idTarefa == idTarefa) {
    tarefas[i]._statusTarefa == "CONCLUÍDO";
    
  }
  
}


print("Tarefa concluída com Sucesso!");

}

void removerTarefa(){

}



}