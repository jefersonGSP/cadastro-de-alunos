import 'package:cadastro_alunos/models/db_local.dart';
import 'package:cadastro_alunos/models/irepository.dart';
import 'package:cadastro_alunos/models/students.dart';

abstract class StudentRepository implements IRepository<Student> {
  //Fontes de dados
  late DBLocal dbLocal;
}
