import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, "pacote.db");

    Database db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
      // onUpgrade: onUpgrade,
    );

    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE galinhas (nome varchar(100), peso varchar(100), semanas varchar(100), especie varchar(100));';
    await db.execute(sql);
    sql =
        "INSERT INTO galinhas (nome, peso, semanas, especie) VALUES ('Cócó', '5', '10', 'Galinha caipira');";
    await db.execute(sql);

    sql =
        "INSERT INTO galinhas (nome, peso, semanas, especie) VALUES ('Teresa', '2', '15', 'Galinha caipira');";
    await db.execute(sql);

    sql =
        "INSERT INTO galinhas (nome, peso, semanas, especie) VALUES ('Maria', '4', '12', 'Galinha do pé molhado');";
    await db.execute(sql);

    sql =
        "CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))";
    await db.execute(sql);

    sql =
        "INSERT INTO user (username, password) VALUES ('joao@gmail.com', '123456')";
    await db.execute(sql);
  }

  Future<FutureOr<void>> onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {}
  }
}
