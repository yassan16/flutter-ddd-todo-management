import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/enum/todo_status.dart';

///
class Todo {
  final int id;
  // ユーザーID
  final String userId;
  // タイトル
  final String title;
  // 詳細
  final String detail;
  // 分類
  final String category;
  // ステータス
  final TodoStatus status;
  // 期限
  final DateTime deadline;
  // 期限変更回数
  final int deadlineChangeCount;
  // 完了日
  final DateTime? completionDate;
  // 登録日
  final DateTime createdAt;
  // 更新日
  final DateTime? updatedAt;

  /// プライベートコンストラクタ
  Todo._({
    required this.id,
    required this.userId,
    required this.title,
    required this.detail,
    required this.category,
    required this.status,
    required this.deadline,
    required this.deadlineChangeCount,
    required this.completionDate,
    required this.createdAt,
    required this.updatedAt,
  }) {
    if (userId.isEmpty) {
      throw Exception('ユーザーIDがない');
    }
    if (title.isEmpty) {
      throw Exception('タイトルが入力されていません');
    }
    if (deadlineChangeCount > 4) {
      throw Exception('期限変更回数は3回までです');
    }
  }

  get getId => id;
  get getTitle => title;
  get getDetail => detail;
  get getCategory => category;
  get getStatus => status;
  get getDeadline => deadline;
  get getDeadlineChangeCount => deadlineChangeCount;
  get getCreatedAt => createdAt;
  get getUpdatedAt => updatedAt;

  /// Todoを新規作成する
  ///
  /// output: 新規作成したTodo
  static Todo create(
      {required String paramUerId,
      required String paramTitle,
      required String paramDetail,
      required String paramCategory,
      required DateTime paramDeadline}) {
    return Todo._(
      id: 0,
      userId: paramUerId,
      title: paramTitle,
      detail: paramDetail,
      category: paramCategory,
      status: TodoStatus.notStarted,
      deadline: paramDeadline,
      deadlineChangeCount: 0,
      completionDate: null,
      createdAt: DateTime.now(),
      updatedAt: null,
    );
  }

  /// Todoの内容を変更する
  ///
  /// input: 変更する内容
  /// output: 変更したTodo
  // Todo edit(
  //     {required String paramTitle,
  //     required String paramDetail,
  //     required String paramCategory,
  //     required TodoStatus paramStatus,
  //     required DateTime paramDeadline}) {
  //   return Todo._(
  //     id: id,
  //     userId: userId,
  //     title: paramTitle,
  //     detail: paramDetail,
  //     category: paramCategory,
  //     status: paramStatus,
  //     deadline: deadline,
  //     deadlineChangeCount: (deadline == paramDeadline)
  //         ? deadlineChangeCount
  //         : deadlineChangeCount + 1,
  //     completionDate:
  //     createdAt: createdAt,
  //     updatedAt: DateTime.now(),
  //   );
  // }

  /// 期限超過チェック
  ///
  /// output: ture: 期限超過している, false: 期限超過していない
  bool isDeadlineExceeding() {
    //TODO: 期限超過チェック
    return false;
  }
}

abstract class RegisterTodoRepository {
  Future<void> insert(Todo todo);
  // 正確には違うけど
  Future<List<Todo>> findbyUserId({required String userId});
}

abstract class EditTodoRepository {
  Future<void> update(Todo todo);
  Future<void> delete(Todo todo);
}
