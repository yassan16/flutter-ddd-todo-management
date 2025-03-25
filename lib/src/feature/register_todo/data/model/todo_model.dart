import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/entity/todo.dart';
import 'package:flutter_ddd_todo_management/src/feature/register_todo/domain/enum/todo_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
abstract class TodoModel with _$TodoModel {
  const TodoModel._();

  const factory TodoModel({
    required int id,
    required int user_id,
    required String title,
    String? detail,
    required String category,
    required String status,
    required DateTime deadline,
    required int deadline_change_count,
    DateTime? completion_date,
    required DateTime created_at,
    DateTime? updated_at,
    DateTime? deleted_at,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, Object?> json) =>
      _$TodoModelFromJson(json);

  /// エンティティに変換
  Todo toEntity() {
    late TodoStatus status;
    switch (this.status) {
      case '未完了':
        status = TodoStatus.notStarted;
        break;
      case '進行中':
        status = TodoStatus.inProgress;
        break;
      case '完了':
        status = TodoStatus.completed;
        break;
      case "期限超過":
        status = TodoStatus.deadlineExceeding;
        break;
      default:
        status = TodoStatus.notStarted;
    }

    return Todo.create(
        paramId: id,
        paramUerId: user_id,
        paramTitle: title,
        paramDetail: detail,
        paramCategory: category,
        paramStatus: status,
        paramDeadline: deadline,
        paramDeadlineChangeCount: deadline_change_count,
        paramCompletionDate: completion_date,
        paramCreatedAt: created_at,
        paramUpdatedAt: updated_at);
  }
}
