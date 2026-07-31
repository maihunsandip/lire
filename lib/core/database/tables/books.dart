import 'package:drift/drift.dart';

class Books extends Table {
  TextColumn get id => text()();

  TextColumn get title => text()();

  TextColumn get author => text().withDefault(const Constant('Unknown'))();

  TextColumn get path => text()();

  TextColumn get format => text()();

  TextColumn get coverPath => text().nullable()();

  DateTimeColumn get dateAdded => dateTime()();

  DateTimeColumn get lastOpened => dateTime().nullable()();

  RealColumn get readingProgress =>
      real().withDefault(const Constant(0.0))();

  @override
  Set<Column> get primaryKey => {id};
}