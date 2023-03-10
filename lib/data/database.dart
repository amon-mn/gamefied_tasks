import 'package:first_project/data/task_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' show join;


Future<Database> getDatabase() async{
  final String path = join(await getDatabasesPath(), 'task4.db');
  return openDatabase(path, onCreate: (db, version){
    db.execute(TaskDao.tableSql);
  }, version: 1);
}



