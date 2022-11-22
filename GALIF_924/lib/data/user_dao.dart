import 'package:GALIF_924/data/db_helper.dart';
import 'package:GALIF_924/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  listarUsers() async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    String sql = "SELECT * FROM user";
    var result = await database.rawQuery(sql);

    print(result);
  }

  Future<bool> autenticar(String user, String password) async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    String sql = "SELECT * "
        "FROM user "
        "WHERE username = ? "
        "AND password = ?";

    var result = await database.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

  salvarUser({required User user}) async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    await database.insert('user', user.toJson());
  }
}