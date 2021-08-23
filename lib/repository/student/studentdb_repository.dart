import 'package:cadastro_alunos/models/students.dart';
import 'package:cadastro_alunos/models/db_local.dart';
import 'package:cadastro_alunos/repository/student/student_repository.dart';
import 'package:sqflite/sqflite.dart';

class StudentDBRepository implements StudentRepository {
  @override
  late DBlocal dbLocal;
  StudentDBRepository() {
    dbLocal = DBlocal(
      table: "students",
    );

    @override
    // ignore: unused_element
    Future<Student> find(int id) async {
      Database database = await dbLocal.getConnection();
      var data = await database.query(
        dbLocal.table,
        where: "id=",
        whereArgs: [id],
      );
      database.close();
      return Student.fromMap(data.first);
    }

    @override
    Future<List<Student>> findAll() {
      // TODO: implement findAll
      throw UnimplementedError();
    }

    @override
    Future<int> insert(Student entity) {
      // TODO: implement insert
      throw UnimplementedError();
    }

    @override
    Future<int> remove(
        {required String condition, required List conditionValues, P}) {
      // TODO: implement remove
      throw UnimplementedError();
    }

    @override
    Future<int> uptade(
        {required Student entity,
        required String condition,
        required List conditionValues}) {
      // TODO: implement uptade
      throw UnimplementedError();
    }
  }

  @override
  Future<Student> find(int id) {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<List<Student>> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<int> insert(Student entity) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<int> remove(
      {required String condition, required List conditionValues, P}) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<int> uptade(
      {required Student entity,
      required String condition,
      required List conditionValues}) {
    // TODO: implement uptade
    throw UnimplementedError();
  }
}
