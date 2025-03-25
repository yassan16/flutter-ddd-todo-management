import 'package:flutter_ddd_todo_management/src/db/database_helper.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/data/repository/create_todo_repository_impl.dart.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/entity/todo.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/usecase/fetch_todo_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_controller.g.dart';

@riverpod
class TodoController extends _$TodoController {
  @override
  Future<List<Todo>> build() async {
    // state = const AsyncLoading();
    // return await AsyncValue.guard(() =>
    //     FetchTodoUsecase(RegisterTodoRepositoryImpl(DataBaseHelper.dbHelper))
    //         .execute('1'));
    return await FetchTodoUsecase(
            RegisterTodoRepositoryImpl(DataBaseHelper.dbHelper))
        .execute(1);
  }
}
