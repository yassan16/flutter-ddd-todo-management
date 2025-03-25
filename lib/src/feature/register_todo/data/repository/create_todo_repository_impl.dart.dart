import 'package:flutter_ddd_todo_management/src/db/database_helper.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/data/model/todo_model.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/entity/todo.dart';

class RegisterTodoRepositoryImpl extends RegisterTodoRepository {
  final DataBaseHelper _dbHelper;

  RegisterTodoRepositoryImpl(this._dbHelper);

  @override
  Future<void> insert(Todo todo) {
    // TODO 今後実装予定
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> findbyUserId({required int userId}) async {
    // modelからentityに変換
    return await _dbHelper.getTodoList(userId: userId).then((value) {
      return value.map((row) => TodoModel.fromJson(row).toEntity()).toList();
    });
  }
}
