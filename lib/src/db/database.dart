import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/// DB
///
/// DBの初期化、仮データの挿入を行うクラス
class AppDatabase {
  // シングルトン
  static final AppDatabase _instance = AppDatabase._internal();
  factory AppDatabase() {
    return _instance;
  }
  AppDatabase._internal();

  // DBインスタンス
  Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;

    _db = await _init();
    await _insertDummyData();
    return _db!;
  }

  /// DBインスタンス作成
  Future<Database> _init() async {
    // getデフォルトのデータベース保存用フォルダのパスを取得
    String databasesPath = join(await getDatabasesPath(), 'todo_management.db');
    // dbを開く（pathに存在しなければ新規作成）
    return await openDatabase(databasesPath, version: 1,
        // DBがpathに存在しなかった場合にonCreateが呼び出される
        onCreate: (Database db, int version) async {
      // 外部キー制約を有効にする
      await db.execute("PRAGMA foreign_keys = ON;");

      // 既存のテーブルを削除
      await db.execute("DROP TABLE IF EXISTS todo;");
      await db.execute("DROP TABLE IF EXISTS user;");

      // テーブル作成
      await db.execute('''
              CREATE TABLE IF NOT EXISTS user (
                id INTEGER PRIMARY KEY AUTOINCREMENT, 
                name TEXT NOT NULL, 
                password TEXT NOT NULL
              )
          ''');
      await db.execute('''
              CREATE TABLE IF NOT EXISTS todo (
                id INTEGER PRIMARY KEY AUTOINCREMENT, 
                user_id INTEGER NOT NULL, 
                title TEXT NOT NULL,
                detail TEXT,
                category TEXT NOT NULL,
                status TEXT NOT NULL,
                deadline DATETIME NOT NULL,
                deadline_change_count INTEGER NOT NULL,
                completion_date DATETIME,
                created_at DATETIME NOT NULL,
                updated_at DATETIME,
                deleted_at DATETIME,
                FOREIGN KEY (user_id) REFERENCES user (id)
              )
          ''');
    });
  }

  /// 仮データの挿入
  Future<void> _insertDummyData() async {
    // ユーザーデータ
    final users = [
      {'name': 'user1', 'password': 'password1'},
      {'name': 'user2', 'password': 'password2'},
      {'name': 'user3', 'password': 'password3'},
    ];
    final todolist = [
      {
        'user_id': 1,
        'title': 'タイトル1',
        'detail': '詳細1',
        "category": "学習",
        'status': '未完了',
        'deadline': '2022-01-01 00:00:00',
        'deadline_change_count': 0,
        'created_at': '2021-01-01 00:00:00',
      },
      {
        'user_id': 1,
        'title': 'タイトル2',
        'detail': '詳細2',
        "category": "筋トレ",
        'status': '進行中',
        'deadline': '2022-01-02 00:00:00',
        'deadline_change_count': 0,
        'created_at': '2021-01-02 00:00:00',
      },
      {
        'user_id': 1,
        'title': 'タイトル3',
        'detail': '詳細3',
        "category": "その他",
        'status': '完了',
        'deadline': '2022-01-03 00:00:00',
        'deadline_change_count': 0,
        'created_at': '2021-01-03 00:00:00',
      },
    ];

    // バッチに登録
    // Batch batch = _db!.batch();
    // users.map((user) {
    //   batch.insert('user', user);
    // });
    // todolist.map((todo) {
    //   batch.insert('todo', todo);
    // });
    // // 一括で実行
    // await batch.commit();

    //   users.map((user) async {
    //     await _db!.insert('user', user);
    //   });
    //   todolist.map((todo) async {
    //     await _db!.insert('todo', todo);
    //   });
    for (var user in users) {
      int userId = await _db!.insert('user', user);
    }
    for (var todo in todolist) {
      await _db!.insert('todo', todo);
    }
  }
}
