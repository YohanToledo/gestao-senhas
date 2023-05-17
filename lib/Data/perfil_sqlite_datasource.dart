import 'package:flutter_application_5/Data/perfil_Entity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'data_constantes.dart';
import 'database_connection.dart';

class PerfilSQLiteDatasource {
  Future create(PerfilEntity perfil) async {
    try {
      final Database db = await DatabaseConnection.getDatabase();
      perfil.perfilID = await db.rawInsert(''' insert into $PERFIL_TABLE_NAME (
          $PERFIL_COLUMN_NOME,
          $PERFIL_COLUMN_EMAIL,
          $PERFIL_COLUMN_SENHA)

        VALUES(
          '${perfil.nome}', '${perfil.email}', '${perfil.senha}'  
        )''');
    } catch (e) {
      return;
    }
  }

  Future<PerfilEntity> buscarUsuarioPorEmail(String email, String senha) async {
    final Database db = await DatabaseConnection.getDatabase();
    List<Map> dbResult = await db.rawQuery(
        'SELECT * from $PERFIL_TABLE_NAME where $PERFIL_COLUMN_EMAIL = $email');
    PerfilEntity user = PerfilEntity();
    user.perfilID = dbResult[0]['perfilID'];
    user.nome = dbResult[0]['nome'];
    user.email = dbResult[0]['email'];
    user.senha = dbResult[0]['senha'];

    return user;
  }
}
