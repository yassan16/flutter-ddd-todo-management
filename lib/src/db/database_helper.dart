import 'package:flutter_ddd_todo_management/src/db/database.dart';

/// DBヘルパー
///
/// DBにSQLを用いてアクセスするためのクラス
class DataBaseHelper {
  // シングルトン
  static final DataBaseHelper dbHelper = DataBaseHelper._internal();
  // プライベートコンストラクタにより、外部からの作成を禁止
  DataBaseHelper._internal();

  /// Todoリスト取得
  ///
  /// input: ユーザーID
  /// output: ユーザIDに該当するTodoリスト
  Future<List<Map<String, dynamic>>> getTodoList({required int userId}) async {
    final db = await AppDatabase().db;

    return await db.query("todo",
        columns: [
          "id",
          "user_id",
          "title",
          "detail",
          "category",
          "status",
          "deadline",
          "deadline_change_count",
          "completion_date",
          "created_at",
          "updated_at",
          "deleted_at"
        ],
        where: "user_id = ?",
        whereArgs: [userId],
        orderBy: "deadline DESC");
  }
}
