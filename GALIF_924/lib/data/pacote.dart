import 'package:aula_924/data/db_helper.dart';
import 'package:aula_924/domain/variaveis_galinhas.dart';
import 'package:sqflite/sqflite.dart';

class PacoteDao {

  Future<List<Individuos>> listarPacotes() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM pacote';
    final result = await db.rawQuery(sql);

    List<Individuos> lista = <Individuos>[];

    for(var json in result){
      Individuos pacote = Individuos.fromJson(json);
      lista.add(pacote);
    }

    return lista;
  }

}
