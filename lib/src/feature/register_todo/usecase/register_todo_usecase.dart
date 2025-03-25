import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/entity/todo.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/enum/todo_status.dart';

/// Todoの登録ユースケースクラス
class RegisterTodoUsecase {
  final RegisterTodoRepository _todoRepository;

  RegisterTodoUsecase(this._todoRepository);

  // ドメイン層が公開している関数を組み合わせてユースケースを実現する
  Future<void> execute(int uerId, String title, String detail, String category,
      DateTime deadline) async {
    // Todoの作成
    Todo newTodo = Todo.create(
        paramId: 0,
        paramUerId: uerId,
        paramTitle: title,
        paramDetail: detail,
        paramCategory: category,
        paramStatus: TodoStatus.notStarted,
        paramDeadline: deadline,
        paramDeadlineChangeCount: 0,
        paramCompletionDate: null,
        paramCreatedAt: DateTime.now(),
        paramUpdatedAt: null);

    // Todoの登録
    await _todoRepository.insert(newTodo);

    // providerでリストの一覧を管理しておいて、
    // 新しいTodoを追加することで画面更新する？
  }
}
