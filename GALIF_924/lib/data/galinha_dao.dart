import 'package:GALIF_924/data/db_helper.dart';
import 'package:GALIF_924/domain/variaveis_galinhas.dart';
import 'package:sqflite/sqflite.dart';

class GalinhaDao {

  Future<List<Individuos>> listarGalinha() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM galinhas';
    final result = await db.rawQuery(sql);

    List<Individuos> listaGalinha = [];

    for(var json in result){
      Individuos galinha = Individuos.fromJson(json);
      listaGalinha.add(galinha);
    }

    return listaGalinha;
  }

  criarGalinha({required Individuos galinha}) async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    await database.insert('galinhas', galinha.toJson());
  }
}