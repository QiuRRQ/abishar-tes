import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqlite/model/auth_model/user_auth.dart';

class DatabaseHelper {
  static const _databaseName = 'ContactDatabase.db';
  static const _databaseVersion = 1;

  //singleton class
  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();

  Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);
    print(dbPath);
    return await openDatabase(dbPath,
        version: _databaseVersion, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {
    //create tables
    await db.execute('''
      CREATE TABLE ${UserAuth.tbl_name}(
        ${UserAuth.colID} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${UserAuth.colUserName} TEXT NOT NULL,
        ${UserAuth.colPassword} TEXT NOT NULL,
        ${UserAuth.colNama} TEXT NOT NULL,
        ${UserAuth.colAlamat} TEXT NOT NULL,
        ${UserAuth.colNo_hp} TEXT NOT NULL
      )
      ''');
  }

  //contact - insert
  Future<int> insertContact(UserAuth user) async {
    Database db = await database;
    return await db.insert(UserAuth.tbl_name, user.toMap());
  }
//contact - update
  Future<int> updateContact(UserAuth user) async {
    Database db = await database;
    return await db.update(UserAuth.tbl_name, user.toMap(),
        where: '${UserAuth.colID}=?', whereArgs: [user.ID]);
  }
//contact - delete
  Future<int> deleteContact(int id) async {
    Database db = await database;
    return await db.delete(UserAuth.tbl_name,
        where: '${UserAuth.colID}=?', whereArgs: [id]);
  }
//contact - retrieve all
  Future<List<UserAuth>> fetchContacts() async {
    Database db = await database;
    List<Map> contacts = await db.query(UserAuth.tbl_name);
    return contacts.length == 0
        ? []
        : contacts.map((x) => UserAuth.fromMap(x)).toList();
  }


}