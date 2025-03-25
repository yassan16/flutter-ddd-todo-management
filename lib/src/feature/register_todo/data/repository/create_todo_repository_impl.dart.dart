import 'dart:math';

import 'package:flutter_ddd_todo_management/src/db/database_helper.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/data/model/todo_model.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/entity/todo.dart';

class RegisterTodoRepositoryImpl extends RegisterTodoRepository {
  final DataBaseHelper _dbHelper;

  RegisterTodoRepositoryImpl(this._dbHelper);

  @override
  Future<void> insert(Todo todo) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> findbyUserId({required int userId}) async {
    // todoリストを取得後、エンティティに変換
    // return await _dbHelper.getTodoList(userId: userId).then((value) {
    //   return value.map((row) => TodoModel.fromJson(row).toEntity()).toList();
    // });

    // List<Todo> tmp = await _dbHelper.getTodoList(userId: userId).then((value) {
    //   return value.map((row) => TodoModel.fromJson(row).toEntity()).toList();
    // });
    // tmp.map((e) => print(e.getTitle));
    // tmp.isEmpty ? print("空") : print("空じゃない");

    return await _dbHelper.getTodoList(userId: userId).then((value) {
      return value.map((row) => TodoModel.fromJson(row).toEntity()).toList();
    });
  }
}
