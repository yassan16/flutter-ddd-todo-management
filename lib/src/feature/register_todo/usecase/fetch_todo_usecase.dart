import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/entity/todo.dart';

/// Todoリスト取得ユースケースクラス
class FetchTodoUsecase {
  FetchTodoUsecase(this._repository);
  final RegisterTodoRepository _repository;

  Future<List<Todo>> execute(int uerId) async {
    return await _repository.findbyUserId(userId: uerId);
  }
}
